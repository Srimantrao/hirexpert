// ignore_for_file: file_names, non_constant_identifier_names, camel_case_types

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:hirexpert/view/utils/app_String.dart';
import 'package:hirexpert/view/utils/app_constance.dart';

import '../../../../view/screen/Candidate/collection/login.dart';


class Candidate_SinupController with ChangeNotifier {
  TextEditingController frist_name = TextEditingController();
  TextEditingController last_name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirm_password = TextEditingController();

  bool _isError = false;
  String _throwFirstnameError = "";
  String _throwLastnameError = "";
  String _throwEmailnameError = "";
  String _throwPhoneNumberError = "";
  String _throwPasswordError = "";
  String _throwConfirmPasswordError = "";

  get isError => _isError;

  get throwFristnameError => _throwFirstnameError;

  get throwLastnameError => _throwLastnameError;

  get throwEmailnameError => _throwEmailnameError;

  get throwPhoneNumberError => _throwPhoneNumberError;

  get throwPasswordError => _throwPasswordError;

  get throwConfirmPasswordError => _throwConfirmPasswordError;

  void SingupValidation() {
    if (frist_name.text.isEmpty &&
        last_name.text.isEmpty &&
        email.text.isEmpty &&
        phone.text.isEmpty &&
        password.text.isEmpty &&
        confirm_password.text.isEmpty) {
      _isError = true;
      _throwFirstnameError = Error_String.fristnameError;
      _throwLastnameError = Error_String.lastnameError;
      _throwEmailnameError = Error_String.emiladd;
      _throwPhoneNumberError = Error_String.phone;
      _throwPasswordError = Error_String.pass;
      _throwConfirmPasswordError = Error_String.cnfpass;
    } else {
      pref!.setString("Fristname", frist_name.text);
      pref!.setString("Lastname", last_name.text);
      pref!.setString("Email", email.text);
      pref!.setString("Phone", phone.text);
      pref!.setString("Password", password.text);
      pref!.setString("Confirm_Password", confirm_password.text);

      Frist_name = pref!.getString("Fristname")!;
      Last_name = pref!.getString("Lastname")!;
      Email = pref!.getString("Email")!;
      Phone = pref!.getString("Phone")!;
      Password = pref!.getString("Password")!;
      Comfarm_password = pref!.getString("Confirm_Password")!;

      if (kDebugMode) {
        print("Fristname :- $Frist_name");
      }
      if (kDebugMode) {
        print("Lastname :- $Last_name");
      }
      if (kDebugMode) {
        print("Email :- $Email");
      }
      if (kDebugMode) {
        print("Phone :- $Phone");
      }
      if (kDebugMode) {
        print("Password :- $Password");
      }
      if (kDebugMode) {
        print("Confirm Password :- $Comfarm_password");
      }
      Get.to(() => const Candidate_Login());
      _isError = false;
      _throwEmailnameError = "";
      _throwLastnameError = "";
      _throwEmailnameError = "";
      _throwPhoneNumberError = "";
      _throwPasswordError = "";
      _throwConfirmPasswordError = "";
    }
    notifyListeners();
  }

  void fristname_vail(String frisname) {
    if (frisname.length < 5) {
      _isError = true;
      _throwFirstnameError = "Please Input Valid name !";
    } else {
      _isError = false;
      _throwFirstnameError = "";
    }
    notifyListeners();
  }

  void lastname_vail(String lastname) {
    if (lastname.length < 3) {
      _isError = true;
      _throwLastnameError = "Please Input Valid name !";
    } else {
      _isError = false;
      _throwLastnameError = "";
    }
    notifyListeners();
  }

  void Email_vali(String emailvalue) {
    if (emailvalue.length < 7) {
      _isError = true;
      _throwEmailnameError = Error_String.valid_Email;
    } else if (!emailvalue.contains("@Gmail.com")) {
      _isError = true;
      _throwEmailnameError = Error_String.Gmail;
    } else {
      _isError = false;
      _throwEmailnameError = "";
    }
    notifyListeners();
  }

  void Phone_vail(String phones) {
    if (phones.length < 10) {
      _isError = true;
      _throwPhoneNumberError = Error_String.vaild_phone;
    } else if (phones.length == 10) {
      _isError = false;
      _throwPhoneNumberError = "";
    } else if (phones.length > 10) {
      _isError = true;
      _throwPhoneNumberError = Error_String.varify_phone;
    } else {
      _isError = false;
      _throwPhoneNumberError = "";
    }
    notifyListeners();
  }

  void password_vali(String passwordvalue) {
    if (passwordvalue.length < 7) {
      _isError = true;
      _throwPasswordError = Error_String.valid_password;
    } else if (!passwordvalue.contains("@")) {
      _isError = true;
      _throwPasswordError = Error_String.add;
    } else if (!passwordvalue.contains("A")) {
      _isError = true;
      _throwPasswordError = Error_String.cpp;
    } else if (!passwordvalue.contains("5")) {
      _isError = true;
      _throwPasswordError = Error_String.nume;
    } else {
      _isError = false;
      _throwPasswordError = "";
    }
    notifyListeners();
  }

  void confirm_password_vail(String confirm_passwordvalue) {
    if (password.text == confirm_password.text) {
      _isError = true;
      _throwConfirmPasswordError = "Password did Not Mach !";
    } else if (confirm_passwordvalue.length < 7) {
      _isError = true;
      _throwConfirmPasswordError = Error_String.valid_password;
    } else if (!confirm_passwordvalue.contains("@")) {
      _isError = true;
      _throwConfirmPasswordError = Error_String.add;
    } else if (!confirm_passwordvalue.contains("A")) {
      _isError = true;
      _throwConfirmPasswordError = Error_String.cpp;
    } else if (!confirm_passwordvalue.contains("5")) {
      _isError = true;
      _throwPasswordError = Error_String.nume;
    } else {
      _isError = false;
      _throwConfirmPasswordError = "";
    }
    notifyListeners();
  }
}
