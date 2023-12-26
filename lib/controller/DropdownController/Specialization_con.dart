// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import '../../view/utils/app_String.dart';

class SpecializationController with ChangeNotifier {
  String _Selectitem = Specialization_text.Accounts_Finance;

  final List<String> _item = [
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

  String get Selectitem => _Selectitem;

  List<String> get item => _item;

  void Functional(String newValue){
    _Selectitem = newValue;
    notifyListeners();
  }
}
