// ignore_for_file: file_names, annotate_overrides

import 'package:get/get.dart';
import 'package:hirexpert/controller/API_Controller/Candidate/Collction/Login/login_API_controller.dart';
import 'package:hirexpert/view/utils/app_constance.dart';

class ExtraInfo extends GetxController {
  OptionApiController login = Get.put(OptionApiController());

  void onInit() {
    Future.microtask(() async {
      await login.OptionApiController_fuction(
        Email: login.option_data['data']['Email'],
        Password: Password_main.Pass.text,
        UserType: login.option_data['data']['UserType'],
        Tokan: Tokan,
        CandidateId: Candidate,
      );
    });
    super.onInit();
  }
}
