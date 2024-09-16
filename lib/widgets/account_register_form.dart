import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:keep_inventory/_generated_prisma_client/model.dart';
import 'package:keep_inventory/services/account_controller.dart';

class AccountRegisterForm extends StatefulWidget {
  AccountRegisterForm({super.key, required this.accountController});

  final AccountController accountController;

  final TextEditingController nameController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  @override
  _AccountRegisterFormState createState() => _AccountRegisterFormState();
}

class _AccountRegisterFormState extends State<AccountRegisterForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    late Future<Iterable<Account>> accounts =
        widget.accountController.getAccounts();

    accounts.then((value) {
      print(value);
    });

    return Scaffold(
      body: Form(
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
                  widget.accountController.createAccount(
                      widget.nameController.text,
                      widget.usernameController.text,
                      widget.descriptionController.text);
                }
              },
              child: const Text('Submit'),
            ),
            /*FutureBuilder<Iterable<Account>>(
              initialData: const Iterable.empty(),
              future: accounts,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return CircularProgressIndicator();
                } else if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                } else {
                  return ListView.builder(
                    itemCount: snapshot.data?.length,
                    itemBuilder: (context, index) {
                      Account account = snapshot.data != null
                          ? snapshot.data!.elementAt(index)
                          : Account();
                      return ListTile(
                        title: Text(account.name ?? ''),
                        subtitle: Text(account.userName ?? ''),
                      );
                    },
                  );
                }
              },
            )*/
          ],
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
}
