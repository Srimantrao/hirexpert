// ignore_for_file: non_constant_identifier_names, file_names

import 'package:flutter/cupertino.dart';

import '../../view/screen/Menu/Home/Home.dart';

class MenuNavigationController with ChangeNotifier {
  final int _selectindex = 0;

  final List _item = [
    const Home(),
  ];

  Widget Selectitem(int index) {
    return _item[index];
  }

  int get Selectindex => _selectindex;

  List get item => _item;

  void SelectIndex_Zero() {
    _selectindex == 0;
    notifyListeners();
  }

  void SelectIndex_One() {
    _selectindex == 1;
    notifyListeners();
  }

  void SelectIndex_two() {
    _selectindex == 2;
    notifyListeners();
  }

  void SelectIndex_three() {
    _selectindex == 2;
    notifyListeners();
  }
}
