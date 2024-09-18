import 'package:flutter/material.dart';

class AccountButton extends StatelessWidget {
  final String title;
  final String? description;
  final VoidCallback onTap;
  final Icon icon;

  const AccountButton({
    super.key,
    required this.title,
    this.description,
    required this.onTap,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () {
          print("porra");
        },
        child: Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(title),
                      if (description != null) Text(description!),
                    ],
                  ),
                ),
                icon
              ],
            )),
      ),
    ); // MaterialApp
  }
}
