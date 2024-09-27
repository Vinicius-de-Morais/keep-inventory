import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:keep_inventory/services/account_controller.dart';
import 'package:keep_inventory/widgets/category_register_form.dart';

// ignore: must_be_immutable
class FormRender extends StatefulWidget {
  FormRender({super.key, required this.form, required this.title});

  final StatefulWidget form;
  String title;

  @override
  _FormRenderState createState() => _FormRenderState();
}

class _FormRenderState extends State<FormRender> {
  final AccountController accountController = AccountController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: widget.form,
      ),
    );
  }
}
