// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/cupertino.dart';

class SearchButtonsController with ChangeNotifier{

  bool _Savebutton = false;

  get Savebutton => _Savebutton;

  void Savebuttons_fun(){
    _Savebutton = true;
    notifyListeners();
  }

}