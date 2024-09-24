import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:keep_inventory/_generated_prisma_client/model.dart';
import 'package:keep_inventory/_generated_prisma_client/prisma.dart';
import 'package:keep_inventory/prisma.dart';
import 'package:orm/orm.dart';

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
    prisma.account.findMany(
      include: const AccountInclude(
        categories: PrismaUnion.$1(true),
        products: PrismaUnion.$1(true),
      ),
    );

    prisma.product
        .findMany(
      include: const ProductInclude(
        account: PrismaUnion.$1(true),
        category: PrismaUnion.$1(true),
        lotes: PrismaUnion.$1(true),
      ),
    )
        .then((loaded) {
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
              String desc = p.description ?? '';

              return ListTile(
                title: Text(p.name ?? ''),
                subtitle: Text(
                    "${desc}\n${p.lotes?.length ?? 0} lotes\n${p.category?.name ?? 'Sem categoria'}"),
              );
            },
          ),
        ),
      ),
    );
  }
}
