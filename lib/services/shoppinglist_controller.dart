import 'package:keep_inventory/_generated_prisma_client/model.dart';
import 'package:keep_inventory/_generated_prisma_client/prisma.dart';
import 'package:keep_inventory/prisma.dart';
import 'package:orm/orm.dart';

class ShoppingListController {
  Future<ActionClient<Iterable<ShoppingList>>> getShoppingLists() async {
    return prisma.shoppingList.findMany(
        include: const ShoppingListInclude(
      lote: PrismaUnion.$1(true),
    ));
  }

  Future<ActionClient<ShoppingList?>> getShoppingList(int stockId) async {
    return prisma.shoppingList.findUnique(
        where: ShoppingListWhereUniqueInput(stockId: stockId),
        include: const ShoppingListInclude(lote: PrismaUnion.$1(true)));
  }

  Future<ActionClient<ShoppingList>> createShoppingList(
      int stockId, int count, int accountId) async {
    return prisma.shoppingList.create(
        data: PrismaUnion.$1(ShoppingListCreateInput(
      lote: LoteCreateNestedOneWithoutShoppingListInput(
          connect: LoteWhereUniqueInput(id: stockId)),
      count: PrismaUnion.$1(count),
    )));
  }

  Future<ActionClient<ShoppingList?>> updateShoppingList(
      int stockId, int count, int accountId) async {
    return prisma.shoppingList.update(
        where: ShoppingListWhereUniqueInput(stockId: stockId),
        data: PrismaUnion.$1(ShoppingListUpdateInput(
          count: PrismaUnion.$1(count),
        )));
  }

  Future<ActionClient<ShoppingList?>> deleteShoppingList(int stockId) async {
    return prisma.shoppingList
        .delete(where: ShoppingListWhereUniqueInput(stockId: stockId));
  }
}
