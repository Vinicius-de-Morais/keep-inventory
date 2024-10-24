import 'package:flutter/material.dart';
import 'package:keep_inventory/GLOBAL.dart';
import 'package:keep_inventory/_generated_prisma_client/model.dart';
import 'package:keep_inventory/_generated_prisma_client/prisma.dart';
import 'package:keep_inventory/prisma.dart';
import 'package:keep_inventory/services/category_controller.dart';
import 'package:keep_inventory/utils/list_space_gap.dart';
import 'package:keep_inventory/widgets/category_register_form.dart';
import 'package:keep_inventory/widgets/form_render.dart';
import 'package:orm/orm.dart';
import 'package:confirm_dialog/confirm_dialog.dart';

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
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Categorias'),
      ),
      body: SafeArea(
        child: Column(
          children: [
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
                  String parentName =
                      "Parente: " + (c.parent?.name ?? "Categoria raíz");

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
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FormRender(
                                        form: ProductCategoryRegisterForm(
                                          accountId: GLOBAL_STATE
                                              .grupoSelecionado!.id!,
                                          category: c,
                                        ),
                                        title: "Editar Categoria")),
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

                            deleteSelected(c.id!);
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
                            });
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
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => FormRender(
                  form: ProductCategoryRegisterForm(
                      accountId: GLOBAL_STATE.grupoSelecionado!.id!),
                  title: "Nova Categoria"),
            ),
          ).then((_) {
            refresh();
          });
        },
      ),
    );
  }
}
