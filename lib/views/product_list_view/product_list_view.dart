import 'dart:math';

import 'package:confirm_dialog/confirm_dialog.dart';
import 'package:flutter/material.dart';
import 'package:keep_inventory/GLOBAL.dart';
import 'package:keep_inventory/_generated_prisma_client/model.dart';
import 'package:keep_inventory/_generated_prisma_client/prisma.dart';
import 'package:keep_inventory/prisma.dart';
import 'package:keep_inventory/services/product_controller.dart';
import 'package:keep_inventory/utils/async_list_filter.dart';
import 'package:keep_inventory/utils/calc_stock_from_movimentations.dart';
import 'package:keep_inventory/utils/list_space_gap.dart';
import 'package:keep_inventory/views/lote_list_view/lote_list_view.dart';
import 'package:keep_inventory/widgets/form_render.dart';
import 'package:keep_inventory/widgets/product_register_form.dart';
import 'package:orm/orm.dart';

enum ProductFilter { All, OnlyEmptyStocks }

enum ProductOrdering { Alphabetical, ByStockCount }

class ProductListView extends StatefulWidget {
  const ProductListView({super.key});

  @override
  ProductListViewState createState() => ProductListViewState();
}

class ProductListViewState extends State<ProductListView> {
  List<Product> products = [];
  ProductController productcontroller = ProductController();

  ProductFilter currentFilter = ProductFilter.All;
  ProductOrdering currentSort = ProductOrdering.Alphabetical;

  ProductListViewState() {
    refresh();
  }

  void refresh() async {
    List<Product> loadedProducts = (await prisma.product.findMany(
      include: const ProductInclude(
        account: PrismaUnion.$1(true),
        category: PrismaUnion.$1(true),
        lotes: PrismaUnion.$1(true),
      ),
      where: ProductWhereInput(
          accountId: PrismaUnion.$2(GLOBAL_STATE.grupoSelecionado?.id ?? 1)),
    ))
        .toList();

    // Estima a quantidade total de unidades para o produto através da soma da contagem de cada lote.
    Map<int, int> totalStockCountForProduct = {};

    for (var produto in loadedProducts) {
      var lotesOfProduct = await prisma.lote.findMany(
          where: LoteWhereInput(productId: PrismaUnion.$2(produto.id!)));

      var produtoStock = 0;
      for (var lote in lotesOfProduct) {
        produtoStock += await calcStockCountFromMovimentations(lote.id!);
      }
      totalStockCountForProduct[produto.id!] = produtoStock;
    }

    loadedProducts = await asyncListFilter(loadedProducts, (test) async {
      if (currentFilter == ProductFilter.All) return true;

      if (currentFilter == ProductFilter.OnlyEmptyStocks) {
        var stock = totalStockCountForProduct[test.id!] ?? 0;
        return stock == 0;
      }

      // filtro de estoque desconhecido
      return true;
    });

    if (currentSort == ProductOrdering.Alphabetical) {
      loadedProducts.sort((a, b) => (a.name ?? "").compareTo(b.name ?? ""));
    } else if (currentSort == ProductOrdering.ByStockCount) {
      loadedProducts.sort((a, b) {
        var stockA = totalStockCountForProduct[a.id!] ?? 0;
        var stockB = totalStockCountForProduct[b.id!] ?? 0;
        return stockB - stockA;
      });
    }

    setState(() {
      products = loadedProducts.toList();
    });
  }

  Future<void> deleteProduct(int productId) async {
    print("deleteProduct");

    List<Lote> lotesOfProduct = (await prisma.lote.findMany(
            where: LoteWhereInput(productId: PrismaUnion.$2(productId))))
        .toList();

    List<LoteUpdates> lotesUpdatesOfProduct = (await prisma.loteUpdates
            .findMany(include: LoteUpdatesInclude(lote: PrismaUnion.$1(true))))
        .where((movimentacao) =>
            lotesOfProduct.any((lote) => movimentacao.lote?.id == lote.id))
        .toList();

/*
    List<ShoppingList> shoppingListsOfProduct =
        (await prisma.shoppingList.findMany())
            .where((shoppingList) =>
                lotesOfProduct.any((lote) => shoppingList.lote?.id == lote.id))
            .toList();
*/

    //for (var target in shoppingListsOfProduct) {
    //  await prisma.shoppingList.delete(where: ShoppingListWhereInput(lote: ))
    //}

    for (var movimentacao in lotesUpdatesOfProduct) {
      // apagar movimentacoes

      print("Pre-delete loteUpdate");
      await prisma.loteUpdates.deleteMany(
          where: LoteUpdatesWhereInput(id: PrismaUnion.$2(movimentacao.id!)));
    }

    for (var lote in lotesOfProduct) {
      print("Pre-delete shoppinglist");
      await prisma.shoppingList.deleteMany(
        where: ShoppingListWhereInput(
          lote: PrismaUnion.$2(
            LoteWhereInput(
              id: PrismaUnion.$2(lote.id!),
            ),
          ),
        ),
      );

      print("Pre-delete lote");
      await prisma.lote.deleteMany(
        where: LoteWhereInput(
          id: PrismaUnion.$2(lote.id!),
        ),
      );
    }

    print("Pre-delete product");
    await prisma.product.delete(where: ProductWhereUniqueInput(id: productId));

/*

      // Step 3: Delete all related Lotes for this product
      await _prisma.lote.deleteMany(
        where: LoteWhereInput(
          productId: IntFilter(equals: productId),
        ),
      );

      // Step 4: Finally, delete the Product itself
      await _prisma.product.delete(
        where: ProductWhereUniqueInput(
          id: productId, // Ensure this is an integer as required
        ),
      );*/

    refresh();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Produtos'),
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
                            child: const Text("Todos os produtos"),
                            onPressed: () {
                              setState(() {
                                currentFilter = ProductFilter.All;
                                refresh();
                              });
                            },
                          ),
                          MenuItemButton(
                            child: Text("Apenas com estoque vazio"),
                            onPressed: () {
                              setState(() {
                                currentFilter = ProductFilter.OnlyEmptyStocks;
                                refresh();
                              });
                            },
                          ),
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
                              child: const Text("Alfabética"),
                              onPressed: () {
                                setState(() {
                                  currentSort = ProductOrdering.Alphabetical;
                                  refresh();
                                });
                              }),
                          MenuItemButton(
                              child: const Text("Por quantidade de estoque"),
                              onPressed: () {
                                setState(() {
                                  currentSort = ProductOrdering.ByStockCount;
                                  refresh();
                                });
                              }),
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
                itemCount: products.length,
                cacheExtent: 0,
                itemBuilder: (context, index) {
                  Product p = products[index];
                  String desc = p.description ?? '';
                  String lot = "${p.lotes?.length ?? 0} lotes";
                  String cat = p.category?.name ?? 'Sem categoria';

                  return ListTile(
                    title: Text(p.name ?? ''),
                    subtitle: Text([desc, cat, lot].join("\n")),
                    trailing: MenuAnchor(
                      menuChildren: <Widget>[
                        MenuItemButton(
                          child: Row(
                            children: [
                              const Icon(Icons.view_agenda),
                              const Text("Ver lotes do produto"),
                            ].withSpaceBetween(width: 16),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        LoteListView(productFilter: p)));
                          },
                        ),
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
                                          form: ProductRegisterForm(
                                              accountId: GLOBAL_STATE
                                                  .grupoSelecionado!.id!,
                                              product: p),
                                          title: "Editar Produto")));
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

                            deleteProduct(p.id!);
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
                  form: ProductRegisterForm(
                    accountId: GLOBAL_STATE.grupoSelecionado!.id!,
                  ),
                  title: "Cadastrar Produto"),
            ),
          );
        },
      ),
    );
  }
}
