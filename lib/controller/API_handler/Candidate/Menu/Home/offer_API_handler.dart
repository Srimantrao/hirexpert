// ignore_for_file: file_names

import 'package:get/get.dart';
import 'package:hirexpert/controller/API_Cobtroller/Candidate/Collction/Login/login_API_controller.dart';
import 'package:hirexpert/controller/API_Cobtroller/Candidate/Menu/Home/Offer_Controller.dart';

class OfferApiHandler extends GetxController{
  OptionApiController login = Get.put(OptionApiController());
  OfferController offer = Get.put(OfferController());

  @override
  void onInit() {
    Future.microtask(() async {
      await offer.OfferController_fuction(
        CompanyId: login.option_data['data']['UserDetails']['CandidateId'],
        Page: '1',
        Timezone: 'asia/kolkata',
        JobStatus: 'Offered',
        Tokan: login.option_data['data']['LoginToken'],
      );
    });
    super.onInit();
  }

  @override
  void onClose(){
    offer.OfferController_fuction(
      CompanyId: login.option_data['data']['UserDetails']['CandidateId'],
      Page: '1',
      Timezone: 'asia/kolkata',
      JobStatus: 'Offered',
      Tokan: login.option_data['data']['LoginToken'],
    );
  }
}

