import 'package:flutter/rendering.dart';
import 'package:keep_inventory/_generated_prisma_client/model.dart';
import 'package:keep_inventory/_generated_prisma_client/prisma.dart';
import 'package:keep_inventory/prisma.dart';
import 'package:orm/orm.dart';

class CategoryController {
  Future<ActionClient<Iterable<ProductCategory>>> getCategories() async {
    return prisma.productCategory.findMany(
        /*include: const ProductCategoryInclude(
            account: PrismaUnion.$1(true),
            parent: PrismaUnion.$1(true),
            children: PrismaUnion.$1(true))*/
        );
  }

  Future<ActionClient<ProductCategory?>> getCategory(int id) async {
    return prisma.productCategory.findUnique(
        where: ProductCategoryWhereUniqueInput(id: id),
        include: const ProductCategoryInclude(
            account: PrismaUnion.$1(true),
            parent: PrismaUnion.$1(true),
            children: PrismaUnion.$1(true)));
  }

  Future<ActionClient<ProductCategory>> createCategory(
      String name, String description, int accountId, int? parentId) async {
    return prisma.productCategory.create(
        data: PrismaUnion.$1(ProductCategoryCreateInput(
      name: PrismaUnion.$1(name),
      description: PrismaUnion.$1(description),
      account: AccountCreateNestedOneWithoutCategoriesInput(
          connect: AccountWhereUniqueInput(id: accountId)),
      parent: parentId == null
          ? null
          : ProductCategoryCreateNestedOneWithoutChildrenInput(
              connect: ProductCategoryWhereUniqueInput(id: parentId)),
    )));
  }

  Future<ActionClient<ProductCategory?>> updateCategory(int id, String name,
      String description, int accountId, int parentId) async {
    return prisma.productCategory.update(
        where: ProductCategoryWhereUniqueInput(id: id),
        data: PrismaUnion.$1(ProductCategoryUpdateInput(
          name: PrismaUnion.$1(name),
          description: PrismaUnion.$1(description),
          account: AccountUpdateOneRequiredWithoutCategoriesNestedInput(
            connect: AccountWhereUniqueInput(id: accountId),
          ),
          parent: ProductCategoryUpdateOneWithoutChildrenNestedInput(
              connect: ProductCategoryWhereUniqueInput(id: parentId)),
        )));
  }

  Future<ActionClient<ProductCategory?>> deleteCategory(int id) async {
    return prisma.productCategory
        .delete(where: ProductCategoryWhereUniqueInput(id: id));
  }
}
