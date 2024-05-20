// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../view/utils/app_String.dart';


class PreferenceController with ChangeNotifier {
  String _select = "";
  bool _isselect = true;

  get select => _select;
  get isselect => _isselect;

  void isselect_true() {
    _isselect = true;
    notifyListeners();
  }

  void isselect_false() {
    _isselect = false;
    notifyListeners();
  }

  void Select(String type) {
    _isselect = false;
    _select = type;
    Get.back();
    notifyListeners();
  }
}

class SetupController with ChangeNotifier{
  String _select = "";
  bool _isselect = true;
  bool _isnext = false;

  get isnext => _isnext;
  get select => _select;
  get isselect => _isselect;

  void isselect_true() {
    _isselect = true;
    notifyListeners();
  }

  void isselect_false() {
    _isselect = false;
    notifyListeners();
  }

  void isnext_fun(){
    _isnext = true;
    notifyListeners();
  }

  void Select(String type) {
    _isselect = false;
    _select = type;
    Get.back();
    notifyListeners();
  }
}