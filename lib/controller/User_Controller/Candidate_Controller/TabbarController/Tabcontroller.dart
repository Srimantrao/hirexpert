// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/cupertino.dart';

class TabbarController with ChangeNotifier{
  var selectedIndex = 0;

  void Tabbarcontroler_1(){selectedIndex = 0; notifyListeners();}
  void Tabbarcontroler_2(){selectedIndex = 1; notifyListeners();}
  void Tabbarcontroler_3(){selectedIndex = 2; notifyListeners();}
}