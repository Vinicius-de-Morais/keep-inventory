import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:keep_inventory/_generated_prisma_client/model.dart';
import 'package:keep_inventory/prisma.dart';
import 'package:keep_inventory/services/product_controller.dart';

class ProductRegisterForm extends StatefulWidget {
  ProductRegisterForm({super.key, required this.accountId, this.product});

  final int accountId;
  Product? product;

  final TextEditingController nameController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController barcodeController = TextEditingController();

  int? category;

  @override
  _ProductRegisterFormState createState() => _ProductRegisterFormState();
}

class _ProductRegisterFormState extends State<ProductRegisterForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final ProductController productController = ProductController();

  _ProductRegisterFormState() {
    if (mounted && widget.product != null) {
      widget.nameController.text = widget.product!.name ?? "";
      widget.descriptionController.text = widget.product!.description ?? "";
      widget.barcodeController.text = widget.product!.barcodeContent ?? "";
      widget.category = widget.product!.category!.id;
    }
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
              hintText: 'Nome do Produto',
            ),
            validator: (value) => this.validateField(value),
            controller: widget.nameController,
          ),
          FutureBuilder(
              future: prisma.productCategory.findMany(),
              //categoryController.getCategories(),
              builder: (context, itemdata) {
                if (itemdata.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                } else {
                  return DropdownButtonFormField(
                    decoration: const InputDecoration(
                      hintText: "Selecione a categoria",
                    ),
                    items: this.filterCategory(itemdata.data!),
                    onChanged: (value) {
                      widget.category = int.parse(value!);
                    },
                  );
                }
              }),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Descrição do Produto',
            ),
            validator: (value) => this.validateField(value),
            controller: widget.descriptionController,
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Codigo de barras',
            ),
            validator: (value) => this.validateField(value),
            controller: widget.barcodeController,
          ),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                if (widget.product != null) {
                  productController.updateProduct(
                      widget.product!.id!,
                      widget.nameController.text,
                      widget.descriptionController.text,
                      widget.barcodeController.text,
                      widget.category!);
                } else {
                  productController.createProduct(
                      widget.nameController.text,
                      widget.descriptionController.text,
                      widget.barcodeController.text,
                      widget.accountId,
                      widget.category!);
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

  List<DropdownMenuItem<String>> filterCategory(
      Iterable<ProductCategory> categorias) {
    return categorias
        .where((element) => element.parent == null)
        .map((e) => DropdownMenuItem(
            value: e.id.toString(), child: Text(e.name ?? "N/A")))
        .toList();
  }
}
