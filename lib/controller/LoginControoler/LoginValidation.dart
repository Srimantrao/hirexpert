// ignore_for_file: non_constant_identifier_names, file_names

import 'package:flutter/cupertino.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:hirexpert/view/utils/app_String.dart';
import 'package:hirexpert/view/utils/buttom/b_navigation.dart';

class LoginValidation with ChangeNotifier {
  TextEditingController EmailController = TextEditingController();
  TextEditingController PasswordController = TextEditingController();

  bool _isError = false;
  String _throwErrorEmail = "";
  String _throwErrorPassword = "";

  get isError => _isError;

  get throwErrorEmail => _throwErrorEmail;

  get throwErrorPassword => _throwErrorPassword;
  
  void loginvalidation() {
    if (EmailController.text.isNotEmpty &&
        PasswordController.text.isNotEmpty &&
        !isError) {
      _isError = false;
      _throwErrorEmail = "";
      //Navigat to Menu Screen's
      Get.to(() => const Bottam());
    } else {
      _isError = true;
      _throwErrorEmail = Error_String.Error_Email;
      _throwErrorPassword = Error_String.Error_Password;
    }
    notifyListeners();
  }

  void Emailvali(String emailvalue) {
    if (emailvalue.length < 7) {
      _isError = true;
      _throwErrorEmail = Error_String.valid_Email;
    } else if (!emailvalue.contains("@Gmail.com")) {
      _isError = true;
      _throwErrorEmail = Error_String.Gmail;
    } else {
      _isError = false;
      _throwErrorEmail = "";
    }
    notifyListeners();
  }

  void passwordvali(String passwordvalue) {
    if (passwordvalue.length < 7) {
      _isError = true;
      _throwErrorPassword = Error_String.valid_password;
    } else if (!passwordvalue.contains("@")) {
      _isError = true;
      _throwErrorPassword = Error_String.add;
    } else if (!passwordvalue.contains("A")) {
      _isError = true;
      _throwErrorPassword = Error_String.cpp;
    } else if (!passwordvalue.contains("5")) {
      _isError = true;
      _throwErrorPassword = Error_String.nume;
    } else {
      _isError = false;
      _throwErrorPassword = "";
    }
    notifyListeners();
  }
}
