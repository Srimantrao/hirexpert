// ignore_for_file: file_names, annotate_overrides, non_constant_identifier_names

import 'package:get/get.dart';
import 'package:hirexpert/controller/API_Controller/Candidate/Collction/Login/login_API_controller.dart';
import 'package:hirexpert/view/utils/app_constance.dart';

import '../../../../API_Controller/Candidate/Profile/Details_profile/Details_Profile.dart';

class ExtraInfo extends GetxController {
  OptionApiController login = Get.put(OptionApiController());

  void onInit() {
    Future.microtask(() async {
      await login.OptionApiController_fuction(
        Email: login.option_data['data']['Email'],
        Password: Password_main.Pass.text,
        UserType: login.option_data['data']['UserType'],
        Tokan: login.option_data['data']['LoginToken'],
        CandidateId: login.option_data['data']['UserDetails']['CandidateId'],
      );
    });
    super.onInit();
  }
}

class ExtraHandaler extends GetxController {
  DetailsProfile_Controls Details = Get.put(DetailsProfile_Controls());

  @override
  void onInit() {
    Tokans = pref!.getString('Tokan')!;
    Candidate = pref!.getString('Candidate')!;

    Details.DetailsProfile_Controls_Fuction(
      JobId: '7',
      Timezone: 'asia/kolkata',
      CandidateId: Candidate,
      IsInterview: '0',
      Tokan: Tokans,
    );
    super.onInit();
  }
}
