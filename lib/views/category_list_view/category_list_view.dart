import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:keep_inventory/_generated_prisma_client/model.dart';
import 'package:keep_inventory/_generated_prisma_client/prisma.dart';
import 'package:keep_inventory/prisma.dart';
import 'package:keep_inventory/services/category_controller.dart';
import 'package:keep_inventory/utils/list_space_gap.dart';
import 'package:orm/orm.dart';

class CategoryListView extends StatefulWidget {
  const CategoryListView({super.key});

  @override
  CategoryListViewState createState() => CategoryListViewState();
}

class CategoryListViewState extends State<CategoryListView> {
  CategoryController categoryController = CategoryController();
  List<ProductCategory> categories = [];

  CategoryListViewState() {
    refresh();
  }

  void refresh() {
    prisma.productCategory
        .findMany(
            include: const ProductCategoryInclude(parent: PrismaUnion.$1(true)))
        .then((cats) {
      setState(() {
        categories = cats.toList();
      });
    });
  }

  void deleteSelected(int id) {
    categoryController.deleteCategory(id).then((_) {
      refresh();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Lista de Categorias'),
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
                  ].withSpaceBetween(height: 8),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: categories.length,
                  cacheExtent: 0,
                  itemBuilder: (context, index) {
                    ProductCategory c = categories[index];

                    String name = c.name ?? "Sem nome";
                    String desc = c.description ?? "Sem descrição";
                    String parentName = c.parent?.name ?? "Categoria raíz";

                    return ListTile(
                      title: Text(name),
                      subtitle: Text([desc, parentName].join("\n")),
                      trailing: MenuAnchor(
                        menuChildren: <Widget>[
                          MenuItemButton(
                              child: Row(
                                children: [
                                  const Icon(Icons.edit),
                                  const Text("Editar"),
                                ].withSpaceBetween(width: 16),
                              ),
                              onPressed: () {
                                // redirecionar ao update form
                                // então dar refresh
                              }),
                          MenuItemButton(
                            child: Row(
                              children: [
                                const Icon(Icons.delete),
                                const Text("Apagar")
                              ].withSpaceBetween(width: 16),
                            ),
                            onPressed: () {
                              deleteSelected(c.id!);
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
          child: Icon(Icons.add),
          onPressed: () {},
        ),
      ),
    );
  }
}