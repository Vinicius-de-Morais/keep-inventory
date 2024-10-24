import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:keep_inventory/_generated_prisma_client/model.dart';
import 'package:keep_inventory/_generated_prisma_client/prisma.dart';
import 'package:keep_inventory/prisma.dart';
import 'package:keep_inventory/services/category_controller.dart';
import 'package:orm/orm.dart';

class ProductCategoryRegisterForm extends StatefulWidget {
  ProductCategoryRegisterForm(
      {super.key, required this.accountId, this.category});

  final int accountId;
  ProductCategory? category;

  @override
  _ProductCategoryRegisterFormState createState() =>
      _ProductCategoryRegisterFormState();
}

class _ProductCategoryRegisterFormState
    extends State<ProductCategoryRegisterForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  int? selectedParentId;
  int? childrenId;
  final TextEditingController nameController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final CategoryController categoryController = CategoryController();

  Iterable<ProductCategory> categories = [];

  @override
  void initState() {
    super.initState();
    refresh();
  }

  void refresh() async {
    var loadedCats = await prisma.productCategory.findMany(
        include: const ProductCategoryInclude(parent: PrismaUnion.$1(true)));

    setState(() {
      categories = loadedCats.toList();

      nameController.text = widget.category?.name ?? "";
      descriptionController.text = widget.category?.description ?? "";
      selectedParentId = widget.category?.parent?.id;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Nome da categoria',
            ),
            validator: (value) => this.validateField(value),
            controller: nameController,
          ),
          FutureBuilder(
              future: prisma.productCategory
                  .findMany(), //categoryController.getCategories(),
              builder: (context, itemdata) {
                if (itemdata.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                } else {
                  return DropdownButtonFormField(
                    decoration: const InputDecoration(
                      hintText: "Selecione a categoria pai",
                    ),
                    items: this.filterCategoryParent(itemdata.data!),
                    onChanged: (value) {
                      // NÃO PODE USAR SETSTATE(), SENAO O SPINNER NAO VAI ATUALIZAR

                      selectedParentId = int.parse(value!);
                    },
                  );
                }
              }),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Descrição da categoria',
            ),
            validator: (value) => validateField(value),
            controller: descriptionController,
          ),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                if (widget.category != null) {
                  categoryController.updateCategory(
                      widget.category!.id!,
                      nameController.text,
                      descriptionController.text,
                      widget.accountId,
                      selectedParentId);

                  Fluttertoast.showToast(msg: "Categoria atualizada");
                } else {
                  categoryController.createCategory(
                      nameController.text,
                      descriptionController.text,
                      widget.accountId,
                      selectedParentId);

                  Fluttertoast.showToast(msg: "Categoria criada");
                }
              }
            },
            child: const Text('Submit'),
          ),
        ],
      ),
    );
  }

  String? validateField(String? value) {
    if (value == null || value.isEmpty) {
      return 'Por favor, insira algum valor';
    }
    return null;
  }

  List<DropdownMenuItem<String>> filterCategoryParent(
      Iterable<ProductCategory> categorias) {
    var cats = categorias
        .where((element) => element.parent == null)
        .map((e) => DropdownMenuItem(
            value: e.id.toString(), child: Text(e.name ?? "N/A")))
        .toList(growable: true);

    // cats.insert(0, DropdownMenuItem(value: "raiz", child: Text("[Raíz]")));

    return cats;
  }
}
