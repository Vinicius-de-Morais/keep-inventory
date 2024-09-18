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
    return await prisma.account.findMany();
  }
}
