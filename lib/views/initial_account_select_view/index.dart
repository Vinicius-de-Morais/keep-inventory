import 'package:flutter/material.dart';
import 'package:keep_inventory/_generated_prisma_client/model.dart';
import 'package:keep_inventory/services/account_controller.dart';
import 'package:keep_inventory/utils/list_space_gap.dart';
import 'package:keep_inventory/views/initial_account_select_view/account_button.dart';

class InitialAccountSelectView extends StatefulWidget {
  const InitialAccountSelectView({super.key});

  @override
  State<InitialAccountSelectView> createState() =>
      _InitialAccountSelectViewState();
}

class _InitialAccountSelectViewState extends State<InitialAccountSelectView> {
  late Future<Iterable<Account>> accountsQuery =
      AccountController().getAccounts();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Gerenciamento de Inventário'),
        ),
        body: Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
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
                  child: FutureBuilder(
                      future: accountsQuery,
                      builder: (builder, state) {
                        if (!state.hasData) {
                          return Text("Carregando...");
                        }

                        return ListView(
                          shrinkWrap: true,
                          children: [
                            Text("Selecione um grupo para prosseguir:"),
                            ...state.data!.map((account) {
                              return AccountButton(
                                title: account.name!,
                                description: account.description,
                                icon: Icon(Icons.arrow_forward),
                                onTap: () {},
                              );
                            }),
                            SizedBox(height: 16),
                            AccountButton(
                              title: "Criar nova conta",
                              icon: Icon(Icons.add),
                              onTap: () {},
                            )
                          ].withSpaceBetween(height: 8),
                        );
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
