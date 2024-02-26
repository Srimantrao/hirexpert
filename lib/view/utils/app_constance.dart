// ignore_for_file: non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

//Save Login & Password !
SharedPreferences? pref;

String Frist_name = "";
String Last_name = "";
String Email = "";
String Phone = "";
String Password = "";
String Comfarm_password = "";

bool islogin = false;