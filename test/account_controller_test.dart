import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:keep_inventory/_generated_prisma_client/prisma.dart';
import 'package:keep_inventory/prisma.dart';
import 'package:keep_inventory/services/account_controller.dart';

void main() async {
  test('Prisma client is initialized', () async {
    TestWidgetsFlutterBinding.ensureInitialized(); // Add this line
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(
            const MethodChannel('plugins.flutter.io/path_provider'),
            (MethodCall methodCall) async {
      return '.';
    });

    await initPrismaClient();

    expect(prisma, isNotNull);
  });

  test('account is created', () async {
    await initPrismaClient();
    AccountController accountController = AccountController();

    final account = await accountController.createAccount(
        "test_name", "test_username", "test_description");

    prisma.account
        .findUnique(where: AccountWhereUniqueInput(id: account.id))
        .then((value) {
      expect(value, isNotNull);
    });

    prisma.account.delete(where: AccountWhereUniqueInput(id: account.id));
  });
}
