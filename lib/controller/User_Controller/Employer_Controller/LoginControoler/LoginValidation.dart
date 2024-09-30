// ignore_for_file: non_constant_identifier_names, file_names, camel_case_types, avoid_print, prefer_const_constructors, annotate_overrides

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:hirexpert/controller/API_Controller/Candidate/Collction/Login/login_API_controller.dart';
import 'package:hirexpert/view/utils/app_String.dart';
import 'package:hirexpert/view/utils/app_constance.dart';
import 'package:hirexpert/view/utils/app_loder.dart';
import 'package:hirexpert/view/utils/buttom/Company/Company_buttom.dart';

class Employer_LoginValidation with ChangeNotifier {
  final OptionApiController login = Get.put(OptionApiController());
  final auth = FirebaseAuth.instance;

  TextEditingController Email_controller = TextEditingController();
  TextEditingController Password_controller = TextEditingController();

  bool _Email_value = false;
  bool _password_value = false;

  String _throwEmailnameError = "";
  String _throwPasswordError = "";

  get Email_value => _Email_value;
  get password_value => _password_value;
  get throwEmailnameError => _throwEmailnameError;
  get throwPasswordError => _throwPasswordError;

  void Email_validation(value) {
    if (Email_controller.text.isEmpty) {
      _Email_value = true;
      _throwEmailnameError = Validation_Error.Email;
    }
    else if (Email_controller.text.length < 6) {
      _Email_value = true;
      _throwEmailnameError = Validation_Error.Email_less;
    }
    else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(Email_controller.text)) {
      _Email_value = true;
      _throwEmailnameError = Validation_Error.V_Email;
    }
    else {
      _Email_value = false;
      _throwEmailnameError = '';
    }
    notifyListeners();
  }

  void Password_validation(value) {
    if (Password_controller.text.isEmpty) {
      _password_value = true;
      _throwPasswordError = Validation_Error.password;
    }
    else if (Password_controller.text.length < 8) {
      _password_value = true;
      _throwPasswordError = Validation_Error.characters;
    }
    else if (!RegExp(r'[A-Z]').hasMatch(Password_controller.text)) {
      _password_value = true;
      _throwPasswordError = Validation_Error.uppercase;
    }
    else if (!RegExp(r'[a-z]').hasMatch(Password_controller.text)) {
      _password_value = true;
      _throwPasswordError = Validation_Error.lowercase;
    }
    else if (!RegExp(r'[0-9]').hasMatch(Password_controller.text)) {
      _password_value = true;
      _throwPasswordError = Validation_Error.digit;
    }
    else if (!RegExp(r'[!@#\$%\^&\*(),.?":{}|<>]').hasMatch(Password_controller.text)) {
      _password_value = true;
      _throwPasswordError = Validation_Error.special;
    }
    else {
      _password_value = false;
      _throwPasswordError = "";
    }
    notifyListeners();
  }

  void Loginvalidation() {
    if (Email_controller.text.isEmpty) {
      _Email_value = true;
      _throwEmailnameError = Validation_Error.Email;
    }
    else if (Email_controller.text.length < 6) {
      _Email_value = true;
      _throwEmailnameError = Validation_Error.Email_less;
    }
    else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(Email_controller.text)) {
      _Email_value = true;
      _throwEmailnameError = Validation_Error.V_Email;
    }
    else {
      _Email_value = false;
      _throwEmailnameError = '';
    }

    if (Password_controller.text.isEmpty) {
      _password_value = true;
      _throwPasswordError = Validation_Error.password;
    }
    else if (Password_controller.text.length < 8) {
      _password_value = true;
      _throwPasswordError = Validation_Error.characters;
    }
    else if (!RegExp(r'[A-Z]').hasMatch(Password_controller.text)) {
      _password_value = true;
      _throwPasswordError = Validation_Error.uppercase;
    }
    else if (!RegExp(r'[a-z]').hasMatch(Password_controller.text)) {
      _password_value = true;
      _throwPasswordError = Validation_Error.lowercase;
    }
    else if (!RegExp(r'[0-9]').hasMatch(Password_controller.text)) {
      _password_value = true;
      _throwPasswordError = Validation_Error.digit;
    }
    else if (!RegExp(r'[!@#\$%\^&\*(),.?":{}|<>]').hasMatch(Password_controller.text)) {
      _password_value = true;
      _throwPasswordError = Validation_Error.special;
    }
    else {
      _password_value = false;
      _throwPasswordError = "";
    }

    Loginvalidation_successfully();
    notifyListeners();
  }

  void Loginvalidation_successfully() async {
    if (!_Email_value && !_password_value) {
      try {
        // await auth.signInWithEmailAndPassword(
        //   email: Email_controller.text,
        //   password: Password_controller.text,
        // );

        if (Email_controller.text == Email && Password_controller.text == Password) {
          print("Successful");
          pref!.setBool('Login', true);
          islogin = pref!.getBool('Login')!;
        }

        Get.dialog(
          Center(child: Image.asset(AppLoder.infinityloder_without_background)),
          barrierDismissible: false,
        );

        await login.OptionApiController_fuction(
          UserType: 'Company',
          Email: Email_controller.text,
          Password: Password_controller.text,
          Tokan: Tokans,
          CandidateId: Candidate,
        );

        Get.back();

        if (login.option_data['status'] == true) {
          Get.to(() => Company_button(),duration: Duration(seconds: 1), transition: Transition.circularReveal);
        } else {
          Get.showSnackbar(
            GetSnackBar(
              duration: Duration(seconds: 2),
              message: login.option_data['message'] ?? 'An error occurred',
            ),
          );
        }
      } on FirebaseAuthException catch (e) {
        Get.showSnackbar(
          GetSnackBar(
            duration: Duration(seconds: 2),
            message: 'Authentication failed: ${e.message}',
          ),
        );
      }
    }
    notifyListeners();
  }
}