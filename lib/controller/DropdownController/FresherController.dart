// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import '../../modal/Dropdowns/drops.dart';

class FreherController with ChangeNotifier {
  String _Select_Month = "0 Month";
  String _Select_Years = "0 Years";
  bool _Selectdrop = true;

  String get Select_Month => _Select_Month;

  String get Select_Years => _Select_Years;

  bool get Selectdrop => _Selectdrop;

  void Selectdrop_true(){
    _Selectdrop = false;
    notifyListeners();
  }

  void onSelectedItemChanged_Years(index){
    _Select_Years = Years[index];
    notifyListeners();
  }

  void onSelectedItemChanged_Month(index){
    _Select_Month = Years[index];
    notifyListeners();
  }
}
