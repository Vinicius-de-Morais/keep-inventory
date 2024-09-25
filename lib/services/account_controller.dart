import 'package:keep_inventory/_generated_prisma_client/model.dart';
import 'package:keep_inventory/_generated_prisma_client/prisma.dart';
import 'package:keep_inventory/prisma.dart';
import 'package:orm/orm.dart';

class AccountController {
  Future<Account> createAccount(
      String name, String userName, String description) async {
    Account account = await prisma.account.create(
        data: PrismaUnion.$1(AccountCreateInput(
            name: name,
            userName: userName,
            description: PrismaUnion.$1(description))));

    return account;
  }

  Future<Iterable<Account>> getAccounts() async {
    return await prisma.account.findMany(
        include: const AccountInclude(
      categories: PrismaUnion.$1(true),
      products: PrismaUnion.$1(true),
    ));
  }

  Future<Account?> getAccount(int id) async {
    return await prisma.account.findUnique(
        where: AccountWhereUniqueInput(id: id),
        include: const AccountInclude(
          categories: PrismaUnion.$1(true),
          products: PrismaUnion.$1(true),
        ));
  }

  Future<Account?> updateAccount(
      int id, String name, String userName, String description) async {
    return await prisma.account.update(
        where: AccountWhereUniqueInput(id: id),
        data: PrismaUnion.$1(AccountUpdateInput(
            name: PrismaUnion.$1(name),
            userName: PrismaUnion.$1(userName),
            description: PrismaUnion.$1(description))));
  }
}
