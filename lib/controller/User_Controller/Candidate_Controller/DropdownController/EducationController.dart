// ignore_for_file: camel_case_types, file_names, non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../view/utils/app_String.dart';

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

class Education_Controller with ChangeNotifier {
  bool _select_Eduction = false;
  String _Select_Eduction = '';
  int _currentIntValue = 2000;
  bool _currentValue = false;
  String _currentStringValue = '';

  get select_Eduction => _select_Eduction;
  get Select_Eduction => _Select_Eduction;
  get currentIntValue => _currentIntValue;
  get currentValue => _currentValue;
  get currentStringValue => _currentStringValue;

  void Education_level({required String text}) {
    _select_Eduction = true;
    _Select_Eduction = text;
    Get.back();
    notifyListeners();
  }

  void graduation_passing(value) {
    _currentValue = true;
    _currentIntValue = value;
    _currentStringValue = _currentIntValue.toString();
    notifyListeners();
  }
}
