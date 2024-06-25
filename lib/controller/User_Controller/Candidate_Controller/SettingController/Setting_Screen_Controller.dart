// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';

class SettingScreenController extends ChangeNotifier {
  bool _issues = false;
  bool _Suggestions = false;
  bool _manageAccount = false;

  get issues => _issues;

  get Suggestions => _Suggestions;

  get manageAccount => _manageAccount;

  void Issues_Fuction(val) {
    _issues = val!;
    notifyListeners();
  }

  void Suggestions_Fuction(val) {
    _Suggestions = val!;
    notifyListeners();
  }

  void manageAccount_Fuction(val) {
    _manageAccount = val!;
    notifyListeners();
  }
}
