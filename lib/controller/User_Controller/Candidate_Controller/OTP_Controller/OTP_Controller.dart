// ignore_for_file: non_constant_identifier_names, file_names

import 'package:flutter/cupertino.dart';

class OtpController with ChangeNotifier {
  TextEditingController pincodering = TextEditingController();

  bool _hasError = false;
  String _currentText = "";

  get hasError => _hasError;

  get currentText => _currentText;

  void hassError_true() {
    _hasError = true;
    notifyListeners();
  }

  void hassError_false() {
    _hasError = false;
    notifyListeners();
  }

  void currenttext_fuction(value) {
    _currentText = value;
    notifyListeners();
  }
}
