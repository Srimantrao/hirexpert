// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:hirexpert/modal/Dropdowns/drops.dart';

class Educationcontroller with ChangeNotifier {
  bool _shodrop = false;
  int _Realvalue = 0;
  String _showvalue = "";

  bool _pick = false;
  String _pickyers = "2000 Year";

  DateTime selectedDate = DateTime.now();

  get shodrop => _shodrop;

  get Realvalue => _Realvalue;

  get showvalue => _showvalue;

  get pick => _pick;

  get pickyers => _pickyers;

  void Passing_Year_Fuction() {
    _shodrop = true;
    _pick = true;
    notifyListeners();
  }

  void Passing_Year_onPassing(index) {
    _pickyers = PickYers[index];
    notifyListeners();
  }
}
