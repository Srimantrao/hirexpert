// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class Collectionpart with ChangeNotifier {
  bool _istrue = false;
  bool _visibility = true;

  bool get istrue => _istrue;
  bool get visibility => _visibility;

  void ismoving() {
    _istrue = !_istrue;
    notifyListeners();
  }

  void Visiblity() {
    _visibility = !_visibility;
    notifyListeners();
  }

}

class Collectiondepartment extends GetxController {
  var isVal_one = false.obs;
  var isVal_second = false.obs;
  var isVal_thrd = false.obs;
  var isVal_fourth = false.obs;
  var isVal_fifth = false.obs;
  var isVal_sixth = false.obs;
  var isVal_seventh = false.obs;
  var isVal_Egthe = false.obs;
  var isVal_nine = false.obs;

  void isValing_one() {
    isVal_one.value = !isVal_one.value;
  }

  void isValing_second() {
    isVal_second.value = !isVal_second.value;
  }

  void isValing_thrd() {
    isVal_thrd.value = !isVal_thrd.value;
  }

  void isValing_fourth() {
    isVal_fourth.value = !isVal_fourth.value;
  }

  void isValing_fifth() {
    isVal_fifth.value = !isVal_fifth.value;
  }

  void isValing_sixth() {
    isVal_sixth.value = !isVal_sixth.value;
  }

  void isValing_seventh() {
    isVal_seventh.value = !isVal_seventh.value;
  }

  void isValing_Egthe() {
    isVal_Egthe.value = !isVal_Egthe.value;
  }

  void isValing_nine() {
    isVal_nine.value = !isVal_nine.value;
  }
}
