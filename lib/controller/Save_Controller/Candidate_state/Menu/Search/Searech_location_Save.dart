// ignore_for_file: non_constant_identifier_names, unused_import

import 'package:get/get.dart';
import 'package:hirexpert/controller/API_Controller/Candidate/Collction/Login/login_API_controller.dart';
import 'package:hirexpert/view/utils/app_constance.dart';

import '../../../../API_Controller/Candidate/Menu/Home/Apply_now_Controller.dart';
import '../../../../API_Controller/Candidate/Menu/Home/isAppling_API_Controller.dart';
import '../../../../API_handler/Candidate/Menu/Home/Button_Apping_handler.dart';

class SearechLocationSave extends GetxController{
  final OptionApiController login = Get.put(OptionApiController());
  final ApplyNowController Apply_maees = Get.put(ApplyNowController());
  final IsapplingApiController isApply = Get.put(IsapplingApiController());
  final ButtonAppingHandler sumit = Get.put(ButtonAppingHandler());

  @override
  void onInit() {
    Future.microtask(()async{
      await isApply.IsApplingAPIController_fuction(
        Tokan: Tokans,
        Candidate: Candidate,
        JobId: '1',
        Timezone: 'asia/kolkata',
      );
    });
    super.onInit();
  }
}