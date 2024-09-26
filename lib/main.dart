import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:keep_inventory/services/account_controller.dart';
import 'package:keep_inventory/views/category_list_view/category_list_view.dart';
import 'package:keep_inventory/views/initial_account_select_view/initial_account_select_view.dart';
import 'package:keep_inventory/views/lote_list_view/lote_list_view.dart';
import 'package:keep_inventory/views/product_list_view/product_list_view.dart';
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
      body: Padding(
        padding: const EdgeInsets.all(48.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                'Seja bem-vindo',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              Text('Gerencie seu inventário de forma simples'),
              SizedBox(height: 32),
              ElevatedButton(
                child: Text("Iniciar"),
                onPressed: () {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => InitialAccountSelectView()));
                },
              ),
              TextButton(
                  child: Text("Lista de Produtos"),
                  onPressed: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (context) => ProductListView()));
                  }),
              TextButton(
                  child: Text("Lista de Categorias"),
                  onPressed: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (context) => CategoryListView()));
                  }),
              TextButton(
                  child: Text("Lista de Lotes"),
                  onPressed: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (context) => LoteListView()));
                  })
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context) => AccountRegisterForm()),
                )
              },
          tooltip: 'criar conta',
          child: const Text("Criar conta") //const Icon(Icons.add),
          ),
    );
  }
}
