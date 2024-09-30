// ignore_for_file: annotate_overrides, avoid_print, unnecessary_null_comparison

import 'package:get/get.dart';
import 'package:hirexpert/controller/API_Controller/Candidate/Collction/Login/login_API_controller.dart';
import 'package:hirexpert/view/utils/app_constance.dart';

class ProfielInfo extends GetxController {
  OptionApiController login = Get.put(OptionApiController());

  void onInit() {
    Future.microtask(() async {
      if (login.option_data != null && login.option_data['data'] != null) {
        await login.OptionApiController_fuction(
          UserType: 'Candidate',
          Email: login.option_data['data']['Email'],
          Password: Password_main.Pass.text,
          Tokan: login.option_data['data']['LoginToken'],
          CandidateId: login.option_data['data']['UserDetails']['CandidateId'],
        );
        await pref!.setString("Tokan", login.option_data['data']['LoginToken']);
        await pref!.setString('Candidate', login.option_data['data']['UserDetails']['CandidateId']);
      }else {
        print("Error: option_data['data'] is null");
      }

      Tokan = pref!.getString('Tokan')!;
      Candidate = pref!.getString('Candidate')!;

      print("Tokan{Login} :- $Tokan");
      print("Candidate{Login} :- $Candidate");
    });
    super.onInit();
  }
}
