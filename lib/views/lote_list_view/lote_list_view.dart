import 'package:confirm_dialog/confirm_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:keep_inventory/GLOBAL.dart';
import 'package:keep_inventory/_generated_prisma_client/model.dart';
import 'package:keep_inventory/_generated_prisma_client/prisma.dart';
import 'package:keep_inventory/prisma.dart';
import 'package:keep_inventory/services/lote_controller.dart';
import 'package:keep_inventory/utils/async_list_filter.dart';
import 'package:keep_inventory/utils/calc_stock_from_movimentations.dart';
import 'package:keep_inventory/utils/list_space_gap.dart';
import 'package:keep_inventory/views/lote_update_inspect_view/lote_update_inspect_view.dart';
import 'package:keep_inventory/widgets/form_render.dart';
import 'package:keep_inventory/widgets/lote_register_form.dart';
import 'package:keep_inventory/widgets/product_register_form.dart';
import 'package:orm/orm.dart';
import 'package:intl/intl.dart';

enum LoteFilter { All, OnlyEmptyLotes }

enum LoteOrdering { ByLoteCount, ByPurchasePrice, ByExpirationDate }

class LoteListView extends StatefulWidget {
  const LoteListView({super.key, required this.productFilter});

  final Product productFilter;

  @override
  LoteListViewState createState() => LoteListViewState();
}

class LoteListViewState extends State<LoteListView> {
  List<Lote> lotes = [];
  Map<int, int> loteQuantities = {};
  LoteController loteController = LoteController();

  LoteFilter currentFilter = LoteFilter.All;
  LoteOrdering currentSort = LoteOrdering.ByLoteCount;

  @override
  void initState() {
    super.initState();
    refresh();
  }

  void refresh() async {
    List<Lote> allLotes = (await prisma.lote.findMany(
      include: const LoteInclude(
        product: PrismaUnion.$1(true),
        loteUpdates: PrismaUnion.$1(true),
        shoppingList: PrismaUnion.$1(true),
      ),
    ))
        .toList();

    loteQuantities.clear();
    for (var lote in allLotes) {
      loteQuantities[lote.id!] =
          await calcStockCountFromMovimentations(lote.id!);
    }

    allLotes = await asyncListFilter(allLotes, (test) async {
      if (test.product != null && test.productId != widget.productFilter?.id) {
        return false;
      }

      if (currentFilter == LoteFilter.All) return true;

      // Busca O(n²) para dar uma emoção
      if (currentFilter == LoteFilter.OnlyEmptyLotes) {
        if (loteQuantities[test.id]! != 0) {
          // estoque não-vazio, não incluir na listagem
          return false;
        }

        return true;
      }

      // filtro de estoque desconhecido
      return true;
    });

    if (currentSort == LoteOrdering.ByLoteCount) {
      allLotes.sort((a, b) {
        var stockA = loteQuantities[a.id!] ?? 0;
        var stockB = loteQuantities[b.id!] ?? 0;
        return stockB - stockA;
      });
    } else if (currentSort == LoteOrdering.ByPurchasePrice) {
      allLotes.sort((a, b) {
        var stockAPrice = a.purchasePrice ?? 0.0;
        var stockBPrice = b.purchasePrice ?? 0.0;
        return ((stockBPrice - stockAPrice) * 100000).round();
      });
    } else if (currentSort == LoteOrdering.ByExpirationDate) {
      allLotes.sort((a, b) {
        var stockADate = a.expirationDate ?? DateTime.now();
        var stockBDate = b.expirationDate ?? DateTime.now();
        return stockADate.compareTo(stockBDate);
      });
    }

    setState(() {
      lotes = allLotes.toList();
    });
  }

  void deleteSelected(Lote loteToDelete) async {
    // Apagar ShoppingLists do lote
    await prisma.shoppingList.deleteMany(
      where: ShoppingListWhereInput(
        lote: PrismaUnion.$2(
          LoteWhereInput(
            id: PrismaUnion.$2(loteToDelete.id!),
          ),
        ),
      ),
    );

    // Apagar todas as movimentações do lote
    await prisma.loteUpdates.deleteMany(
      where: LoteUpdatesWhereInput(
        lote: PrismaUnion.$2(
          LoteWhereInput(
            id: PrismaUnion.$2(loteToDelete.id!),
          ),
        ),
      ),
    );

    // Apagar lote em si
    await prisma.lote.delete(where: LoteWhereUniqueInput(id: loteToDelete.id));

    refresh();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Lista de Lotes: ${widget.productFilter?.name ?? ''}'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      MenuAnchor(
                        builder: (BuildContext context,
                            MenuController controller, Widget? child) {
                          return ElevatedButton(
                              onPressed: () {
                                if (controller.isOpen) {
                                  controller.close();
                                } else {
                                  controller.open();
                                }
                              },
                              child: const Row(
                                children: [
                                  Icon(Icons.filter_list),
                                  SizedBox(width: 8),
                                  Text("Filtros")
                                ],
                              ));
                        },
                        menuChildren: <Widget>[
                          MenuItemButton(
                            child: Text("Todos os lotes"),
                            onPressed: () {
                              setState(() {
                                currentFilter = LoteFilter.All;
                                refresh();
                              });
                            },
                          ),
                          MenuItemButton(
                              child: Text("Apenas vazios"),
                              onPressed: () {
                                setState(() {
                                  currentFilter = LoteFilter.OnlyEmptyLotes;
                                  refresh();
                                });
                              }),
                        ],
                      ),
                      const SizedBox(width: 8),
                      MenuAnchor(
                        builder: (BuildContext context,
                            MenuController controller, Widget? child) {
                          return ElevatedButton(
                              onPressed: () {
                                if (controller.isOpen) {
                                  controller.close();
                                } else {
                                  controller.open();
                                }
                              },
                              child: const Row(
                                children: [
                                  Icon(Icons.sort),
                                  SizedBox(width: 8),
                                  Text("Ordem")
                                ],
                              ));
                        },
                        menuChildren: <Widget>[
                          MenuItemButton(
                            child: const Text("Por quantidade de estoque"),
                            onPressed: () {
                              setState(() {
                                currentSort = LoteOrdering.ByLoteCount;
                                refresh();
                              });
                            },
                          ),
                          MenuItemButton(
                            child: const Text("Por preço"),
                            onPressed: () {
                              setState(() {
                                currentSort = LoteOrdering.ByPurchasePrice;
                                refresh();
                              });
                            },
                          ),
                          MenuItemButton(
                            child: const Text("Por data de expiração"),
                            onPressed: () {
                              setState(() {
                                currentSort = LoteOrdering.ByExpirationDate;
                                refresh();
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  )
                ].withSpaceBetween(height: 8),
              ),
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: lotes.length,
                cacheExtent: 0,
                itemBuilder: (context, index) {
                  Lote l = lotes[index];

                  String productName =
                      l.product?.name ?? "Produto desconhecido";
                  String? precoCompra = l.purchasePrice != null
                      ? "Preço de venda: R\$ ${l.purchasePrice!.toStringAsFixed(2)}"
                      : null;
                  int qtdMin = l.quantityMinimum ?? 0;
                  int qtdCurr = loteQuantities[l.id!] ?? 0;
                  DateTime? expDate = l.expirationDate;

                  String subtitle = [
                    if (precoCompra != null) precoCompra,
                    "Quantidade atual: $qtdCurr de $qtdMin un.",
                    if (expDate != null)
                      "Expira em ${DateFormat('dd/MM/yyyy').format(expDate)}",
                  ].join("\n");

                  return ListTile(
                    title: Text("Lote #" + l.id!.toString()),
                    subtitle: Text(subtitle),
                    trailing: MenuAnchor(
                      menuChildren: <Widget>[
                        MenuItemButton(
                            child: Row(
                              children: [
                                const Icon(Icons.view_timeline_sharp),
                                const Text("Ver movimentações"),
                              ].withSpaceBetween(width: 16),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        LoteUpdateInspectView(loteId: l.id!),
                                  ));
                            }),
                        MenuItemButton(
                            child: Row(
                              children: [
                                const Icon(Icons.edit),
                                const Text("Editar"),
                              ].withSpaceBetween(width: 16),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FormRender(
                                        form: LoteForm(
                                          accountId: GLOBAL_STATE
                                              .grupoSelecionado!.id!,
                                          previousLoteData: l,
                                          relatedToProduct:
                                              widget.productFilter,
                                        ),
                                        title: "Editar Lote")),
                              ).then((_) {
                                refresh();
                              });
                            }),
                        MenuItemButton(
                          child: Row(
                            children: [
                              const Icon(Icons.delete),
                              const Text("Apagar")
                            ].withSpaceBetween(width: 16),
                          ),
                          onPressed: () async {
                            if (!await confirm(context,
                                content: const Text("Apagar mesmo?"))) {
                              return;
                            }

                            deleteSelected(l);
                          },
                        ),
                      ],
                      builder: (BuildContext context, MenuController controller,
                          Widget? child) {
                        return IconButton(
                          icon: const Icon(Icons.more_vert),
                          onPressed: () {
                            if (controller.isOpen) {
                              controller.close();
                            } else {
                              controller.open();
                            }
                          },
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ].withSpaceBetween(height: 8),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => FormRender(
                form: LoteForm(
                  accountId: GLOBAL_STATE.grupoSelecionado!.id!,
                  relatedToProduct: widget.productFilter,
                  previousLoteData: null,
                ),
                title: "Cadastrar Lote",
              ),
            ),
          );
        },
      ),
    );
  }
}
