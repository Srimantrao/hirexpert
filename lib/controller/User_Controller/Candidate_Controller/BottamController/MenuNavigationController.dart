// ignore_for_file: non_constant_identifier_names, file_names

import 'package:flutter/cupertino.dart';

import '../../../../view/screen/Candidate/Menu/Home/Home.dart';
import '../../../../view/screen/Candidate/Menu/Search/Search.dart';
import '../../../../view/screen/Candidate/Menu/message/Message.dart';
import '../../../../view/screen/Candidate/Menu/profile/information.dart';

class MenuNavigationController with ChangeNotifier {
  int _selectindex = 0;

  final List<Widget> _item = [
    const Home(),
    Search(),
    Profile_info(),
    const Message(),
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

  void SelectIndex_three() {
    _selectindex = 2;
    notifyListeners();
  }

  void SelectIndex_four() {
    _selectindex = 3;
    notifyListeners();
  }
}
