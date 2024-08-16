// ignore_for_file: file_names, non_constant_identifier_names, prefer_const_constructors, curly_braces_in_flow_control_structures, avoid_print, no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:hirexpert/view/screen/Candidate/collection/location.dart';
import 'package:intl/intl.dart';
import '../../../../view/utils/app_String.dart';

class FreherController with ChangeNotifier {
  TextEditingController company_name = TextEditingController();
  TextEditingController designation = TextEditingController();

  DateTime _selectedDate = DateTime.now();
  String _formattedDate = DateFormat('dd/MM/yyyy').format(DateTime.now());

  DateTime _selectedDate2 = DateTime.now();
  String _formattedDate2 = DateFormat('dd/MM/yyyy').format(DateTime.now());

  DateTime get selectedDate => _selectedDate;
  String get formattedDate => _formattedDate;

  DateTime get selectedDate2 => _selectedDate2;
  String get formattedDate2 => _formattedDate2;

  bool _Experience = false;

  String _Experience_Years_value = '';
  String _Experience_Month_value = '';
  int _selectedYear = 0;
  int _selectMonth = 0;
  bool _Expected = false;
  bool _CTC = false;
  String _Expected_Lack_value = '';
  String _Expected_Lack_value2 = '';
  String _Expected_Thousand_value = '';
  String _Expected_Thousand_value2 = '';
  int _selectLack = 0;
  int _selectLack2 = 0;
  int _selectThousand = 0;
  int _selectThousand2 = 0;
  bool _companynames = false;
  String _companyname_value = '';
  bool _designations = false;
  String _Designtion_value = '';
  bool _Visible = false;
  bool _valuecheck = false;

  get Experience => _Experience;
  get Experience_Years_value => _Experience_Years_value;
  get Experience_Month_value => _Experience_Month_value;
  get selectedYear => _selectedYear;
  get selectMonth => _selectMonth;
  get Expected => _Expected;
  get CTC => _CTC;
  get Expected_Lack_value => _Expected_Lack_value;
  get Expected_Lack_value2 => _Expected_Lack_value2;
  get Expected_Thousand_value => _Expected_Thousand_value;
  get Expected_Thousand_value2 => _Expected_Thousand_value2;
  get selectLack => _selectLack;
  get selectLack2 => _selectLack2;
  get selectThousand => _selectThousand;
  get selectThousand2 => _selectThousand2;
  get companynames => _companynames;
  get companyname_value => _companyname_value;
  get designations => _designations;
  get Designtion_value => _Designtion_value;
  get valuecheck => _valuecheck;
  get Visible => _Visible;

  void next_button() {
    if (company_name.text.isEmpty) {
      _companynames = true;
      _companyname_value = Error_String.name;
    } else if (!RegExp(r'^[a-zA-Z]+$').hasMatch(company_name.text)) {
      _companynames = true;
      _companyname_value = Error_String.vaild_name;
    } else {
      _companynames = false;
      _companyname_value = '';
    }
    if (designation.text.isEmpty) {
      _designations = true;
      _Designtion_value = Error_String.name;
    } else if (!RegExp(r'^[a-zA-Z]+$').hasMatch(designation.text)) {
      _designations = true;
      _Designtion_value = Error_String.vaild_name;
    } else {
      _designations = false;
      _Designtion_value = '';
    }
    next();
    notifyListeners();
  }

  void next() {
    if (!_companynames && !_designations  && Expected  &&  Experience && CTC) {
      Get.to(() => Location());
    }
    notifyListeners();
  }

  void next_viwe(){
    if(Expected){
      Get.to(()=> Location());
    }
  }

  void updateDate(DateTime newDate) {
    _selectedDate = newDate;
    _formattedDate = DateFormat('dd/MM/yyyy').format(newDate);
    notifyListeners();
  }

  void updateDate2(DateTime newDate) {
    _selectedDate2 = newDate;
    _formattedDate2 = DateFormat('dd/MM/yyyy').format(newDate);
    notifyListeners();
  }


  void company_validation(value) {
    if (value.isEmpty) {
      _companynames = true;
      _companyname_value = Error_String.name;
    } else if (!RegExp(r'^[a-zA-Z]+$').hasMatch(value)) {
      _companynames = true;
      _companyname_value = Error_String.vaild_name;
    } else {
      _companynames = false;
      _companyname_value = '';
    }
    notifyListeners();
  }

  void Designation_validation(value) {
    if (value.isEmpty) {
      _designations = true;
      _Designtion_value = Error_String.name;
    } else if (!RegExp(r'^[a-zA-Z]+$').hasMatch(value)) {
      _designations = true;
      _Designtion_value = Error_String.vaild_name;
    } else {
      _designations = false;
      _Designtion_value = '';
    }
    notifyListeners();
  }

  void Experience_fuction(value) {
    _Experience = true;
    _selectedYear = value;
    _Experience_Years_value = _selectedYear.toString();
    notifyListeners();
  }

  void Experience2_fuction(value) {
    _Experience = true;
    _selectMonth = value;
    _Experience_Month_value = _selectMonth.toString();
    notifyListeners();
  }

  void Expected_fuction(value) {
    _Expected = true;
    _selectLack = value;
    _Expected_Lack_value = _selectLack.toString();
    notifyListeners();
  }

  void Expected2_fuction(value) {
    _Expected = true;
    _selectThousand = value;
    _Expected_Thousand_value = _selectThousand.toString();
    notifyListeners();
  }

  void CTC_fuction(value) {
    _CTC = true;
    _selectLack2 = value;
    _Expected_Lack_value2 = _selectLack2.toString();
    notifyListeners();
  }

  void CTC2_fuction(value) {
    _CTC = true;
    _selectThousand2 = value;
    _Expected_Thousand_value2 = _selectThousand2.toString();
    notifyListeners();
  }

  Future<void> showpicker(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2050),
    );
    if (picked != null && picked != _selectedDate) _selectedDate = picked;

      final DateFormat formatter = DateFormat('dd/MM/yyyy');
      final String _formatteddate = formatter.format(_selectedDate);
      print(_formatteddate);

    notifyListeners();
  }

  Future<void> showpicker2(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate2,
      firstDate: DateTime(2000),
      lastDate: DateTime(2050),
    );
    if (picked != null && picked != _selectedDate2) _selectedDate2 = picked;

    final DateFormat formatter = DateFormat('dd/MM/yyyy');
    final String _formatteddate2 = formatter.format(_selectedDate2);
    print(_formatteddate2);

    notifyListeners();
  }

  void Visible_fun() {_Visible = !_Visible;notifyListeners();}
  void valuecheck_fun(newvalue) {_valuecheck = newvalue!;notifyListeners();}

}
