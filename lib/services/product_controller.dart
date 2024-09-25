import 'package:flutter/foundation.dart';
import 'package:keep_inventory/_generated_prisma_client/model.dart';
import 'package:keep_inventory/_generated_prisma_client/prisma.dart';
import 'package:keep_inventory/prisma.dart';
import 'package:orm/orm.dart';
import 'package:orm/src/runtime/action_client.dart';

class Productcontroller {
  Future<ActionClient<Iterable<Product>>> getProducts() async {
    return prisma.product.findMany(
      include: const ProductInclude(
        account: PrismaUnion.$1(true),
        category: PrismaUnion.$1(true),
        lotes: PrismaUnion.$1(true),
      ),
    );
  }

  Future<ActionClient<Product?>> getProduct(int id) async {
    return prisma.product.findUnique(
      where: ProductWhereUniqueInput(id: id),
      include: const ProductInclude(
        account: PrismaUnion.$1(true),
        category: PrismaUnion.$1(true),
        lotes: PrismaUnion.$1(true),
      ),
    );
  }

  Future<ActionClient<Product>> createProduct(String name, String description,
      String barcode, Category category, int accountId) async {
    return prisma.product.create(
        data: PrismaUnion.$1(ProductCreateInput(
      name: name,
      description: PrismaUnion.$1(description),
      barcodeContent: PrismaUnion.$1(barcode),
      account: AccountCreateNestedOneWithoutProductsInput(
          connect: AccountWhereUniqueInput(id: accountId)),
    )));
  }

  Future<ActionClient<Product?>> updateProduct(int id, String name,
      String description, String barcode, int categoryId) async {
    return prisma.product.update(
        where: ProductWhereUniqueInput(id: id),
        data: PrismaUnion.$1(ProductUpdateInput(
          name: PrismaUnion.$1(name),
          description: PrismaUnion.$1(description),
          barcodeContent: PrismaUnion.$1(barcode),
          category: ProductCategoryUpdateOneWithoutProductsNestedInput(
              connect: ProductCategoryWhereUniqueInput(id: categoryId)),
        )));
  }

  Future<ActionClient<Product?>> deleteProduct(int id) async {
    return prisma.product.delete(where: ProductWhereUniqueInput(id: id));
  }
}
