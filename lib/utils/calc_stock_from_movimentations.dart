import 'package:keep_inventory/_generated_prisma_client/model.dart';
import 'package:keep_inventory/_generated_prisma_client/prisma.dart';
import 'package:keep_inventory/prisma.dart';
import 'package:orm/orm.dart';

/// Calcula o estoque atual somando todas as movimentações do estoque registradas
Future<int> calcStockCountFromMovimentations(int stockId) async {
  Iterable<LoteUpdates> updates = await prisma.loteUpdates.findMany(
    where: LoteUpdatesWhereInput(
        lote: PrismaUnion.$2(
      LoteWhereInput(
        id: PrismaUnion.$2(stockId),
      ),
    )),
  );

  int count = 0;
  for (var update in updates) {
    count += update.quantityDelta ?? 0;
  }
  return count;
}
