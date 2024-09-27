import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:keep_inventory/_generated_prisma_client/model.dart';
import 'package:keep_inventory/prisma.dart';
import 'package:keep_inventory/services/lote_controller.dart';

class LoteForm extends StatefulWidget {
  LoteForm({super.key, required this.accountId, this.loteId});

  final int accountId;
  final int? loteId;

  final TextEditingController quantityMinimumController =
      TextEditingController();
  final TextEditingController quantityCurrentController =
      TextEditingController();
  final TextEditingController purchasePriceController = TextEditingController();

  DateTime? expirationDate;

  int? productId;

  @override
  _LoteFormState createState() => _LoteFormState();
}

class _LoteFormState extends State<LoteForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final LoteController loteController = LoteController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          FutureBuilder(
              future: prisma.product.findMany(),
              builder: (context, itemdata) {
                if (itemdata.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                } else {
                  return DropdownButtonFormField(
                    decoration: const InputDecoration(
                      hintText: "Selecione o produto",
                    ),
                    items: this.filterProduct(itemdata.data!),
                    onChanged: (value) {
                      widget.productId = int.parse(value!);
                    },
                  );
                }
              }),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Quantidade minima',
            ),
            validator: (value) => this.validateField(value),
            controller: widget.quantityMinimumController,
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Quantidade atual',
            ),
            validator: (value) => this.validateField(value),
            controller: widget.quantityCurrentController,
          ),
          InputDatePickerFormField(
            firstDate: DateTime.now(),
            lastDate: DateTime.now(),
            onDateSaved: (value) {
              widget.expirationDate = value;
            },
          ),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                loteController.createLote(
                    int.parse(widget.quantityMinimumController.text),
                    int.parse(widget.quantityCurrentController.text),
                    double.parse(widget.purchasePriceController.text),
                    widget.expirationDate!,
                    widget.productId!);
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

  List<DropdownMenuItem<String>> filterProduct(Iterable<Product> produtos) {
    return produtos
        .map((e) => DropdownMenuItem(
            value: e.id.toString(), child: Text(e.name ?? "N/A")))
        .toList();
  }
}
