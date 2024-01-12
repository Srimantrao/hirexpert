// ignore_for_file: non_constant_identifier_names, file_names, camel_case_types

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../view/utils/app_String.dart';

class SpecializationController_popup with ChangeNotifier {
  int _SelectIndex = 0;
  String _throwdrop = "";
  bool _showdrop = false;

  int get SelectIndex => _SelectIndex;

  String get throwdrop => _throwdrop;

  bool get showdrop => _showdrop;

  void Showingdrop() {
    _showdrop = true;
    notifyListeners();
  }

  //Function Area
  void Function_SelectOne() {
    _SelectIndex = 1;
    _throwdrop = Specialization_text.Accounts_Finance;
    _showdrop = false;
    Get.back();
    notifyListeners();
  }

  void Function_SelectTwo() {
    _SelectIndex = 2;
    _throwdrop = Specialization_text.Bpo;
    _showdrop = false;
    Get.back();
    notifyListeners();
  }

  void Function_SelectThrre() {
    _SelectIndex = 3;
    _throwdrop = Specialization_text.Database_Engineer;
    _showdrop = false;
    Get.back();
    notifyListeners();
  }

  void Function_SelectFouth() {
    _SelectIndex = 4;
    _throwdrop = Specialization_text.Designing_UIUX;
    _showdrop = false;
    Get.back();
    notifyListeners();
  }

  void Function_SelectFifth() {
    _SelectIndex = 5;
    _throwdrop = Specialization_text.Devops_Engineering;
    _showdrop = false;
    Get.back();
    notifyListeners();
  }

  void Function_SelectSixth() {
    _SelectIndex = 6;
    _throwdrop = Specialization_text.ReactNative_Devloper;
    _showdrop = false;
    Get.back();
    notifyListeners();
  }

  void Function_SelectSeven() {
    _SelectIndex = 7;
    _throwdrop = Specialization_text.Flutter_Devloper;
    _showdrop = false;
    Get.back();
    notifyListeners();
  }

  void Function_SelectEigth() {
    _SelectIndex = 8;
    _throwdrop = Specialization_text.Collection;
    _showdrop = false;
    Get.back();
    notifyListeners();
  }

  void Function_Selectnigth() {
    _SelectIndex = 9;
    _throwdrop = Specialization_text.Content;
    _showdrop = false;
    Get.back();
    notifyListeners();
  }

  void Function_SelectThen() {
    _SelectIndex = 10;
    _throwdrop = Specialization_text.Web_Devloper;
    _showdrop = false;
    Get.back();
    notifyListeners();
  }
}

class SpecializationController_Interest with ChangeNotifier {
  int _SelectIndex = 0;
  String _throwdrop = "";
  bool _showdrop = false;

  int get SelectIndex => _SelectIndex;

  String get throwdrop => _throwdrop;

  bool get showdrop => _showdrop;

  void Showingdrop() {
    _showdrop = true;
    notifyListeners();
  }

  //Primary Skillset
  void Skillset_Selectone() {
    _SelectIndex = 1;
    _throwdrop = Specialization_text.Frontend;
    _showdrop = false;
    Get.back();
    notifyListeners();
  }

  void Skillset_Secondone() {
    _SelectIndex = 2;
    _throwdrop = Specialization_text.Backend;
    _showdrop = false;
    Get.back();
    notifyListeners();
  }

  void Skillset_Thrdone() {
    _SelectIndex = 3;
    _throwdrop = Specialization_text.Software;
    _showdrop = false;
    Get.back();
    notifyListeners();
  }

  void Skillset_Fouth() {
    _SelectIndex = 4;
    _throwdrop = Specialization_text.eCommerce;
    _showdrop = false;
    Get.back();
    notifyListeners();
  }
}

class SpecializationController_Skillset with ChangeNotifier {
  int _SelectIndex = 0;
  String _throwdrop = "";
  bool _showdrop = false;

  int get SelectIndex => _SelectIndex;

  String get throwdrop => _throwdrop;

  bool get showdrop => _showdrop;

  void Showingdrop() {
    _showdrop = true;
    notifyListeners();
  }

  //Primary Skillset
  void SkillsetSecond_Selectone() {
    _SelectIndex = 1;
    _throwdrop = Specialization_text.Angular_TS;
    _showdrop = false;
    Get.back();
    notifyListeners();
  }

  void SkillsetSecond_Secondone() {
    _SelectIndex = 2;
    _throwdrop = Specialization_text.Angular;
    _showdrop = false;
    Get.back();
    notifyListeners();
  }

  void SkillsetSecond_Thrdone() {
    _SelectIndex = 3;
    _throwdrop = Specialization_text.Bootstrap;
    _showdrop = false;
    Get.back();
    notifyListeners();
  }

  void SkillsetSecond_Fouth() {
    _SelectIndex = 4;
    _throwdrop = Specialization_text.JQuery;
    _showdrop = false;
    Get.back();
    notifyListeners();
  }

  void SkillsetSecond_Fifth() {
    _SelectIndex = 4;
    _throwdrop = Specialization_text.Designing_UIUX;
    _showdrop = false;
    Get.back();
    notifyListeners();
  }

  void SkillsetSecond_Sixth() {
    _SelectIndex = 4;
    _throwdrop = Specialization_text.Bpo;
    _showdrop = false;
    Get.back();
    notifyListeners();
  }
}
