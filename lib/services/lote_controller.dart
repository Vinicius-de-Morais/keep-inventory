import 'package:keep_inventory/_generated_prisma_client/model.dart';
import 'package:keep_inventory/_generated_prisma_client/prisma.dart';
import 'package:keep_inventory/prisma.dart';
import 'package:orm/orm.dart';

class LoteController {
  Future<ActionClient<Iterable<Lote>>> getLotes() async {
    return prisma.lote.findMany(
        include: const LoteInclude(
      product: PrismaUnion.$1(true),
      loteUpdates: PrismaUnion.$1(true),
    ));
  }

  Future<ActionClient<Lote?>> getLote(int id) async {
    return prisma.lote.findUnique(
        where: LoteWhereUniqueInput(id: id),
        include: const LoteInclude(
          product: PrismaUnion.$1(true),
          loteUpdates: PrismaUnion.$1(true),
        ));
  }

  Future<ActionClient<Lote>> createLote(int quantityMinimum,
      int quantityCurrent, double purchasePrice, int productId) async {
    return prisma.lote.create(
        data: PrismaUnion.$1(LoteCreateInput(
      product: ProductCreateNestedOneWithoutLotesInput(
          connect: ProductWhereUniqueInput(id: productId)),
      quantityMinimum: quantityMinimum,
      quantityCurrent: quantityCurrent,
      purchasePrice: PrismaUnion.$1(purchasePrice),
    )));
  }

  Future<ActionClient<Lote?>> updateLote(int id, int quantityMinimum,
      int quantityCurrent, double purchasePrice, int productId) async {
    return prisma.lote.update(
        where: LoteWhereUniqueInput(id: id),
        data: PrismaUnion.$1(LoteUpdateInput(
          quantityMinimum: PrismaUnion.$1(quantityMinimum),
          quantityCurrent: PrismaUnion.$1(quantityCurrent),
          purchasePrice: PrismaUnion.$1(purchasePrice),
          product: ProductUpdateOneRequiredWithoutLotesNestedInput(
              connect: ProductWhereUniqueInput(id: productId)),
        )));
  }

  Future<ActionClient<Lote?>> deleteLote(int id) async {
    return prisma.lote.delete(where: LoteWhereUniqueInput(id: id));
  }
}
