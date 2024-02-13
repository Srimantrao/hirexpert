// ignore_for_file: file_names, non_constant_identifier_names


import 'package:flutter/cupertino.dart';
import '../../view/utils/app_color.dart';

class TabbarController with ChangeNotifier{
  Color _tabColor = AppColor.Button_color;
  Color _tabColor2 = AppColor.Tabbar_color;
  Color _tabColor3 = AppColor.Tabbar_color;

  get tabColor =>_tabColor;
  get tabColor2 =>_tabColor2;
  get tabColor3 =>_tabColor3;

  void ChangigColor(index){
    if (index == 0) {
      _tabColor = AppColor.Button_color;
    } else {
      _tabColor = AppColor.Tabbar_color;
    }
    if (index == 1) {
      _tabColor2 = AppColor.Button_color;
    } else {
      _tabColor2 = AppColor.Tabbar_color;
    }
    if (index == 2) {
      _tabColor3 = AppColor.Button_color;
    } else {
      _tabColor3 = AppColor.Tabbar_color;
    }
    notifyListeners();
  }
}