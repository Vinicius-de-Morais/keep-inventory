import 'package:keep_inventory/_generated_prisma_client/model.dart';
import 'package:keep_inventory/_generated_prisma_client/prisma.dart';
import 'package:keep_inventory/prisma.dart';
import 'package:orm/orm.dart';
import 'package:orm/src/runtime/action_client.dart';

class Productcontroller {
  Future<ActionClient<Iterable<Product>>> getProducts() async {
    return prisma.product.findMany();
  }

  Future<ActionClient<Product?>> getProduct(int id) async {
    return prisma.product.findUnique(where: ProductWhereUniqueInput(id: id));
  }
}
