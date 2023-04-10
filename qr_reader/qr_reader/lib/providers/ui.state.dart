import 'package:flutter/material.dart';

class Uiprovider extends ChangeNotifier {
  int _selectedMenuOption = 1;

  int get selectedMenuOpt {
    return _selectedMenuOption;
  }

  set selectedMenuOpt(int i) {
    _selectedMenuOption = i;
    notifyListeners();
  }
}
