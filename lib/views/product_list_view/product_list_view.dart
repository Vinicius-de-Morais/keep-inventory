import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:keep_inventory/_generated_prisma_client/model.dart';
import 'package:keep_inventory/prisma.dart';

class ProductListView extends StatefulWidget {
  @override
  _ProductListViewState createState() => _ProductListViewState();

  final TextEditingController ProductName = TextEditingController();
  final TextEditingController ProductDescription = TextEditingController();
  final TextEditingController ProductCategory = TextEditingController();
  final TextEditingController ProductBarcode = TextEditingController();
}

class _ProductListViewState extends State<ProductListView> {
  List<Product> products = [];

  _ProductListViewState() {
    prisma.account.findMany().then((loaded) {
      setState(() {});
    });

    prisma.product.findMany().then((loaded) {
      setState(() {
        products = loaded.toList();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Lista de Produtos'),
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(16, 32, 16, 0),
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: products.length,
            cacheExtent: 0,
            itemBuilder: (context, index) {
              Product p = products[index];

              return ListTile(
                title: Text(p.name ?? ''),
                subtitle: Text(p.description ?? ''),
              );
            },
          ),
        ),
      ),
    );
  }
}
