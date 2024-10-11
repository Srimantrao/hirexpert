// ignore_for_file: file_names, non_constant_identifier_names, camel_case_types

import 'package:get/get.dart';
import 'package:hirexpert/controller/API_Controller/Candidate/Collction/Login/login_API_controller.dart';
import 'package:hirexpert/controller/API_Controller/Candidate/Menu/Home/Details_Controllers.dart';

import '../../../../../view/utils/app_constance.dart';
import '../../../../API_Controller/Candidate/Menu/Home/ApplyJobList_Controller.dart';

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
      await pref!.setString("Tokan", login.option_data['data']['LoginToken']);
      await pref!.setString(
          'Candidate', login.option_data['data']['UserDetails']['CandidateId']);
    });
    Tokans = pref!.getString('Tokan')!;
    Candidate = pref!.getString('Candidate')!;
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

class Appling_Handaling extends GetxController {
  ApplyjoblistController Applay = Get.put(ApplyjoblistController());

  @override
  void onInit() {
    Applay.ApplyjoblistController_Fuction(
      CandidateId: Candidate,
      Timezone: 'Asia/Calcutta',
      Tokan: Tokans,
    );
    super.onInit();
  }
}
