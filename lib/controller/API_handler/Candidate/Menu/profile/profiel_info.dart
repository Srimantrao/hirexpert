// ignore_for_file: annotate_overrides

import 'package:get/get.dart';
import 'package:hirexpert/controller/API_Controller/Candidate/Collction/Login/login_API_controller.dart';
import 'package:hirexpert/view/utils/app_constance.dart';

class ProfielInfo extends GetxController {
  OptionApiController login = Get.put(OptionApiController());

  void onInit() {
    Future.microtask(() async {
      await login.OptionApiController_fuction(
        UserType: 'Candidate',
        Email: login.option_data['data']['Email'],
        Password: Password_main.Pass.text,
      );
    });
    super.onInit();
  }

  @override
  void onClose() {
    login.OptionApiController_fuction(
      UserType: 'Candidate',
      Email: login.option_data['data']['Email'],
      Password: Password_main.Pass.text,
    );
    super.onClose();
  }
}
