// ignore_for_file: non_constant_identifier_names, file_names, camel_case_types

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:hirexpert/view/utils/app_String.dart';
import 'package:hirexpert/view/utils/app_constance.dart';
import 'package:hirexpert/view/utils/buttom/Candidate/candidate_buttom.dart';

import '../../../API_Cobtroller/Candidate/Collction/Login/login_API_controller.dart';

class Candidate_LoginValidation with ChangeNotifier {
  OptionApiController login = Get.put(OptionApiController());

  TextEditingController EmailController = TextEditingController();
  TextEditingController PasswordController = TextEditingController();

  bool _isError_Email = false;
  bool _isError_Password = false;
  String _throwErrorEmail = "";
  String _throwErrorPassword = "";

  get isError_Email => _isError_Email;

  get isError_Password => _isError_Password;

  get throwErrorEmail => _throwErrorEmail;

  get throwErrorPassword => _throwErrorPassword;

  void isEmtey() {
    //Email
    if (EmailController.text.isEmpty) {
      _isError_Email = true;
      _throwErrorEmail = Error_String.Error_Email;
    } else if (EmailController.text.length < 7) {
      _isError_Email = true;
      _throwErrorEmail = Error_String.valid_Email;
    } else if (!EmailController.text.contains("@Gmail.com")) {
      _isError_Email = true;
      _throwErrorEmail = Error_String.Gmail;
    } else {
      _isError_Email = false;
      _throwErrorEmail = "";
    }

    //Passsword
    if (PasswordController.text.isEmpty) {
      _isError_Password = true;
      _throwErrorPassword = Error_String.Error_Password;
    } else if (!PasswordController.text.contains("@")) {
      _isError_Password = true;
      _throwErrorPassword = Error_String.add;
    } else {
      _isError_Password = false;
      _throwErrorPassword = "";
    }
    notifyListeners();
  }

  void loginvalidation() {
    if (EmailController.text == Email && PasswordController.text == Password) {
      if (EmailController.text.isNotEmpty &&
          PasswordController.text.isNotEmpty &&
          !_isError_Email) {
        _isError_Email = false;
        _throwErrorEmail = "";

        pref!.setBool("login", true);
        islogin = pref!.getBool("login")!;

        //Navigation
      } else if (EmailController.text.isEmpty) {
        _isError_Email = true;
        _throwErrorEmail = Error_String.Error_Email;
      } else if (EmailController.text.length < 7) {
        _isError_Email = true;
        _throwErrorEmail = Error_String.valid_Email;
      } else if (!EmailController.text.contains("@Gmail.com")) {
        _isError_Email = true;
        _throwErrorEmail = Error_String.Gmail;
      } else if (PasswordController.text.length < 7) {
        _isError_Password = true;
        _throwErrorPassword = Error_String.valid_password;
      } else if (!PasswordController.text.contains("@")) {
        _isError_Password = true;
        _throwErrorPassword = Error_String.add;
      } else if (!PasswordController.text.contains("A")) {
        _isError_Password = true;
        _throwErrorPassword = Error_String.cpp;
      } else if (!PasswordController.text.contains("5")) {
        _isError_Password = true;
        _throwErrorPassword = Error_String.nume;
      } else {
        _isError_Password = true;
        _throwErrorEmail = Error_String.Error_Email;
        _throwErrorPassword = Error_String.Error_Password;
      }
    } else {
      _isError_Password = false;
      _isError_Email = false;
      _throwErrorEmail = "";
      _throwErrorPassword = "";
      notifyListeners();
    }
    notifyListeners();
  }

  void Emailvali(String emailvalue) {
    if (emailvalue.length < 7) {
      _isError_Email = true;
      _throwErrorEmail = Error_String.valid_Email;
    } else if (!emailvalue.contains("@Gmail.com")) {
      _isError_Email = true;
      _throwErrorEmail = Error_String.Gmail;
    } else {
      _isError_Email = false;
      _throwErrorEmail = "";
    }
    notifyListeners();
  }

  void passwordvali(String passwordvalue) {
    if (passwordvalue.length < 7) {
      _isError_Password = true;
      _throwErrorPassword = Error_String.valid_password;
    } else if (!passwordvalue.contains("@")) {
      _isError_Password = true;
      _throwErrorPassword = Error_String.add;
    } else {
      _isError_Password = false;
      _throwErrorPassword = "";
    }
    notifyListeners();
  }
}
