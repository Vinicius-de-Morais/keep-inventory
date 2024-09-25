import 'package:flutter/material.dart';
import 'package:keep_inventory/_generated_prisma_client/model.dart';
import 'package:keep_inventory/_generated_prisma_client/prisma.dart';
import 'package:keep_inventory/prisma.dart';
import 'package:keep_inventory/services/lote_controller.dart';
import 'package:keep_inventory/utils/list_space_gap.dart';
import 'package:orm/orm.dart';

class LoteUpdateInspectView extends StatefulWidget {
  final int loteId;
  const LoteUpdateInspectView({super.key, required this.loteId});

  @override
  LoteUpdateInspectViewState createState() => LoteUpdateInspectViewState();
}

class LoteUpdateInspectViewState extends State<LoteUpdateInspectView> {
  late Lote lote;
  LoteController loteController = LoteController();

  LoteUpdateInspectViewState() {
    refresh();
  }

  void refresh() {
    prisma.lote
        .findFirstOrThrow(
            where: LoteWhereInput(
      id: PrismaUnion.$1(
        IntFilter(
          equals: PrismaUnion.$1(widget.loteId),
        ),
      ),
    ))
        .then((loaded) {
      setState(() {
        lote = loaded;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Inspecionar lote'),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    const TextField(
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Pesquisar...',
                      ),
                    ),
                    Row(
                      children: [
                        MenuAnchor(
                          builder: (BuildContext context,
                              MenuController controller, Widget? child) {
                            return ElevatedButton(
                                onPressed: () {
                                  if (controller.isOpen) {
                                    controller.close();
                                  } else {
                                    controller.open();
                                  }
                                },
                                child: const Row(
                                  children: [
                                    Icon(Icons.filter_list),
                                    SizedBox(width: 8),
                                    Text("Filtros")
                                  ],
                                ));
                          },
                          menuChildren: <Widget>[
                            const MenuItemButton(child: Text("Todos os lotes")),
                            const MenuItemButton(child: Text("Apenas vazios")),
                          ],
                        ),
                        const SizedBox(width: 8),
                        MenuAnchor(
                          builder: (BuildContext context,
                              MenuController controller, Widget? child) {
                            return ElevatedButton(
                                onPressed: () {
                                  if (controller.isOpen) {
                                    controller.close();
                                  } else {
                                    controller.open();
                                  }
                                },
                                child: const Row(
                                  children: [
                                    Icon(Icons.sort),
                                    SizedBox(width: 8),
                                    Text("Ordem")
                                  ],
                                ));
                          },
                          menuChildren: const <Widget>[
                            MenuItemButton(child: Text("Alfabética")),
                            MenuItemButton(
                                child: Text("Por quantidade de estoque")),
                          ],
                        ),
                      ],
                    )
                  ].withSpaceBetween(height: 8),
                ),
              ),
            ].withSpaceBetween(height: 8),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {},
        ),
      ),
    );
  }
}
