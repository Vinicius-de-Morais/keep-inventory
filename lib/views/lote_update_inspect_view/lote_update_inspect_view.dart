import 'package:confirm_dialog/confirm_dialog.dart';
import 'package:flutter/material.dart';
import 'package:keep_inventory/_generated_prisma_client/model.dart';
import 'package:keep_inventory/_generated_prisma_client/prisma.dart';
import 'package:keep_inventory/prisma.dart';
import 'package:keep_inventory/services/lote_controller.dart';
import 'package:keep_inventory/utils/list_space_gap.dart';
import 'package:keep_inventory/widgets/form_render.dart';
import 'package:keep_inventory/widgets/loteupdate_register_form.dart';
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

    refreshLotes();
  }

  void refreshLotes() {
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

  void deleteGuy(LoteUpdates loteUpdates) {
    prisma.loteUpdates
        .delete(where: LoteUpdatesWhereUniqueInput(id: loteUpdates.id))
        .then((gordon) {
      refreshLotes();
    });
  }

  @override
  Widget build(BuildContext context) {
    if (lote == null) return Container();

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
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
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => FormRender(
                                            form: LoteUpdatesRegisterForm(
                                              lotePertencente: lote!,
                                              oldLoteUpdate: null,
                                            ),
                                            title: "Criar nova movimentação")),
                                  ).then((_) {
                                    refreshLotes();
                                  });
                                },
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
                            upd.updateTime!.toIso8601String(),
                          ].join("\n");

                          Widget delta = upd.quantityDelta! < 0
                              ? Text(
                                  "${upd.quantityDelta!.toString().replaceFirst('-', 'Removidos ')} un.",
                                  style: TextStyle(
                                      color: Colors.red, fontSize: 18))
                              : Text("Adicionados ${upd.quantityDelta!} un.",
                                  style: TextStyle(
                                      color: Colors.green, fontSize: 18));

                          return ListTile(
                            title: delta,
                            subtitle: Text(subtitle),
                            trailing: MenuAnchor(
                              menuChildren: <Widget>[
                                MenuItemButton(
                                    child: Row(
                                      children: [
                                        const Icon(Icons.edit),
                                        const Text("Editar"),
                                      ].withSpaceBetween(width: 16),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => FormRender(
                                                form: LoteUpdatesRegisterForm(
                                                  lotePertencente: lote!,
                                                  oldLoteUpdate: upd,
                                                ),
                                                title:
                                                    "Atualizar movimentação")),
                                      ).then((_) {
                                        refreshLotes();
                                      });
                                    }),
                                MenuItemButton(
                                  child: Row(
                                    children: [
                                      const Icon(Icons.delete),
                                      const Text("Apagar")
                                    ].withSpaceBetween(width: 16),
                                  ),
                                  onPressed: () async {
                                    if (!await confirm(context,
                                        content: const Text("Apagar mesmo?"))) {
                                      return;
                                    }

                                    deleteGuy(upd);
                                  },
                                ),
                              ],
                              builder: (BuildContext context,
                                  MenuController controller, Widget? child) {
                                return IconButton(
                                    icon: const Icon(Icons.more_vert),
                                    onPressed: () {
                                      if (controller.isOpen) {
                                        controller.close();
                                      } else {
                                        controller.open();
                                      }
                                    });
                              },
                            ),
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
