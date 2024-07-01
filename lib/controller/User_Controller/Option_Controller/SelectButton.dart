// ignore_for_file: non_constant_identifier_names, file_names

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:hirexpert/view/screen/Employer/collection/login.dart';
import 'package:hirexpert/view/utils/app_String.dart';

import '../../../view/screen/Candidate/collection/login.dart';

class SelectButtonsController with ChangeNotifier {
  bool _SelectButton = true;
  bool _SelectButtonSecond = true;

  bool Error = false;
  String ShowError = "";

  bool get SelectButton => _SelectButton;

  bool get SelectButtonSecond => _SelectButtonSecond;

  void Select() {
    _SelectButton = !_SelectButton;
    if (!_SelectButtonSecond) {
      Error = true;
      ShowError = Error_String.sorry;
    } else {
      Get.to(() =>  Employer_Login());
    }
    if (!_SelectButton && !_SelectButtonSecond) {
      Error = true;
      ShowError = Error_String.both;
    } else {
      Error = false;
      ShowError = "";
    }
    notifyListeners();
  }

  void SelectSecond() {
    _SelectButtonSecond = !_SelectButtonSecond;
    if (!_SelectButton) {
      Error = true;
      ShowError = Error_String.both;
    } else {
      Get.to(() => Candidate_Login());
    }
    if (!_SelectButton && !_SelectButtonSecond) {
      Error = true;
      ShowError = Error_String.both;
    } else {
      Error = false;
      ShowError = "";
    }
    notifyListeners();
  }
}
