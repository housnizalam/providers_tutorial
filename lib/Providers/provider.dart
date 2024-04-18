import 'package:flutter/material.dart';

// Normales Provider gibt doch die neue Werte abe aktualisiert es die Seite nicht
class ModelProvider  {
  int _count = 0;
  Color _plusColor = Colors.grey;
  Color _minusColor = Colors.grey;
  addOne() {
    _count++;
    _plusColor = Colors.blue;
    _minusColor = Colors.grey;
    print(count);
  }

  minusOne() {
    _count--;
    _plusColor = Colors.grey;
    _minusColor = Colors.red;
    print(count);
  }

  String get count => _count.toString();
  Color get plusColor => _plusColor;
  Color get minusColor => _minusColor;
}
