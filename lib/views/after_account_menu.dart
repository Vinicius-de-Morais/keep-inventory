import 'package:flutter/material.dart';
import 'package:keep_inventory/utils/list_space_gap.dart';
import 'package:keep_inventory/views/category_list_view/category_list_view.dart';
import 'package:keep_inventory/views/product_list_view/product_list_view.dart';
import 'package:keep_inventory/views/shopping_list_view/shopping_list_virtual.dart';

class AfterAccountMenu extends StatelessWidget {
  const AfterAccountMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Menu principal'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ElevatedButton(
                    child: const Text("Ver todos os produtos"),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProductListView()));
                    },
                  ),
                  ElevatedButton(
                    child: const Text("Minhas categorias"),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CategoryListView()));
                    },
                  ),
                  ElevatedButton(
                    child: const Text("Minha lista de compras"),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ShoppingListInspectView()));
                    },
                  ),
                ].withSpaceBetween(height: 8),
              ),
            ),
          ].withSpaceBetween(height: 8),
        ),
      ),
    );
  }
}
