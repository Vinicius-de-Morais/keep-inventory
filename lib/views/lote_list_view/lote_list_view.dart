import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:keep_inventory/_generated_prisma_client/model.dart';
import 'package:keep_inventory/_generated_prisma_client/prisma.dart';
import 'package:keep_inventory/prisma.dart';
import 'package:keep_inventory/services/lote_controller.dart';
import 'package:keep_inventory/utils/list_space_gap.dart';
import 'package:keep_inventory/views/lote_update_inspect_view/lote_update_inspect_view.dart';
import 'package:keep_inventory/widgets/form_render.dart';
import 'package:keep_inventory/widgets/product_register_form.dart';
import 'package:orm/orm.dart';

class LoteListView extends StatefulWidget {
  const LoteListView({super.key});

  @override
  LoteListViewState createState() => LoteListViewState();
}

class LoteListViewState extends State<LoteListView> {
  List<Lote> lotes = [];
  LoteController loteController = LoteController();

  LoteListViewState() {
    refresh();
  }

  void refresh() {
    prisma.lote
        .findMany(
      include: const LoteInclude(
        product: PrismaUnion.$1(true),
        loteUpdates: PrismaUnion.$1(true),
        shoppingList: PrismaUnion.$1(true),
      ),
    )
        .then((loaded) {
      setState(() {
        lotes = loaded.toList();
      });
    });
  }

  void deleteSelected(int id) {
    loteController.deleteLote(id).then((_) {
      refresh();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Lista de Lotes'),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    const TextField(
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Pesquisar...',
                      ),
                    ),
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
                            const MenuItemButton(child: Text("Todos os lotes")),
                            const MenuItemButton(child: Text("Apenas vazios")),
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
                          menuChildren: const <Widget>[
                            MenuItemButton(child: Text("Alfabética")),
                            MenuItemButton(
                                child: Text("Por quantidade de estoque")),
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
                        ? "R\$ ${l.purchasePrice!.toStringAsFixed(2)}"
                        : null;
                    int qtdMin = l.quantityMinimum ?? 0;
                    int qtdCurr = l.quantityCurrent ?? 0;
                    DateTime? expDate = l.expirationDate;

                    String subtitle = [
                      if (precoCompra != null) precoCompra,
                      "Quantidade: $qtdCurr/$qtdMin un.",
                      if (expDate != null) expDate.toIso8601String(),
                    ].join("\n");

                    return ListTile(
                      title: Text(productName),
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
                                    CupertinoPageRoute(
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
                              onPressed: () {}),
                          MenuItemButton(
                            child: Row(
                              children: [
                                const Icon(Icons.delete),
                                const Text("Apagar")
                              ].withSpaceBetween(width: 16),
                            ),
                            onPressed: () {
                              deleteSelected(l.id!);
                            },
                          ),
                        ],
                        builder: (BuildContext context,
                            MenuController controller, Widget? child) {
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
                  form: ProductRegisterForm(
                    accountId: 1,
                  ),
                  title: "Cadastrar Produto",
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
