// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';

import '../../../../view/utils/app_String.dart';


class DropdownController with ChangeNotifier {
  String _dropdownvalue = DropDownMenu_String.Gujarat;
  String _dropdownvaluesecond = DropDownMenu_String.all;

  get dropdownvalue => _dropdownvalue;

  get dropdownvaluesecond => _dropdownvaluesecond;

  void Changedopdown_fun(value) {
    _dropdownvalue = value;
    notifyListeners();
  }

  void Changedopdown_second(value) {
    _dropdownvaluesecond = value;
    notifyListeners();
  }
}
