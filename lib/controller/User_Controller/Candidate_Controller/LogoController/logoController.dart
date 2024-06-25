// ignore_for_file: file_names, annotate_overrides, prefer_const_constructors

import 'package:get/get.dart';
import 'package:hirexpert/view/screen/option/option.dart';

class Logocontroller extends GetxController {
  void onInit() {
    Future.delayed(Duration(seconds: 3), () {
      Get.to(() => Option());
    });
    super.onInit();
  }
}
