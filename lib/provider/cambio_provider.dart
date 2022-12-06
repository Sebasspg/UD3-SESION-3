import 'package:flutter/material.dart';

class CambioProvider extends ChangeNotifier {
  bool dato = false;
  bool dato1 = false;
  bool get isCambio => dato;

  cambiar(bool value) {
    dato = value;
    notifyListeners();
  }

  btncambiar() {
    (dato1 == false) ? (dato1 = true) : (dato1 = false);
    notifyListeners();
  }
}
