import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
            )
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
