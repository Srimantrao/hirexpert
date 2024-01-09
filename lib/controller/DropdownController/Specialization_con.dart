// ignore_for_file: file_names, non_constant_identifier_names, camel_case_types

import 'package:flutter/material.dart';
import '../../view/utils/app_String.dart';

class SpecializationController with ChangeNotifier {
  String _Functional_area = Specialization_text.Select_area;

  final List<String> _Functional_item = [
    Specialization_text.Select_area,
    Specialization_text.Accounts_Finance,
    Specialization_text.Bpo,
    Specialization_text.Database_Engineer,
    Specialization_text.Designing_UIUX,
    Specialization_text.Devops_Engineering,
    Specialization_text.ReactNative_Devloper,
    Specialization_text.Flutter_Devloper,
    Specialization_text.Collection,
    Specialization_text.Content,
    Specialization_text.Web_Devloper,
  ];

  String _Select_Speciailzation = Specialization_text.Search_text;

  final List<String> _Speciailzation_item = [
    Specialization_text.Search_text,
    Specialization_text.Backend,
    Specialization_text.Frontend,
    Specialization_text.Software,
    Specialization_text.eCommerce,
    Specialization_text.Skillset,
  ];

  String _Skillset = Specialization_text.Select_Skillset;

  final List<String> _Skillset_item = [
    Specialization_text.Select_Skillset,
    Specialization_text.Angular_TS,
    Specialization_text.Angular,
    Specialization_text.Bootstrap,
    Specialization_text.JQuery,
    Specialization_text.React_JS,
    Specialization_text.Designing_UIUX,
    Specialization_text.Bpo,
  ];

  String _Education_drop = Specialization_text.BBA;

  final List<String> _Education_item = [
    Specialization_text.BBA,
    Specialization_text.BCA,
  ];

  String get Education_drop => _Education_drop;

  List<String> get Education_item => _Education_item;

  String get Skillset => _Skillset;

  List<String> get Skillset_item => _Skillset_item;

  String get Select_Speciailzation => _Select_Speciailzation;

  String get Functional_area => _Functional_area;

  List<String> get Functional_item => _Functional_item;

  List<String> get Speciailzation_item => _Speciailzation_item;

  void Functional(String newValue) {
    _Functional_area = newValue;
    notifyListeners();
  }

  void Speciailzation(String newValue) {
    _Select_Speciailzation = newValue;
    notifyListeners();
  }

  void Skillset_fun(String newValue) {
    _Skillset = newValue;
    notifyListeners();
  }

  void Education_fun(String newValue) {
    _Education_drop = newValue;
    notifyListeners();
  }
}
