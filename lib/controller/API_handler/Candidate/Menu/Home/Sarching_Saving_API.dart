// ignore_for_file: file_names, annotate_overrides, non_constant_identifier_names

import 'package:get/get.dart';
import 'package:hirexpert/controller/API_Controller/Candidate/Collction/Login/login_API_controller.dart';
import 'package:hirexpert/controller/API_Controller/Candidate/Menu/Home/Favouritejob.dart';
import 'package:hirexpert/view/utils/app_constance.dart';

class SarchingSavingApi extends GetxController {
  final Favouritejob favourlist = Get.put(Favouritejob());
  final OptionApiController login = Get.put(OptionApiController());

  @override
  void onInit() {
    Future.microtask(() async {
      await favourlist.Favouritejob_fuction(
        CandidateId: login.option_data['data']['UserDetails']['CandidateId'],
        Timezone: 'asia/kolkata',
        Tokan: login.option_data['data']['LoginToken'],
        Page: '1',
      );
      await pref!.setString("Tokan", login.option_data['data']['LoginToken']);
      await pref!.setString('Candidate', login.option_data['data']['UserDetails']['CandidateId']);
    });
    Tokan = pref!.getString('Tokan')!;
    Candidate = pref!.getString('Candidate')!;
    super.onInit();
  }

  @override
  void onClose() {
    favourlist.Favouritejob_fuction(
      CandidateId: login.option_data['data']['UserDetails']['CandidateId'],
      Timezone: 'asia/kolkata',
      Tokan: login.option_data['data']['LoginToken'],
      Page: '1',
    );
    super.onClose();
  }
}
