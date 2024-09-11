import 'package:keep_inventory/_generated_prisma_client/client.dart';
import 'package:keep_inventory/_generated_prisma_client/prisma.dart';
import 'package:orm/orm.dart';

class AccountController {
  late final PrismaClient client;

  AccountController(PrismaClient? client) {
    client = client;
  }

  Future<void> createAccount(
      String name, String userName, String description) async {
    await client.account.create(
        data: PrismaUnion.$1(AccountCreateInput(
            name: name,
            userName: userName,
            description: PrismaUnion.$1(description))));
  }
}
