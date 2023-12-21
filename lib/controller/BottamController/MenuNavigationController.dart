// ignore_for_file: non_constant_identifier_names, file_names

import 'package:flutter/cupertino.dart';
import 'package:hirexpert/view/screen/Menu/Search/Search.dart';

import '../../view/screen/Menu/Home/Home.dart';
import '../../view/screen/saving/saved.dart';

class MenuNavigationController with ChangeNotifier {
  int _selectindex = 0;

  final List<Widget> _item = [
    const Home(),
    const Search(),
  ];

  Widget Selectitem(int index) {
    return _item[index];
  }

  get Selectindex => _selectindex;

  List<Widget> get item => _item;

  void SelectIndex_one() {
    _selectindex = 0;
    notifyListeners();
  }

  void SelectIndex_two() {
    _selectindex = 1;
    notifyListeners();
  }
}
