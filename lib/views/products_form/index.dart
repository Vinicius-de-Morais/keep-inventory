import 'package:flutter/cupertino.dart';

class ProductsForm extends StatefulWidget {
  @override
  _ProductsFormState createState() => _ProductsFormState();

  final TextEditingController ProductName = TextEditingController();
  final TextEditingController ProductDescription = TextEditingController();
  final TextEditingController ProductCategory = TextEditingController();
  final TextEditingController ProductBarcode = TextEditingController();
}

class _ProductsFormState extends State<ProductsForm> {
  @override
  Widget build(BuildContext context) {
    // TODO: Iniciar formulário
    throw UnimplementedError();
  }
}
