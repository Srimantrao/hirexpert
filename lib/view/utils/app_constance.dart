// ignore_for_file: non_constant_identifier_names, camel_case_types

import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../controller/User_Controller/Candidate_Controller/LoginControoler/LoginValidation.dart';

//Save Login & Password !
SharedPreferences? pref;

String Frist_name = "";
String Last_name = "";
String Email = "";
String Phone = "";
String Password = "";
String Comfarm_password = "";
String username = '';
String Candidate = '';
String Tokan = '';
bool islogin = false;

class Password_main {
  static TextEditingController Pass = Candidate_LoginValidation.password_controller = TextEditingController();
}
