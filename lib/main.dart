import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:keep_inventory/services/account_controller.dart';
import 'package:keep_inventory/views/initial_account_select_view/index.dart';
import 'package:keep_inventory/widgets/account_register_form.dart';
import 'package:keep_inventory/widgets/loginForm.dart';

import '_generated_prisma_client/model.dart';
import '_generated_prisma_client/prisma.dart';
import 'prisma.dart';

Future<void> main() async {
  initPrismaClient().whenComplete(() {
    print("Prisma inicializado");
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  AccountController accountController = AccountController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'test',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            LoginForm(onSubmitted: (String email, String password) {
              print('Email: $email, Password: $password');
            }),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context) => AccountRegisterForm(
                          accountController: accountController)),
                )
              },
          tooltip: 'criar conta',
          child: const Text("Criar conta") //const Icon(Icons.add),
          ),
    );
  }
}
