// ignore_for_file: file_names, non_constant_identifier_names

import 'package:get/get.dart';
import 'package:hirexpert/controller/API_Cobtroller/Candidate/Collction/Login/login_API_controller.dart';
import 'package:hirexpert/controller/API_Cobtroller/Candidate/Menu/Home/Details_Controllers.dart';

class ApplingApiHandler extends GetxController {
  OptionApiController login = Get.put(OptionApiController());
  DetailsControllers Detailing = Get.put(DetailsControllers());

  @override
  void onInit() {
    Future.microtask(() async {
      await Detailing.DetailsControllers_fuction(
        JobID: '1',
        Timezone: 'asia/kolkata',
        Tokan: login.option_data['data']['LoginToken'],
      );
    });
    super.onInit();
  }

  @override
  void onClose() {
    Detailing.DetailsControllers_fuction(
      JobID: '1',
      Timezone: 'asia/kolkata',
      Tokan: login.option_data['data']['LoginToken'],
    );
    super.onClose();
  }
}
