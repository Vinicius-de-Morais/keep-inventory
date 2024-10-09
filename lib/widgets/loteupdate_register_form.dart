import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:keep_inventory/_generated_prisma_client/model.dart';
import 'package:keep_inventory/_generated_prisma_client/prisma.dart';
import 'package:keep_inventory/prisma.dart';
import 'package:keep_inventory/services/category_controller.dart';
import 'package:keep_inventory/services/loteUpdates_controller.dart';
import 'package:orm/orm.dart';

enum TipoMovimentacao { positivo, negativo }

class LoteUpdatesRegisterForm extends StatefulWidget {
  LoteUpdatesRegisterForm({
    super.key,
    required this.lotePertencente,
    this.oldLoteUpdate,
  });

  final Lote lotePertencente;
  final LoteUpdates? oldLoteUpdate;

  final TextEditingController stockDeltaTextController =
      TextEditingController();

  @override
  _LoteUpdatesRegisterFormState createState() =>
      _LoteUpdatesRegisterFormState();
}

class _LoteUpdatesRegisterFormState extends State<LoteUpdatesRegisterForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final LoteUpdatesController loteUpdatesController = LoteUpdatesController();
  List<Lote> lotes = [];
  TipoMovimentacao? tipoMovimentacao = TipoMovimentacao.positivo;

  _LoteUpdatesRegisterFormState() {
    refresh();
  }

  void refresh() {
    prisma.lote.findMany().then((lots) {
      setState(() {
        lotes = lots.toList();
        if (widget.oldLoteUpdate != null) {
          int delta = (widget.oldLoteUpdate?.quantityDelta ?? 0);
          widget.stockDeltaTextController.text =
              delta.toString().replaceFirst('-', '');
          if (delta < 0) {
            tipoMovimentacao = TipoMovimentacao.negativo;
          }
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
          ListTile(
            title: const Text("Movimentação positiva (o estoque aumentou)"),
            leading: Radio(
                value: TipoMovimentacao.positivo,
                groupValue: tipoMovimentacao,
                onChanged: (ttttipoMovimentacao) {
                  setState(() {
                    tipoMovimentacao = ttttipoMovimentacao;
                  });
                }),
          ),
          ListTile(
            title: const Text("Movimentação negativa (o estoque diminuiu)"),
            leading: Radio(
                value: TipoMovimentacao.negativo,
                groupValue: tipoMovimentacao,
                onChanged: (ttttipoMovimentacao) {
                  setState(() {
                    tipoMovimentacao = ttttipoMovimentacao;
                  });
                }),
          ),
          ListTile(
            title: const Text("Mudança do estoque"),
            subtitle: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Mudança do estoque em unidades',
              ),
              validator: (value) => validateStockDeltaField(value),
              controller: widget.stockDeltaTextController,
              keyboardType: TextInputType.number,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                int valorMovementacao =
                    int.parse(widget.stockDeltaTextController.text);
                if (tipoMovimentacao == TipoMovimentacao.negativo) {
                  valorMovementacao = valorMovementacao * -1;
                }
                if (widget.oldLoteUpdate != null) {
                  loteUpdatesController.updateLoteUpdates(
                      widget.oldLoteUpdate!.id!,
                      widget.lotePertencente.id!,
                      valorMovementacao,
                      0) /* preço de venda do lote????????????? TODO */;
                } else {
                  loteUpdatesController.createLoteUpdates(
                      widget.lotePertencente.id!,
                      valorMovementacao,
                      0 /* TODO TAMBEM */);
                }

                Navigator.pop(context);
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

  String? validateStockDeltaField(String? value) {
    if (value == null || value.isEmpty) {
      return 'Por favor, insira algum valor';
    }

    if (int.tryParse(value) == null) {
      return 'Por favor, digite um número válido';
    }

    if (int.tryParse(value)! < 0) {
      return 'Por favor, digite um número positivo';
    }

    return null;
  }

/*
  List<DropdownMenuItem<String>> filterCategoryParent(
      Iterable<LoteUpdates> categorias) {
    return categorias
        .where((element) => element.parent == null)
        .map()
        .toList();
  }*/
}
