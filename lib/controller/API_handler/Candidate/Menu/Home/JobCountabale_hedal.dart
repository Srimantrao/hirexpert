// ignore_for_file: file_names

import 'package:get/get.dart';
import 'package:hirexpert/controller/API_Cobtroller/Candidate/Collction/Login/login_API_controller.dart';
import 'package:hirexpert/controller/API_Cobtroller/Candidate/Menu/Home/jobcountsaccording.dart';

class JobcountabaleHedal extends GetxController {
  Jobcountsaccording jobcount = Get.put(Jobcountsaccording());
  OptionApiController login = Get.put(OptionApiController());

  @override
  void onInit() {
    Future.microtask(() async {
      await jobcount.Jobcountsaccording_fuction(
        Tokan: login.option_data['data']['LoginToken'],
        CandidateId: login.option_data['data']['UserDetails']['CandidateId'],
      );
    });
    super.onInit();
  }

  @override
  void onClose() {
    jobcount.Jobcountsaccording_fuction(
      Tokan: login.option_data['data']['LoginToken'],
      CandidateId: login.option_data['data']['UserDetails']['CandidateId'],
    );
    super.onClose();
  }
}
