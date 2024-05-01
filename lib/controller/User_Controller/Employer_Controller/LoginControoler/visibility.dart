// ignore_for_file: file_names

import 'package:flutter/material.dart';

// ignore: camel_case_types
class Employer_VisibilityController with ChangeNotifier {
  bool _isVis = true;
  bool _isviscnf = true;
  bool _isobscr = true;

  get isVis => _isVis;
  get isviscnf=> _isviscnf;

  get isobscr => _isobscr;

  void visibilityVis() {
    _isVis = !_isVis;
    _isobscr = !_isobscr;
    notifyListeners();
  }

  void visibilitycnf(){
    _isviscnf =! _isviscnf;
    _isobscr = !_isobscr;
    notifyListeners();
  }
}
