import 'package:keep_inventory/_generated_prisma_client/model.dart';
import 'package:keep_inventory/_generated_prisma_client/prisma.dart';
import 'package:keep_inventory/prisma.dart';
import 'package:orm/orm.dart';

class LoteUpdatesController {
  Future<ActionClient<Iterable<LoteUpdates>>> getLoteUpdates() async {
    return prisma.loteUpdates.findMany(
        include: const LoteUpdatesInclude(
      lote: PrismaUnion.$1(true),
    ));
  }

  Future<ActionClient<LoteUpdates?>> getLoteUpdate(int id) async {
    return prisma.loteUpdates.findUnique(
        where: LoteUpdatesWhereUniqueInput(id: id),
        include: const LoteUpdatesInclude(
          lote: PrismaUnion.$1(true),
        ));
  }

  Future<ActionClient<LoteUpdates>> createLoteUpdates(
      int loteId, int quantityDelta, double price) async {
    return prisma.loteUpdates.create(
        data: PrismaUnion.$1(LoteUpdatesCreateInput(
      lote: LoteCreateNestedOneWithoutLoteUpdatesInput(
          connect: LoteWhereUniqueInput(id: loteId)),
      quantityDelta: quantityDelta,
    )));
  }

  Future<ActionClient<LoteUpdates?>> updateLoteUpdates(
      int id, int loteId, int quantityDelta, double price) async {
    return prisma.loteUpdates.update(
        where: LoteUpdatesWhereUniqueInput(id: id),
        data: PrismaUnion.$1(LoteUpdatesUpdateInput(
          lote: LoteUpdateOneRequiredWithoutLoteUpdatesNestedInput(
              connect: LoteWhereUniqueInput(id: loteId)),
          quantityDelta: PrismaUnion.$1(quantityDelta),
        )));
  }

  Future<ActionClient<LoteUpdates?>> deleteLoteUpdates(int id) async {
    return prisma.loteUpdates
        .delete(where: LoteUpdatesWhereUniqueInput(id: id));
  }
}
