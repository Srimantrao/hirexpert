// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/cupertino.dart';

import '../../../modal/Dropdowns/drops.dart';


class FreherController with ChangeNotifier {
  String _Select_Month = "0 Month";
  String _Select_Years = "0 Years";
  bool _Selectdrop = true;

  bool _isnext = false;
  bool _isnext1 = false;
  bool _isnext2 = false;
  bool _Visible = false;
  bool _valuecheck = false;

  String _Lakh = "0 Lakh";
  String _CTC_Lakh = "0 Lakh";
  String _Thousand = "0 Thousand";
  String _CTC_Thousand = "0 Thousand";
  bool _droping = false;

  bool get valuecheck => _valuecheck;

  bool get Visible => _Visible;

  bool get isnext => _isnext;
  bool get isnext1 => _isnext1;
  bool get isnext2 => _isnext2;

  String get CTC_Lakh => _CTC_Lakh;
  String get CTC_Thousand => _CTC_Thousand;

  String get Lakh => _Lakh;

  String get Thousand => _Thousand;

  bool get droping => _droping;

  String get Select_Month => _Select_Month;

  String get Select_Years => _Select_Years;

  bool get Selectdrop => _Selectdrop;

  void Visible_fun() {
    _Visible = !_Visible;
    notifyListeners();
  }

  void valuecheck_fun(newvalue){
    _valuecheck = newvalue!;
    notifyListeners();
  }

  void Selectnect_true() {
    _isnext = true;
    notifyListeners();
  }

  void Selectnect1_true() {
    _isnext1 = true;
    notifyListeners();
  }

  void Selectnect2_true() {
    _isnext2 = true;
    notifyListeners();
  }

  void Selectdrop_true() {
    _Selectdrop = false;
    notifyListeners();
  }

  void Selectdroping_true() {
    _droping = true;
    notifyListeners();
  }

  void Selectdroping_false() {
    _droping = false;
    notifyListeners();
  }

  void onSelectedItemChanged_Years(index) {
    _Select_Years = Years[index];
    notifyListeners();
  }

  void onSelectedItemChanged_Month(index) {
    _Select_Month = Years[index];
    notifyListeners();
  }

  void onSelectedItemChanged_Lakh(index) {
    _Lakh = Lakh_list[index];
    notifyListeners();
  }

  void onSelectedItemChanged_Lakh_CTC(index) {
    _CTC_Lakh = Lakh_list[index];
    notifyListeners();
  }

  void onSelectedItemChanged_Thousand(index) {
    _Thousand = Thousand_list[index];
    notifyListeners();
  }

  void onSelectedItemChanged_Thousand_CTC(index) {
    _CTC_Thousand = Thousand_list[index];
    notifyListeners();
  }
}
