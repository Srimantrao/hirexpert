// ignore_for_file: non_constant_identifier_names, camel_case_types

import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../controller/User_Controller/Candidate_Controller/LoginControoler/LoginValidation.dart';

//Save Login & Password !
SharedPreferences? pref;

String Frist_name = "";
String Last_name = "";
String Email = "khushraajsoni@gmail.com";
String Phone = "";
String Password = "Ilove@2015";
String Comfarm_password = "";

bool islogin = false;

class Password_main {
  static TextEditingController Pass =
      Candidate_LoginValidation.PasswordController = TextEditingController();
}
