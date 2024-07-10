// ignore_for_file: file_names, annotate_overrides, non_constant_identifier_names

import 'package:get/get.dart';
import 'package:hirexpert/controller/API_Controller/Candidate/Collction/Login/login_API_controller.dart';
import 'package:hirexpert/controller/API_Controller/Candidate/Menu/Home/Offer_Controller.dart';

class DeclinedApiHendler extends GetxController {
  OfferController Decline = Get.put(OfferController());
  OptionApiController login = Get.put(OptionApiController());

  @override
  void onInit() {
    Future.microtask(() async {
      await Decline.OfferController_fuction(
        CompanyId: login.option_data['data']['UserDetails']['CandidateId'],
        Page: '1',
        Timezone: 'asia/kolkata',
        JobStatus: 'Decline',
        Tokan: login.option_data['data']['LoginToken'],
      );
    });
    super.onInit();
  }

  void onClose() {
    Decline.OfferController_fuction(
      CompanyId: login.option_data['data']['UserDetails']['CandidateId'],
      Page: '1',
      Timezone: 'asia/kolkata',
      JobStatus: 'Decline',
      Tokan: login.option_data['data']['LoginToken'],
    );
  }
}
