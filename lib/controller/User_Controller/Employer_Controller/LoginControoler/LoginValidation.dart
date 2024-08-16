// ignore_for_file: non_constant_identifier_names, file_names, camel_case_types

import 'package:flutter/cupertino.dart';
import 'package:hirexpert/view/utils/app_String.dart';
import 'package:hirexpert/view/utils/app_constance.dart';

class Employer_LoginValidation with ChangeNotifier {
  TextEditingController EmailController = TextEditingController();
  TextEditingController PasswordController = TextEditingController();

  bool _isError = false;
  String _throwErrorEmail = "";
  String _throwErrorPassword = "";

  get isError => _isError;

  get throwErrorEmail => _throwErrorEmail;

  get throwErrorPassword => _throwErrorPassword;

  void isEmtey() {
    if (EmailController.text.isEmpty && PasswordController.text.isEmpty) {
      _isError = true;
      _throwErrorEmail = Error_String.Error_Email;
      _throwErrorPassword = Error_String.Error_Password;
    }
  }

  void loginvalidation() {
    if (EmailController.text == Email && PasswordController.text == Password) {
      if (EmailController.text.isNotEmpty &&
          PasswordController.text.isNotEmpty &&
          !isError) {
        _isError = false;
        _throwErrorEmail = "";

        pref!.setBool("login", true);
        islogin = pref!.getBool("login")!;

        //Navigation

      } else if (EmailController.text.isEmpty) {
        _isError = true;
        _throwErrorEmail = Error_String.Error_Email;
      } else if (EmailController.text.length < 7) {
        _isError = true;
        _throwErrorEmail = Error_String.valid_Email;
      } else if (!EmailController.text.contains("@Gmail.com")) {
        _isError = true;
        _throwErrorEmail = Error_String.Gmail;
      } else if (PasswordController.text.length < 7) {
        _isError = true;
        _throwErrorPassword = Error_String.valid_password;
      } else if (!PasswordController.text.contains("@")) {
        _isError = true;
        _throwErrorPassword = Error_String.add;
      } else if (!PasswordController.text.contains("A")) {
        _isError = true;
        _throwErrorPassword = Error_String.cpp;
      } else if (!PasswordController.text.contains("5")) {
        _isError = true;
        _throwErrorPassword = Error_String.nume;
      } else {
        _isError = true;
        _throwErrorEmail = Error_String.Error_Email;
        _throwErrorPassword = Error_String.Error_Password;
      }
    } else {
      _isError = false;
      _throwErrorEmail = "";
      // Get.to(() => const Candidate_Bottam());
      notifyListeners();
    }
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
