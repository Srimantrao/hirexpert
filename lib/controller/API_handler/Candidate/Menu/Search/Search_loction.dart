// ignore_for_file: file_names, non_constant_identifier_names, invalid_use_of_protected_member, annotate_overrides

import 'package:get/get.dart';
import 'package:hirexpert/controller/API_Controller/Candidate/Collction/Login/login_API_controller.dart';
import 'package:hirexpert/controller/API_Controller/Candidate/Menu/Search/Search_API_Controller.dart';

class SearchLoction extends GetxController {
  OptionApiController Login = Get.put(OptionApiController());
  SearchApiController Search = Get.put(SearchApiController());

  void onInit() {
    Future.microtask(() async {
      if (Login.option_data['status'] == true) {
        await Search.SearchApiController_fuction(
          IsWeb: 'false',
          Timezone: 'asia/kolkata',
          CandidateId: Login.option_data['data']['UserDetails']['CandidateId'],
          Tokan: Login.option_data['data']['LoginToken'],
          IsWeb: '',
        );
      }
    });
    super.onInit();
  }

  @override
  void onClose() {
    Search.SearchApiController_fuction(
      IsWeb: 'false',
      Timezone: 'asia/kolkata',
      CandidateId: Login.option_data['data']['UserDetails']['CandidateId'],
      Tokan: Login.option_data['data']['LoginToken'],
      IsWeb: 'false',
    );
    super.onClose();
  }
}
