
// ignore_for_file: camel_case_types, non_constant_identifier_names, unrelated_type_equality_checks, avoid_print, prefer_const_constructors, deprecated_member_use, file_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:hirexpert/controller/API_Controller/Candidate/Collction/Sinup/sinup_API_controller.dart';
import 'package:hirexpert/view/screen/Candidate/collection/OTP_Scrren.dart';
import 'package:hirexpert/view/utils/app_String.dart';
import 'package:hirexpert/view/utils/common/Tostification/Toastification_error.dart';
import 'package:hirexpert/view/utils/common/Tostification/Toastification_success.dart';


class Candidate_SinupController with ChangeNotifier {
  final auth = FirebaseAuth.instance;
  final SinupApiController Sinup_API = Get.put(SinupApiController());

  TextEditingController frist_name_controller = TextEditingController();
  TextEditingController last_name_controller = TextEditingController();
  TextEditingController email_controller = TextEditingController();
  TextEditingController phone_controller = TextEditingController();
  TextEditingController password_controller = TextEditingController();
  TextEditingController confirm_password_controller = TextEditingController();

  bool _Frist_name_value = false;
  bool _Last_name_value = false;
  bool _Email_value = false;
  bool _phone_value = false;
  bool _password_value = false;
  bool _confirm_password = false;

  String _throwFirstnameError = "";
  String _throwLastnameError = "";
  String _throwEmailnameError = "";
  String _throwPhoneNumberError = "";
  String _throwPasswordError = "";
  String _throwConfirmPasswordError = "";

  get Frist_name_value => _Frist_name_value;
  get Last_name_value => _Last_name_value;
  get Email_value => _Email_value;
  get phone_value => _phone_value;
  get password_value => _password_value;
  get confirm_password => _confirm_password;
  get throwFristnameError => _throwFirstnameError;
  get throwLastnameError => _throwLastnameError;
  get throwEmailnameError => _throwEmailnameError;
  get throwPhoneNumberError => _throwPhoneNumberError;
  get throwPasswordError => _throwPasswordError;
  get throwConfirmPasswordError => _throwConfirmPasswordError;

  //Onchange
  //Frsit name
  void FristName_validation(value) {
    if (frist_name_controller.text.isEmpty) {
      _Frist_name_value = true;
      _throwFirstnameError = Validation_Error.FristName;
    } else if (!RegExp(r'^[a-zA-Z]+$').hasMatch(frist_name_controller.text)) {
      _Frist_name_value = true;
      _throwFirstnameError = Validation_Error.V_FristName;
    } else {
      _Frist_name_value = false;
      _throwFirstnameError = '';
    }
    notifyListeners();
  }

  //Last Name
  void LastName_validation(value) {
    if (last_name_controller.text.isEmpty) {
      _Last_name_value = true;
      _throwLastnameError = Validation_Error.LastName;
    } else if (!RegExp(r'^[a-zA-Z]+$').hasMatch(last_name_controller.text)) {
      _Last_name_value = true;
      _throwLastnameError = Validation_Error.V_LastName;
    } else {
      _Last_name_value = false;
      _throwLastnameError = '';
    }
    notifyListeners();
  }

  //Email
  void Email_validation(value) {
    if (email_controller.text.isEmpty) {
      _Email_value = true;
      _throwEmailnameError = Validation_Error.Email;
    } else if (email_controller.text.length < 6) {
      _Email_value = true;
      _throwEmailnameError = Validation_Error.Email_less;
    } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(email_controller.text)) {
      _Email_value = true;
      _throwEmailnameError = Validation_Error.V_Email;
    } else {
      _Email_value = false;
      _throwEmailnameError = '';
    }
    notifyListeners();
  }

  //Phone
  void phone_validation(value) {
    if (phone_controller.text.isEmpty) {
      _phone_value = true;
      _throwPhoneNumberError = Validation_Error.Phone;
    } else if (phone_controller.text.length != 10) {
      _phone_value = true;
      _throwPhoneNumberError = Validation_Error.phone_ditit;
    } else if (!RegExp(r'^\+?[1-9]\d{1,14}$').hasMatch(phone_controller.text)) {
      _phone_value = true;
      _throwPhoneNumberError = Validation_Error.V_phone;
    } else {
      _phone_value = false;
      _throwPhoneNumberError = '';
    }
    notifyListeners();
  }

  //Password
  void Password_validation(value) {
    if (password_controller.text.isEmpty) {
      _password_value = true;
      _throwPasswordError = Validation_Error.password;
    } else if (password_controller.text.length < 8) {
      _password_value = true;
      _throwPasswordError = Validation_Error.characters;
    } else if (!RegExp(r'[A-Z]').hasMatch(password_controller.text)) {
      _password_value = true;
      _throwPasswordError = Validation_Error.uppercase;
    } else if (!RegExp(r'[a-z]').hasMatch(password_controller.text)) {
      _password_value = true;
      _throwPasswordError = Validation_Error.lowercase;
    } else if (!RegExp(r'[0-9]').hasMatch(password_controller.text)) {
      _password_value = true;
      _throwPasswordError = Validation_Error.digit;
    } else if (!RegExp(r'[!@#\$%\^&\*(),.?":{}|<>]').hasMatch(password_controller.text)) {
      _password_value = true;
      _throwPasswordError = Validation_Error.special;
    } else {
      _password_value = false;
      _throwPasswordError = "";
    }
    notifyListeners();
  }

  //Button
  void SinupValidtion() {
    //Frist Name
    if (frist_name_controller.text.isEmpty) {
      _Frist_name_value = true;
      _throwFirstnameError = Validation_Error.FristName;
    } else if (!RegExp(r'^[a-zA-Z]+$').hasMatch(frist_name_controller.text)) {
      _Frist_name_value = true;
      _throwFirstnameError = Validation_Error.V_FristName;
    } else {
      _Frist_name_value = false;
      _throwFirstnameError = '';
    }

    //Last Name
    if (last_name_controller.text.isEmpty) {
      _Last_name_value = true;
      _throwLastnameError = Validation_Error.LastName;
    } else if (!RegExp(r'^[a-zA-Z]+$').hasMatch(last_name_controller.text)) {
      _Last_name_value = true;
      _throwLastnameError = Validation_Error.V_LastName;
    } else {
      _Last_name_value = false;
      _throwLastnameError = '';
    }

    //Email
    if (email_controller.text.isEmpty) {
      _Email_value = true;
      _throwEmailnameError = Validation_Error.Email;
    } else if (email_controller.text.length < 6) {
      _Email_value = true;
      _throwPhoneNumberError = Validation_Error.Email_less;
    } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(email_controller.text)) {
      _Email_value = true;
      _throwEmailnameError = Validation_Error.V_Email;
    } else {
      _Email_value = false;
      _throwEmailnameError = '';
    }

    //Phone
    if (phone_controller.text.isEmpty) {
      _phone_value = true;
      _throwPhoneNumberError = Validation_Error.Phone;
    } else if (phone_controller.text.length != 10) {
      _phone_value = true;
      _throwPhoneNumberError = Validation_Error.phone_ditit;
    } else if (!RegExp(r'^\+?[1-9]\d{1,14}$').hasMatch(phone_controller.text)) {
      _phone_value = true;
      _throwPhoneNumberError = Validation_Error.V_phone;
    } else {
      _phone_value = false;
      _throwPhoneNumberError = '';
    }

    //Password
    if (password_controller.text.isEmpty) {
      _password_value = true;
      _throwPasswordError = Validation_Error.password;
    } else if (password_controller.text.length < 8) {
      _password_value = true;
      _throwPasswordError = Validation_Error.characters;
    } else if (!RegExp(r'[A-Z]').hasMatch(password_controller.text)) {
      _password_value = true;
      _throwPasswordError = Validation_Error.uppercase;
    } else if (!RegExp(r'[a-z]').hasMatch(password_controller.text)) {
      _password_value = true;
      _throwPasswordError = Validation_Error.lowercase;
    } else if (!RegExp(r'[0-9]').hasMatch(password_controller.text)) {
      _password_value = true;
      _throwPasswordError = Validation_Error.digit;
    } else if (!RegExp(r'[!@#\$%\^&\*(),.?":{}|<>]').hasMatch(password_controller.text)) {
      _password_value = true;
      _throwPasswordError = Validation_Error.special;
    } else {
      _password_value = false;
      _throwPasswordError = "";
    }

    //Confirm Password
    if (confirm_password_controller.text.isEmpty) {
      _confirm_password = true;
      _throwConfirmPasswordError = Validation_Error.C_password;
    } else if (confirm_password_controller.text != password_controller.text) {
      _confirm_password = true;
      _throwConfirmPasswordError = Validation_Error.Matching;
    } else {
      _confirm_password = false;
      _throwConfirmPasswordError = '';
    }

    SinupValidtion_successful();
    notifyListeners();
  }

  void SinupValidtion_successful() async {
    if (!_Frist_name_value && !_Last_name_value && !_Email_value && !_phone_value && !_password_value && !_confirm_password) {

      try {
        UserCredential userCredential = await auth.createUserWithEmailAndPassword(
          email: email_controller.text,
          password: password_controller.text,
        );

        Sinup_API.SinupApiController_faction(
          FirstName: frist_name_controller.text,
          LastName: last_name_controller.text,
          Email: email_controller.text,
          Password: password_controller.text,
          Phone: phone_controller.text,
        ).then(
          (value) {
            if (Sinup_API.Sinup_data['status'] == true) {
              ToastificationSuccess.Success(Sinup_API.Sinup_data['message'] ?? "Unknown error occurred");
              Get.to(() => OTP());
            }
            ToastificationError.Error(Sinup_API.Sinup_data['message'] ?? "Unknown error occurred");
          },
        );
        await FirebaseFirestore.instance.collection('users').doc(userCredential.user!.uid).set({
          'FristName': frist_name_controller.text,
          'LastName': last_name_controller.text,
          'Email': email_controller.text,
          'Phone': phone_controller.text,
          'Password': password_controller.text,
        });
      } on FirebaseException catch (e) {
        ToastificationError.Error(Sinup_API.Sinup_data['message'] ?? "Firebase error occurred: ${e.message}");
      }
    }
    notifyListeners();
  }
}
