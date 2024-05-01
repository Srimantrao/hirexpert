// ignore_for_file: non_constant_identifier_names, file_names, camel_case_types

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../view/utils/app_String.dart';

class Candidate_SpecializationController_popup with ChangeNotifier {
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

class Candidate_SpecializationController_Interest with ChangeNotifier {
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

class Candidate_SpecializationController_Skillset with ChangeNotifier {
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

class Candidate_SpecializationController_Collection with ChangeNotifier {
  bool _visible = true;
  bool _Colloction = false;
  bool _CollcetionButtons_one = false;
  bool _CollcetionButtons_two = false;
  bool _CollcetionButtons_Three = false;
  bool _CollcetionButtons_four = false;
  bool _CollcetionButtons_six = false;
  bool _CollcetionButtons_seven = false;
  bool _CollcetionButtons_Eigth = false;
  bool _CollcetionButtons_nine = false;
  bool _CollcetionButtons_ten = false;

  bool get visible => _visible;

  bool get colloction => _Colloction;

  bool get CollcetionButtons_one => _CollcetionButtons_one;

  bool get CollcetionButtons_two => _CollcetionButtons_two;

  bool get CollcetionButtons_Three => _CollcetionButtons_Three;

  bool get CollcetionButtons_four => _CollcetionButtons_four;

  bool get CollcetionButtons_six => _CollcetionButtons_six;

  bool get CollcetionButtons_seven => _CollcetionButtons_seven;

  bool get CollcetionButtons_Eigth => _CollcetionButtons_Eigth;

  bool get CollcetionButtons_nine => _CollcetionButtons_nine;

  bool get CollcetionButtons_ten => _CollcetionButtons_ten;

  void Colloction_fun() {
    _Colloction = true;
    notifyListeners();
  }

  void Visible_fun() {
    _visible = false;
    notifyListeners();
  }

  void Visible_fun_Second() {
    _visible = true;
    notifyListeners();
  }

  void CollcetionButtons_one_fun() {
    _CollcetionButtons_one = !CollcetionButtons_one;
    notifyListeners();
  }

  void CollcetionButtons_two_fun() {
    _CollcetionButtons_two = !CollcetionButtons_two;
    notifyListeners();
  }

  void CollcetionButtons_Three_fun() {
    _CollcetionButtons_Three = !CollcetionButtons_Three;
    notifyListeners();
  }

  void CollcetionButtons_four_fun() {
    _CollcetionButtons_four = !CollcetionButtons_four;
    notifyListeners();
  }

  void CollcetionButtons_six_fun() {
    _CollcetionButtons_six = !CollcetionButtons_six;
    notifyListeners();
  }

  void CollcetionButtons_seven_fun() {
    _CollcetionButtons_seven = !CollcetionButtons_seven;
    notifyListeners();
  }

  void CollcetionButtons_Eigth_fun() {
    _CollcetionButtons_Eigth = !CollcetionButtons_Eigth;
    notifyListeners();
  }

  void CollcetionButtons_nine_fun() {
    _CollcetionButtons_nine = !CollcetionButtons_nine;
    notifyListeners();
  }

  void CollcetionButtons_ten_fun() {
    _CollcetionButtons_ten = !CollcetionButtons_ten;
    notifyListeners();
  }
}
