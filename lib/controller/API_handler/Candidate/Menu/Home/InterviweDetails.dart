// ignore_for_file: annotate_overrides, file_names, non_constant_identifier_names

import 'package:get/get.dart';
import 'package:hirexpert/controller/API_Controller/Candidate/Collction/Login/login_API_controller.dart';
import 'package:hirexpert/controller/API_Controller/Candidate/Menu/Home/JobInterviwe_API_Controller.dart';
import 'package:hirexpert/view/utils/app_constance.dart';

class Interviwedetails extends GetxController {
  JobinterviweApiController JobInter = Get.put(JobinterviweApiController());
  OptionApiController login = Get.put(OptionApiController());

  void onInit() {
    Future.microtask(() async {
      await JobInter.JobinterviweApiController_Fuction(
        Tokan: login.option_data['data']['LoginToken'],
        page: '1',
        Timezone: 'asia/kolkata',
        CandidateID: login.option_data['data']['UserDetails']['CandidateId'],
      );
      await pref!.setString("Tokan", login.option_data['data']['LoginToken']);
      await pref!.setString('Candidate', login.option_data['data']['UserDetails']['CandidateId']);
    });
    Tokans = pref!.getString('Tokan')!;
    Candidate = pref!.getString('Candidate')!;
    super.onInit();
  }

  @override
  void onClose() {
    JobInter.JobinterviweApiController_Fuction(
      Tokan: login.option_data['data']['LoginToken'],
      page: '1',
      Timezone: 'asia/kolkata',
      CandidateID: login.option_data['data']['UserDetails']['CandidateId'],
    );
    super.onClose();
  }
}
