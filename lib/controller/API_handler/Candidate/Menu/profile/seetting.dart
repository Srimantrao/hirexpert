// ignore_for_file: annotate_overrides, non_constant_identifier_names

import 'package:get/get.dart';
import 'package:hirexpert/controller/API_Controller/Candidate/Collction/Change%20Password/Change_Controller_API_Controller.dart';
import 'package:hirexpert/controller/API_Controller/Candidate/Collction/Login/login_API_controller.dart';

import 'package:hirexpert/view/utils/app_constance.dart';

class Seettings extends GetxController {
  ChangeControllerApiController Change_Pass = Get.put(ChangeControllerApiController());
  OptionApiController Login = Get.put(OptionApiController());

  void onInit() {
    super.onInit();
    Future.microtask(() async {
      await Login.OptionApiController_fuction(
        UserType: 'Candidate',
        Email: Login.option_data['data']['Email'],
        Password: Password_main.Pass.text,
      );

      await Change_Pass.ChangeControllerApiController_Fuction(
        Tokan: Login.option_data['data']['LoginToken'],
      );
    });
  }

  void onClose() {
    Login.OptionApiController_fuction(
      UserType: 'Candidate',
      Email: Login.option_data['data']['Email'],
      Password: Password_main.Pass.text,
    );

    Change_Pass.ChangeControllerApiController_Fuction(
      Tokan: Login.option_data['data']['LoginToken'],
    );
    super.onClose();
  }
}