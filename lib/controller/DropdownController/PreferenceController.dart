// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../view/utils/app_String.dart';

class PreferenceController with ChangeNotifier {
  bool _Perferncedrop = false;
  int _Perferenceindex = 0;
  String _Perferencestring = "";

  get Perferncedrop => _Perferncedrop;

  get Perferenceindex => _Perferenceindex;

  get Perferencestring => _Perferencestring;

  void Perferncedrop_true() {
    _Perferncedrop = true;
    notifyListeners();
  }

  void Perferncedrop_false() {
    _Perferncedrop = false;
    notifyListeners();
  }

  void Full_Time() {
    _Perferncedrop = false;
    _Perferenceindex = 1;
    _Perferencestring = Location_text.Full_Time;
    Get.back();
    notifyListeners();
  }

  void Contrct() {
    _Perferncedrop = false;
    _Perferenceindex = 2;
    _Perferencestring = Location_text.Contract;
    Get.back();
    notifyListeners();
  }

  void Internship() {
    _Perferncedrop = false;
    _Perferenceindex = 3;
    _Perferencestring = Location_text.Internship;
    Get.back();
    notifyListeners();
  }

  void Part_Time() {
    _Perferncedrop = false;
    _Perferenceindex = 4;
    _Perferencestring = Location_text.Part_Time;
    Get.back();
    notifyListeners();
  }
}

class SetupController with ChangeNotifier{

  bool _isnext = false;

  int _isindex = 0;
  bool _istrue = false;
  String _isString = "";

  get isindex => _isindex;
  get istrue => _istrue;
  get isString => _isString;
  get isnext => _isnext;

  void isnext_fun(){
    _isnext = true;
    notifyListeners();
  }

  void istrue_true(){
    _istrue = true;
    notifyListeners();
  }

  void istrue_false(){
    _istrue = false;
    notifyListeners();
  }

  void Remote_Work_fun(){
    _istrue = false;
    _isindex = 1;
    _isString = Location_text.Remote_Work;
    Get.back();
    notifyListeners();
  }

  void In_Office_fun(){
    _istrue = false;
    _isindex = 2;
    _isString = Location_text.In_Office;
    Get.back();
    notifyListeners();
  }

  void Hybrid_fun(){
    _istrue = false;
    _isindex = 3;
    _isString = Location_text.Hybrid;
    Get.back();
    notifyListeners();
  }

  void Any_fun(){
    _istrue = false;
    _isindex = 4;
    _isString = Location_text.Any;
    Get.back();
    notifyListeners();
  }
}