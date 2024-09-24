// ignore_for_file: file_names, annotate_overrides, prefer_const_constructors

import 'package:get/get.dart';
import 'package:hirexpert/view/screen/option/option.dart';
import 'package:hirexpert/view/utils/buttom/Candidate/candidate_buttom.dart';

import '../../../../view/utils/app_constance.dart';

class Logocontroller extends GetxController {
  void onInit() {
    Future.delayed(Duration(seconds: 3), () {
      Get.to(()=>Option());
      // if (islogin) {
      //   String userType = pref!.getString('userType') ?? 'Candidate'; // Example, default is Candidate
      //   if (userType == 'Candidate') {
      //     Get.to(() => Candidate_Bottam()); // Company home screen
      //   } else {
      //     Get.to(() => Option()); // Candidate home screen
      //   }
      // } else {
      //   Get.to(() => Option()); // Show login screen if not logged in
      // }
    });
    super.onInit();
  }
}
