// ignore_for_file: file_names, annotate_overrides

import 'package:get/get.dart';
import 'package:hirexpert/controller/API_Controller/Candidate/Collction/Login/login_API_controller.dart';
import 'package:hirexpert/controller/API_Controller/Candidate/Menu/Home/Offer_Controller.dart';

class HiredApiHandler extends GetxController {
  OfferController hired = Get.put(OfferController());
  OptionApiController login = Get.put(OptionApiController());

  @override
  void onInit() {
    Future.microtask(() async{
      await hired.OfferController_fuction(
        CompanyId: login.option_data['data']['UserDetails']['CandidateId'],
        Page: '1',
        Timezone: 'asia/kolkata',
        JobStatus: 'Hired',
        Tokan: login.option_data['data']['LoginToken'],
      );
    });
    super.onInit();
  }

  void onClose() {
    hired.OfferController_fuction(
      CompanyId: login.option_data['data']['UserDetails']['CandidateId'],
      Page: '1',
      Timezone: 'asia/kolkata',
      JobStatus: 'Hired',
      Tokan: login.option_data['data']['LoginToken'],
    );
  }
}
