// ignore_for_file: file_names, non_constant_identifier_names

import 'package:get/get.dart';
import 'package:hirexpert/controller/API_Controller/Candidate/Collction/Login/login_API_controller.dart';
import 'package:hirexpert/controller/API_Controller/Candidate/Menu/Home/Details_Controllers.dart';

import '../../../../../view/utils/app_constance.dart';

class DetailsApiHendal extends GetxController {
  DetailsControllers Details = Get.put(DetailsControllers());
  OptionApiController login = Get.put(OptionApiController());

  @override
  void onInit() {
    Future.microtask(() async {
      await Details.DetailsControllers_fuction(
        JobID: '1',
        Timezone: 'asia/kolkata',
        Tokan: login.option_data['data']['LoginToken'],
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
    Details.DetailsControllers_fuction(
      JobID: '1',
      Timezone: 'asia/kolkata',
      Tokan: login.option_data['data']['LoginToken'],
    );
    super.onClose();
  }
}
