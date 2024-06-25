// ignore_for_file: file_names, non_constant_identifier_names

import 'package:get/get.dart';
import 'package:hirexpert/controller/API_Cobtroller/Candidate/Collction/Login/login_API_controller.dart';
import 'package:hirexpert/controller/API_Cobtroller/Candidate/Menu/Notification/Notification_API_Controller.dart';

class NotificationHendal extends GetxController {
  OptionApiController login = Get.put(OptionApiController());
  NotificationApiController Notifica = Get.put(NotificationApiController());

  @override
  void onInit() {
    Future.microtask(() async {
      if (login.option_data['status'] == true) {
        Notifica.NotificationApiController_fuction(
          Tokan: login.option_data['data']['LoginToken'],
        );
      }
    });
    super.onInit();
  }

  @override
  void onClose() {
    Notifica.NotificationApiController_fuction(
      Tokan: login.option_data['data']['LoginToken'],
    );
    super.onClose();
  }
}
