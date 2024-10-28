import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:keep_inventory/GLOBAL.dart';
import 'package:keep_inventory/_generated_prisma_client/model.dart';
import 'package:keep_inventory/prisma.dart';
import 'package:keep_inventory/services/product_controller.dart';

class ProductRegisterForm extends StatefulWidget {
  ProductRegisterForm({super.key, required this.accountId, this.product});

  final int accountId;
  Product? product;

  @override
  _ProductRegisterFormState createState() => _ProductRegisterFormState();
}

class _ProductRegisterFormState extends State<ProductRegisterForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  // tirar essas porras do widget e botar aqui no state
  final TextEditingController nameController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController barcodeController = TextEditingController();
  int? category;

  final ProductController productController = ProductController();

  List<ProductCategory>? productCategories;

  _ProductRegisterFormState() {}

  @override
  void initState() {
    super.initState();
    loadData();
  }

  void loadData() {
    setState(() {
      productCategories = null;

      prisma.productCategory.findMany().then((value) {
        setState(() {
          productCategories = value.toList();
          if (widget.product != null) {
            nameController.text = widget.product!.name ?? "";
            descriptionController.text = widget.product!.description ?? "";
            barcodeController.text = widget.product!.barcodeContent ?? "";
            category = widget.product!.category!.id;
          }
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final NavigatorState routeNavigator =
        Navigator.of(context, rootNavigator: true);

    return Form(
      canPop: true,
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Nome do Produto',
            ),
            validator: (value) => this.validateField(value),
            controller: nameController,
          ),
          // faço isso em react toda hora
          (() {
            if (productCategories == null) {
              return const Center(child: CircularProgressIndicator());
            }

            return DropdownButtonFormField(
              decoration: const InputDecoration(
                hintText: "Selecione a categoria",
              ),
              items: filterCategory(productCategories!),
              onChanged: (value) {
                category = int.parse(value!);
              },
            );
          })(),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Descrição do Produto',
            ),
            validator: (value) => this.validateField(value),
            controller: descriptionController,
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Codigo de barras',
            ),
            validator: (value) => this.validateField(value),
            controller: barcodeController,
          ),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                if (widget.product != null) {
                  productController.updateProduct(
                      widget.product!.id!,
                      nameController.text,
                      descriptionController.text,
                      barcodeController.text,
                      category!);

                  Fluttertoast.showToast(msg: "Produto atualizado");
                } else {
                  productController.createProduct(
                      nameController.text,
                      descriptionController.text,
                      barcodeController.text,
                      widget.accountId,
                      category!);

                  Fluttertoast.showToast(msg: "Produto criado");
                }

                routeNavigator.pop();
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
        .where(
            (element) => element.accountId == GLOBAL_STATE.grupoSelecionado?.id)
        .map((e) => DropdownMenuItem(
            value: e.id.toString(), child: Text(e.name ?? "N/A")))
        .toList();
  }
}
