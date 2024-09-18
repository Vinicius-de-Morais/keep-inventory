import 'package:flutter/material.dart';

// https://stackoverflow.com/a/70993832
// Colocar gap entre listas renderizadas
extension ListSpaceBetweenExtension on List<Widget> {
  List<Widget> withSpaceBetween({double? width, double? height}) => [
        for (int i = 0; i < length; i++) ...[
          if (i > 0) SizedBox(width: width, height: height),
          this[i],
        ],
      ];
}
