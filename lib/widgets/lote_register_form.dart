import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:keep_inventory/GLOBAL.dart';
import 'package:keep_inventory/_generated_prisma_client/model.dart';
import 'package:keep_inventory/prisma.dart';
import 'package:keep_inventory/services/lote_controller.dart';

class LoteForm extends StatefulWidget {
  LoteForm(
      {super.key,
      required this.accountId,
      required this.relatedToProduct,
      this.previousLoteData});

  final int accountId;

  /// A qual produto este lote pertence? Usado para não ter que mostrar uma seleção de produtos ao usuário.
  final Product relatedToProduct;

  /// Dados antigos do lote. Caso seja nulo, significa que está criando um novo lote neste formulário.
  Lote? previousLoteData;

  @override
  _LoteFormState createState() => _LoteFormState();
}

class _LoteFormState extends State<LoteForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final LoteController loteController = LoteController();
  final TextEditingController quantityMinimumController =
      TextEditingController();
  final TextEditingController purchasePriceController = TextEditingController();

  DateTime? selectedExpirationDate;

  @override
  void initState() {
    super.initState();

    if (widget.previousLoteData != null) {
      quantityMinimumController.text =
          widget.previousLoteData!.quantityMinimum.toString();
      purchasePriceController.text =
          widget.previousLoteData!.purchasePrice.toString();
      selectedExpirationDate = widget.previousLoteData!.expirationDate;
    }
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: selectedExpirationDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (pickedDate != null && pickedDate != selectedExpirationDate) {
      setState(() {
        selectedExpirationDate = pickedDate;
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
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Quantidade minima',
            ),
            validator: (value) => this.validateField(value),
            controller: quantityMinimumController,
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Preço de venda do lote',
            ),
            validator: (value) {
              if (double.tryParse(value ?? "") == null) {
                return "Valor não é um número válido";
              }

              return this.validateField(value);
            },
            controller: purchasePriceController,
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Data de expiração',
            ),
            readOnly: true,
            onTap: () => _selectDate(context),
            controller: TextEditingController(
              text: selectedExpirationDate != null
                  ? "${selectedExpirationDate!.toLocal()}".split(' ')[0]
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
                if (widget.previousLoteData != null) {
                  loteController.updateLote(
                      widget.previousLoteData!.id!,
                      int.parse(quantityMinimumController.text),
                      0,
                      double.parse(purchasePriceController.text),
                      widget.previousLoteData!.productId!,
                      selectedExpirationDate!);

                  Fluttertoast.showToast(msg: "Lote atualizado");
                } else {
                  loteController.createLote(
                      int.parse(quantityMinimumController.text),
                      0,
                      double.parse(purchasePriceController.text),
                      selectedExpirationDate!,
                      widget.relatedToProduct.id!);

                  Fluttertoast.showToast(msg: "Lote criado");
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
        .where(
            (element) => element.accountId == GLOBAL_STATE.grupoSelecionado?.id)
        .map((e) => DropdownMenuItem(
            value: e.id.toString(), child: Text(e.name ?? "N/A")))
        .toList();
  }

  List<DropdownMenuItem<String>> filterProduct(Iterable<Product> produtos) {
    return produtos
        .where(
            (element) => element.accountId == GLOBAL_STATE.grupoSelecionado?.id)
        .map((e) => DropdownMenuItem(
            value: e.id.toString(), child: Text(e.name ?? "N/A")))
        .toList();
  }
}
