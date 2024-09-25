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
  Lote? lote;
  List<LoteUpdates> loteUpdates = [];

  LoteController loteController = LoteController();

  @override
  void initState() {
    super.initState();

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

    prisma.loteUpdates
        .findMany(include: LoteUpdatesInclude(lote: PrismaUnion.$1(true)))
        .then((loaded) {
      setState(() {
        loteUpdates = loaded.where((t) => t.lote?.id == widget.loteId).toList();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    if (lote == null) return Container();

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Inspecionar lote'),
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
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Row(
                          children: [
                            const Expanded(child: Text("Movimentações")),
                            ElevatedButton(
                                onPressed: () {},
                                child: const Text("Adicionar"))
                          ],
                        ),
                      ),
                      ListView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemCount: loteUpdates.length,
                        cacheExtent: 0,
                        itemBuilder: (context, index) {
                          LoteUpdates upd = loteUpdates[index];

                          String subtitle = [
                            "Delta: ${upd.quantityDelta ?? 0}",
                            upd.updateTime!.toIso8601String(),
                          ].join("\n");

                          Widget delta = upd.quantityDelta! < 0
                              ? Text("${upd.quantityDelta!}",
                                  style: TextStyle(
                                      color: Colors.red, fontSize: 24))
                              : Text("+${upd.quantityDelta!}",
                                  style: TextStyle(
                                      color: Colors.green, fontSize: 24));

                          return ListTile(
                            title: const Text("A"),
                            subtitle: Text(subtitle),
                            trailing: delta,
                          );
                        },
                      ),
                    ].withSpaceBetween(height: 8),
                  ),
                ),
              ),
            ].withSpaceBetween(height: 8),
          ),
        ),
      ),
    );
  }
}
