// ignore_for_file: file_names, avoid_print, unnecessary_null_comparison

import 'package:get/get.dart';
import 'package:hirexpert/controller/API_Controller/Candidate/Collction/Login/login_API_controller.dart';
import 'package:hirexpert/controller/API_Controller/Candidate/Menu/Home/jobcountsaccording.dart';

import '../../../../../view/utils/app_constance.dart';

class JobcountabaleHedal extends GetxController {
  Jobcountsaccording jobcount = Get.put(Jobcountsaccording());
  OptionApiController login = Get.put(OptionApiController());

  @override
  void onInit() {
    Future.microtask(() async {
      if (login.option_data != null && login.option_data['data'] != null) {
        await jobcount.Jobcountsaccording_fuction(
          Tokan: login.option_data['data']['LoginToken'],
          CandidateId: login.option_data['data']['UserDetails']['CandidateId'],
        );
        await pref!.setString("Tokan", login.option_data['data']['LoginToken']);
        await pref!.setString('Candidate', login.option_data['data']['UserDetails']['CandidateId']);
      } else {
        print("Error: option_data['data'] is null");
      }

      Tokan = pref!.getString('Tokan')!;
      Candidate = pref!.getString('Candidate')!;

      print("Tokan{Login} :- $Tokan");
      print("Candidate{Login} :- $Candidate");
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
