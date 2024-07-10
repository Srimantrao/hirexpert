// ignore_for_file: file_names, non_constant_identifier_names

import 'package:get/get.dart';
import 'package:hirexpert/controller/API_Controller/Candidate/Collction/Login/login_API_controller.dart';
import 'package:hirexpert/controller/API_Controller/Candidate/Menu/Home/Apply_now_Controller.dart';
import 'package:hirexpert/controller/API_handler/Candidate/Menu/Home/Details_API_Hendal.dart';

class ButtonAppingHandler extends GetxController {
  final OptionApiController login = Get.put(OptionApiController());
  final DetailsApiHendal Details_now = Get.put(DetailsApiHendal());
  final ApplyNowController Appling = Get.put(ApplyNowController());

  void HitAppling() {
    Appling.ApplynowController_fuction(
      Candidate: login.option_data['data']['UserDetails']['CandidateId'],
      JobId: Details_now.Details.Details_data['data']['JobId'],
      Company: Details_now.Details.Details_data['data']['CompanyId'],
      Tokan: login.option_data['data']['LoginToken'],
    );
  }
}
