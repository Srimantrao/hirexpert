// ignore_for_file: non_constant_identifier_names, file_names, camel_case_types

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class Specializationcontroller with ChangeNotifier {
  bool _jobdescirbe = false;
  bool _specialzation = false;
  String _jobdescirbe_String = '';
  String _specialzation_String = '';
  String _jobdescirbe_id = '';
  String _specialzation_id = '';

  bool get jobdescirbe => _jobdescirbe;
  bool get specialzation => _specialzation;
  String get jobdescirbe_String => _jobdescirbe_String;
  String get specialzation_String => _specialzation_String;
  String get jobdescirbe_id => _jobdescirbe_id;
  String get specialzation_id => _specialzation_id;

  void Specializationcontroller_fuction({required String text, required String id}) {
    _jobdescirbe = true;
    _jobdescirbe_String = text;
    _jobdescirbe_id = id;
    Get.back();
    notifyListeners();
  }

  void SpecializationController_Skillset({required String text, required String id}) {
    _specialzation = true;
    _specialzation_String = text;
    _specialzation_id = id;
    Get.back();
    notifyListeners();
  }
}
