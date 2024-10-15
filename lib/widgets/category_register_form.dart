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

  final TextEditingController nameController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  int? parentId;
  int? childrenId;

  @override
  _ProductCategoryRegisterFormState createState() =>
      _ProductCategoryRegisterFormState();
}

class _ProductCategoryRegisterFormState
    extends State<ProductCategoryRegisterForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final CategoryController categoryController = CategoryController();

  Iterable<ProductCategory> categories = [];

  _ProductCategoryRegisterFormState() {
    refresh();
  }

  void refresh() {
    prisma.productCategory
        .findMany(
            include: const ProductCategoryInclude(parent: PrismaUnion.$1(true)))
        .then((cats) {
      setState(() {
        categories = cats.toList();

        if (mounted && widget.category != null) {
          widget.nameController.text = widget.category!.name ?? "";
          widget.descriptionController.text =
              widget.category!.description ?? "";
          widget.parentId = widget.category!.parent!.id;
        }
      });
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
            controller: widget.nameController,
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
                      widget.parentId = int.parse(value!);
                    },
                  );
                }
              }),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Descrição da categoria',
            ),
            validator: (value) => validateField(value),
            controller: widget.descriptionController,
          ),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                if (widget.category != null) {
                  categoryController.updateCategory(
                      widget.category!.id!,
                      widget.nameController.text,
                      widget.descriptionController.text,
                      widget.accountId,
                      widget.parentId!);

                  Fluttertoast.showToast(msg: "Categoria atualizada");
                } else {
                  categoryController.createCategory(
                      widget.nameController.text,
                      widget.descriptionController.text,
                      widget.accountId,
                      widget.parentId);

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
    return categorias
        .where((element) => element.parent == null)
        .map((e) => DropdownMenuItem(
            value: e.id.toString(), child: Text(e.name ?? "N/A")))
        .toList();
  }
}
