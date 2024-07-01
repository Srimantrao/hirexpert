// ignore_for_file: file_names, annotate_overrides, non_constant_identifier_names

import 'package:get/get.dart';
import 'package:hirexpert/controller/API_Cobtroller/Candidate/Collction/Login/login_API_controller.dart';
import 'package:hirexpert/controller/API_Cobtroller/Candidate/Menu/Home/Favouritejob.dart';
import 'package:hirexpert/controller/API_Cobtroller/Candidate/Menu/Search/Search_API_Controller.dart';

class SarchingSavingApi extends GetxController {
  final Favouritejob favourlist = Get.put(Favouritejob());
  final OptionApiController login = Get.put(OptionApiController());

  @override
  void onInit() {
    Future.microtask(() async {
      await favourlist.Favouritejob_fuction(
        CandidateId: login.option_data['data']['UserDetails']['CandidateId'],
        Page: '1',
        Timezone: 'asia/kolkata',
        Tokan: login.option_data['data']['LoginToken'],
      );
    });
    super.onInit();
  }

  @override
  void onClose() {
    favourlist.Favouritejob_fuction(
      CandidateId: login.option_data['data']['UserDetails']['CandidateId'],
      Page: '1',
      Timezone: 'asia/kolkata',
      Tokan: login.option_data['data']['LoginToken'],
    );
    super.onClose();
  }
}
