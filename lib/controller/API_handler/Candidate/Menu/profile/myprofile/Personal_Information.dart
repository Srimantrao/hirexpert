// ignore_for_file: file_names, annotate_overrides

import 'package:get/get.dart';
import 'package:hirexpert/controller/API_Controller/Candidate/Collction/Login/login_API_controller.dart';
import 'package:hirexpert/view/utils/app_constance.dart';

class PersonalInformation extends GetxController {
  OptionApiController login = Get.put(OptionApiController());

  void onInit() {
    Future.microtask(() async {
      await login.OptionApiController_fuction(
        UserType: login.option_data['data']['UserType'],
        Password: Password_main.Pass.text,
        Email: login.option_data['data']['Email'],
        Tokan: Tokan,
        CandidateId: Candidate,
      );
    });
    super.onInit();
  }
}
