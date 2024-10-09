import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:keep_inventory/_generated_prisma_client/model.dart';
import 'package:keep_inventory/prisma.dart';
import 'package:keep_inventory/services/lote_controller.dart';

class LoteForm extends StatefulWidget {
  LoteForm({super.key, required this.accountId, this.lote});

  final int accountId;
  Lote? lote;

  DateTime? expirationDate;

  int? productId;

  final TextEditingController quantityMinimumController =
      TextEditingController();
  final TextEditingController quantityCurrentController =
      TextEditingController();
  final TextEditingController purchasePriceController = TextEditingController();

  @override
  _LoteFormState createState() => _LoteFormState();
}

class _LoteFormState extends State<LoteForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final LoteController loteController = LoteController();

  _LoteFormState() {
    if (mounted && widget.lote != null) {
      widget.quantityMinimumController.text =
          widget.lote!.quantityMinimum.toString();
      widget.quantityCurrentController.text =
          widget.lote!.quantityCurrent.toString();
      widget.purchasePriceController.text =
          widget.lote!.purchasePrice.toString();
      widget.expirationDate = widget.lote!.expirationDate;
      widget.productId = widget.lote!.product!.id;
    }
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: widget.expirationDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (pickedDate != null && pickedDate != widget.expirationDate) {
      setState(() {
        widget.expirationDate = pickedDate;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (!mounted) return Container();

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
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Valor do lote',
            ),
            validator: (value) => this.validateField(value),
            controller: widget.purchasePriceController,
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Data de expiração',
            ),
            readOnly: true,
            onTap: () => _selectDate(context),
            controller: TextEditingController(
              text: widget.expirationDate != null
                  ? "${widget.expirationDate!.toLocal()}".split(' ')[0]
                  : '',
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, selecione uma data de expiração';
              }
              return null;
            },
          ),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                if (widget.lote != null) {
                  loteController.updateLote(
                      widget.lote!.id!,
                      int.parse(widget.quantityMinimumController.text),
                      int.parse(widget.quantityCurrentController.text),
                      double.parse(widget.purchasePriceController.text),
                      widget.lote!.productId!,
                      widget.expirationDate!);
                } else {
                  loteController.createLote(
                      int.parse(widget.quantityMinimumController.text),
                      int.parse(widget.quantityCurrentController.text),
                      double.parse(widget.purchasePriceController.text),
                      widget.expirationDate!,
                      widget.productId!);
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

  List<DropdownMenuItem<String>> filterProduct(Iterable<Product> produtos) {
    return produtos
        .map((e) => DropdownMenuItem(
            value: e.id.toString(), child: Text(e.name ?? "N/A")))
        .toList();
  }
}
