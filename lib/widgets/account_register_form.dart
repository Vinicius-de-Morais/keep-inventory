import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:keep_inventory/_generated_prisma_client/model.dart';
import 'package:keep_inventory/services/account_controller.dart';

class AccountRegisterForm extends StatefulWidget {
  AccountRegisterForm({super.key});

  final TextEditingController nameController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  @override
  _AccountRegisterFormState createState() => _AccountRegisterFormState();
}

class _AccountRegisterFormState extends State<AccountRegisterForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final AccountController accountController = AccountController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Criar nova conta'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Insira seu nome',
                ),
                validator: (value) => this.validateField(value),
                controller: widget.nameController,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Insira seu nome de usuario',
                ),
                validator: (value) => this.validateField(value),
                controller: widget.usernameController,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Insira seu email',
                ),
                validator: (value) => this.validateField(value),
                controller: widget.descriptionController,
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    accountController.createAccount(
                        widget.nameController.text,
                        widget.usernameController.text,
                        widget.descriptionController.text);

                    Fluttertoast.showToast(msg: "Grupo criado");
                  }
                },
                child: const Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String? validateField(String? value) {
    if (value == null || value.isEmpty) {
      return 'Por favor, insira algum valor';
    }
    return null;
  }

  ListView listView(Iterable<Account> accounts, int lenght) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: lenght,
      cacheExtent: 0,
      itemBuilder: (context, index) {
        Account account = accounts.elementAtOrNull(index) != null
            ? accounts.elementAt(index)
            : Account();
        return ListTile(
          title: Text(account.name ?? ''),
          subtitle: Text(account.userName ?? ''),
        );
      },
    );
  }
}
