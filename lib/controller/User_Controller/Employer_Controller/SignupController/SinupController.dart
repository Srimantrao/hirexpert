// ignore_for_file: file_names, non_constant_identifier_names, camel_case_types, prefer_const_constructors, avoid_print

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:hirexpert/view/utils/app_String.dart';
import 'package:hirexpert/view/utils/app_constance.dart';
import '../../../API_Controller/Employer/Collction/Sinup/employer_API_Sinup_controller.dart';

class Employer_SinupController with ChangeNotifier {
  final auth = FirebaseAuth.instance;
  final EmployerApiSinupController Sinup_API = Get.put(EmployerApiSinupController());

  TextEditingController frist_name_controller = TextEditingController();
  TextEditingController Company_name_controller = TextEditingController();
  TextEditingController About_Company_controller = TextEditingController();
  TextEditingController last_name_controller = TextEditingController();
  TextEditingController email_controller = TextEditingController();
  TextEditingController phone_controller = TextEditingController();
  TextEditingController password_controller = TextEditingController();
  TextEditingController confirm_password_controller = TextEditingController();

  bool _Company_Name_value = false;
  bool _Frist_name_value = false;
  bool _Last_name_value = false;
  bool _Email_value = false;
  bool _phone_value = false;
  bool _password_value = false;
  bool _confirm_password = false;

  String _throwCompanyNameError = "";
  String _throwFirstnameError = "";
  String _throwLastnameError = "";
  String _throwEmailnameError = "";
  String _throwPhoneNumberError = "";
  String _throwPasswordError = "";
  String _throwConfirmPasswordError = "";

  get Frist_name_value => _Frist_name_value;
  get Company_Name_value => _Company_Name_value;
  get throwCompanyNameError => _throwCompanyNameError;
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
  //Confirm_Password
   void Confirm_Password_validation(value) {
    if (Company_name_controller.text.isEmpty) {
      _Company_Name_value = true;
      _throwCompanyNameError = Validation_Error.CompanyName;
    } else if (!RegExp(r'^[a-zA-Z]+$').hasMatch(Company_name_controller.text)) {
      _Company_Name_value = true;
      _throwCompanyNameError = Validation_Error.V_CompanyName;
    } else {
      _Company_Name_value = false;
      _throwCompanyNameError = '';
    }
    notifyListeners();
  }


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
    } else if (phone_controller.text.length > 9 && phone_controller.text.length < 10) {
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

     //Company Name
    if (Company_name_controller.text.isEmpty) {
      _Company_Name_value = true;
      _throwCompanyNameError = Validation_Error.CompanyName;
    } else if (!RegExp(r'^[a-zA-Z]+$').hasMatch(Company_name_controller.text)) {
      _Company_Name_value = true;
      _throwCompanyNameError = Validation_Error.V_CompanyName;
    } else {
      _Company_Name_value = false;
      _throwCompanyNameError = '';
    }

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
    } else if (phone_controller.text.length > 9 && phone_controller.text.length < 10) {
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

        pref!.setString('FristName', frist_name_controller.text);
        pref!.setString('LastName', last_name_controller.text);
        pref!.setString('Email', email_controller.text);
        pref!.setString('Phone', phone_controller.text);
        pref!.setString('Password', password_controller.text);

        Frist_name = pref!.getString('FristName')!;
        Last_name = pref!.getString('LastName')!;
        Email = pref!.getString('Email')!;
        Phone = pref!.getString('Phone')!;
        Password = pref!.getString('Password')!;

        print("FristName :- $Frist_name");
        print("LastName :- $Last_name");
        print("Email :- $Email");
        print("Phone :- $Phone");
        print("Password :- $Password");

        Sinup_API.EmployerApiSinupController_Fuction(
          FirstName: frist_name_controller.text,
          LastName: last_name_controller.text,
          Email: email_controller.text,
          Password: password_controller.text,
          ComName: Company_name_controller.text,
        ).then(
          (value) {
            if (Sinup_API.Employer_Sinup['status'] == true) {
              // Get.to(
              //   () => Candidate_Specialization(
              //     first_name: frist_name_controller.text,
              //     last_name: last_name_controller.text,
              //   ),
              // );
            }
            String message = Sinup_API.Employer_Sinup['message'] ?? "Unknown error occurred";
            Get.showSnackbar(
              // ignore: deprecated_member_use
              GetBar(
                duration: Duration(seconds: 2),
                message: message,
              ),
            );
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
        String message = Sinup_API.Employer_Sinup['message'] ?? "Firebase error occurred: ${e.message}";
        Get.showSnackbar(
          // ignore: deprecated_member_use
          GetBar(
            duration: Duration(seconds: 2),
            message: message,
          ),
        );
      }
    }
    notifyListeners();
  }
}

