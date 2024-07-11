// ignore_for_file: file_names, annotate_overrides, prefer_const_constructors

import 'package:get/get.dart';
import 'package:hirexpert/view/screen/option/option.dart';
import 'package:hirexpert/view/utils/buttom/Candidate/candidate_buttom.dart';

import '../../../../view/utils/app_constance.dart';

class Logocontroller extends GetxController {
  void onInit() {
    Future.delayed(Duration(seconds: 3), () {
      Get.to(() => islogin ? Candidate_Bottam() : Option());
    });
    super.onInit();
  }
}
