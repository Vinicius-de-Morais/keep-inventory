import 'package:confirm_dialog/confirm_dialog.dart';
import 'package:flutter/material.dart';
import 'package:keep_inventory/_generated_prisma_client/model.dart';
import 'package:keep_inventory/_generated_prisma_client/prisma.dart';
import 'package:keep_inventory/prisma.dart';
import 'package:keep_inventory/services/lote_controller.dart';
import 'package:keep_inventory/utils/list_space_gap.dart';
import 'package:keep_inventory/widgets/form_render.dart';
import 'package:orm/orm.dart';

class ShoppingListInspectView extends StatefulWidget {
  const ShoppingListInspectView({super.key});

  @override
  ShoppingListInspectViewState createState() => ShoppingListInspectViewState();
}

class ShoppingListInspectViewState extends State<ShoppingListInspectView> {
  List<Lote> LoteLists = [];

  LoteController loteController = LoteController();

  @override
  void initState() {
    super.initState();

    refreshLotes();
  }

  void refreshLotes() {
    loteController.getLotes().then((loaded) {
      setState(() {
        loaded.then((element) => LoteLists = element.toList());
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Lista de Compras'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Card(
              color: ThemeData().colorScheme.surfaceContainer,
              margin: EdgeInsets.all(8),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 16.0),
                      child: Row(
                        children: [
                          Expanded(child: Text("Produtos em falta")),
                        ],
                      ),
                    ),
                    ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: LoteLists.length,
                      cacheExtent: 0,
                      itemBuilder: (context, index) {
                        Lote lote = LoteLists[index];

                        var buyAt = lote.creationDate?.toLocal();
                        var expirationAt = lote.expirationDate?.toLocal();
                        var val = expirationAt != null
                            ? "${expirationAt.day}/${expirationAt.month}/${expirationAt.year}"
                            : "Indefinido";

                        String subtitle = [
                          "Data Compra: ${buyAt!.day}/${buyAt.month}/${buyAt.year}",
                          "Validade: ${val}",
                          lote.product?.name,
                        ].join("\n");

                        int qtd = lote.quantityCurrent! - lote.quantityMinimum!;

                        if (!(qtd > 4)) {
                          String text =
                              "Quantidade atual: ${lote.quantityCurrent}   Minimo: ${lote.quantityMinimum}";

                          return ListTile(
                            title: Text(text,
                                style: const TextStyle(
                                  color: Colors.red,
                                )),
                            subtitle: Text(subtitle),
                          );
                        } else {
                          return Container();
                        }
                      },
                    ),
                  ].withSpaceBetween(height: 8),
                ),
              ),
            ),
          ].withSpaceBetween(height: 8),
        ),
      ),
    );
  }
}
