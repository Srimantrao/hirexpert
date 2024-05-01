// ignore_for_file: camel_case_types, file_names, non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../view/utils/app_String.dart';




class Education_Controller with ChangeNotifier {
  bool _shodrop = false;
  int _Realvalue = 0;
  String _showvalue = "";

  bool get shodrop => _shodrop;

  int get Realvalue => _Realvalue;

  String get showvalue => _showvalue;

  void Poppup_true() {
    _shodrop = true;
    notifyListeners();
  }

  void Poppup_false() {
    Get.back();
    _shodrop = false;
    notifyListeners();
  }

  void Education_one() {
    _shodrop = false;
    _Realvalue = 1;
    _showvalue = Specialization_text.BCA;
    Get.back();
    notifyListeners();
  }

  void Education_two() {
    _shodrop = false;
    _Realvalue = 2;
    _showvalue = Specialization_text.BBA;
    Get.back();
    notifyListeners();
  }
}

class JobTitle_Controller with ChangeNotifier {
  TextEditingController JobTitalController = TextEditingController();
  bool _SelectIndex = false;
  bool _showErroing = false;
  String _showError = "";

  bool get SelectIndex => _SelectIndex;

  bool get showErroring => _showErroing;

  String get showError => _showError;

  void Selectindex_true() {
    _SelectIndex = true;
    notifyListeners();
  }

  void Selectindex_false() {
    _SelectIndex = false;
    notifyListeners();
  }

  void EmptyError() {
    if (JobTitalController.text.isEmpty) {
      _showErroing = true;
      _showError = Specialization_text.Error_text;
    } else {
      _showErroing = false;
    }
    notifyListeners();
  }

  void JobOnChang(String value) {
    if (value.length > 2) {
      _SelectIndex = true;
    } else {
      _SelectIndex = false;
      _showError = "";
    }
    notifyListeners();
  }
}
