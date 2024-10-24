import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:keep_inventory/GLOBAL.dart';
import 'package:keep_inventory/_generated_prisma_client/model.dart';
import 'package:keep_inventory/services/account_controller.dart';
import 'package:keep_inventory/utils/list_space_gap.dart';
import 'package:keep_inventory/views/after_account_menu.dart';
import 'package:keep_inventory/views/initial_account_select_view/account_button.dart';
import 'package:keep_inventory/views/product_list_view/product_list_view.dart';
import 'package:keep_inventory/widgets/account_register_form.dart';

class InitialAccountSelectView extends StatefulWidget {
  const InitialAccountSelectView({super.key});

  @override
  State<InitialAccountSelectView> createState() =>
      _InitialAccountSelectViewState();
}

class _InitialAccountSelectViewState extends State<InitialAccountSelectView> {
  List<Account> accountsQuery = [];

  @override
  void initState() {
    super.initState();
    refresh();
  }

  void refresh() {
    AccountController().getAccounts().then((accs) {
      setState(() {
        accountsQuery = accs.toList();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Gerenciamento de Inventário'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: const BorderRadius.all(Radius.circular(24)),
                  boxShadow: kElevationToShadow[2],
                  color: Colors.white,
                ),
                child: (() {
                  if (accountsQuery.length == 0) {
                    return Text("Nenhum grupo existente...");
                  }

                  return Column(
                    children: [
                      Text("Selecione um grupo para prosseguir:"),
                      ...accountsQuery!.map((account) {
                        return AccountButton(
                          title: account.name!,
                          description: account.description,
                          icon: Icon(Icons.arrow_forward),
                          onTap: () {
                            GLOBAL_STATE.grupoSelecionado = account;

                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AfterAccountMenu(),
                              ),
                            );
                          },
                        );
                      }),
                      SizedBox(height: 16),
                      AccountButton(
                        title: "Criar nova conta",
                        icon: Icon(Icons.add),
                        onTap: () {
                          Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          AccountRegisterForm()))
                              .then((_) => refresh());
                        },
                      )
                    ].withSpaceBetween(height: 8),
                  );
                })(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
