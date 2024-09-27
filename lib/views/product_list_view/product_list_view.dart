import 'package:flutter/material.dart';
import 'package:keep_inventory/_generated_prisma_client/model.dart';
import 'package:keep_inventory/_generated_prisma_client/prisma.dart';
import 'package:keep_inventory/prisma.dart';
import 'package:keep_inventory/services/product_controller.dart';
import 'package:keep_inventory/utils/list_space_gap.dart';
import 'package:keep_inventory/widgets/form_render.dart';
import 'package:keep_inventory/widgets/product_register_form.dart';
import 'package:orm/orm.dart';

class ProductListView extends StatefulWidget {
  const ProductListView({super.key});

  @override
  ProductListViewState createState() => ProductListViewState();
}

class ProductListViewState extends State<ProductListView> {
  List<Product> products = [];
  ProductController productcontroller = ProductController();

  ProductListViewState() {
    refresh();
  }

  void refresh() {
    prisma.product
        .findMany(
      include: const ProductInclude(
        account: PrismaUnion.$1(true),
        category: PrismaUnion.$1(true),
        lotes: PrismaUnion.$1(true),
      ),
    )
        .then((loaded) {
      setState(() {
        products = loaded.toList();
      });
    });
  }

  void deleteSelected(int id) {
    productcontroller.deleteProduct(id).then((_) {
      refresh();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Lista de Produtos'),
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
                            const MenuItemButton(
                                child: Text("Todos os produtos")),
                            const MenuItemButton(
                                child: Text("Apenas com estoque vazio")),
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
                              deleteSelected(p.id!);
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
                    title: "Cadastrar Produto"),
              ),
            );
          },
        ),
      ),
    );
  }
}
