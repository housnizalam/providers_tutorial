import 'package:flutter/material.dart';

/* 
Die Change Notifier Klasse soll extend oder With ChangeNotifier sein
am Ende je Methode muss  notifyListeners(); geschrieben werden sonst aktualisirt sich
Seite nicht.
*/ 
class ModelChangeNotifier1 with ChangeNotifier {
 final String _providerName = 'ModelChangeNotifier1';
  int _count = 0;
  Color _plusColor = Colors.grey;
  Color _minusColor = Colors.grey;
  addOne() {
    _count++;
    _plusColor = Colors.blue;
    _minusColor = Colors.grey;
    notifyListeners();
    print(count);
  }

  minusOne() {
    _count--;
    _plusColor = Colors.grey;
    _minusColor = Colors.red;
    notifyListeners();
    print(count);
  }

  printName() {
    print(_providerName);
  }

  String get count => _count.toString();
  Color get plusColor => _plusColor;
  Color get minusColor => _minusColor;
}
// mehrere Klassen um multi Provider zu testen
 class ModelChangeNotifier2 with ChangeNotifier{
  final  String _providerName = 'ModelChangeNotifier2';
      printName() {
    print(_providerName);
  }
 }
 class ModelChangeNotifier3 with ChangeNotifier{
  final  String _providerName = 'ModelChangeNotifier3';
      printName() {
    print(_providerName);
  }
 }