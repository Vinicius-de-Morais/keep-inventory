import 'package:keep_inventory/_generated_prisma_client/model.dart';
import 'package:keep_inventory/_generated_prisma_client/prisma.dart';
import 'package:orm/orm.dart';
import 'package:orm/src/runtime/action_client.dart';

import '../_generated_prisma_client/client.dart';

class Productcontroller {
  PrismaClient client = PrismaClient();

  Future<ActionClient<Iterable<Product>>> getProducts() async {
    return client.product.findMany();
  }

  Future<ActionClient<Product?>> getProduct(int id) async {
    return client.product.findUnique(where: ProductWhereUniqueInput(id: id));
  }
}
