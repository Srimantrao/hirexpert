// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/cupertino.dart';

class SearchJobController extends ChangeNotifier{
  bool _SelectButtons = true;
  bool _Filtters = false;

  get SelectButtons => _SelectButtons;
  get Filtters => _Filtters;

  void SelectButtons_fun(){
    _SelectButtons = true;
    notifyListeners();
  }

  void Filtters_fun(){
    _Filtters =!_Filtters;
    notifyListeners();
  }
}