// ignore_for_file: file_names, annotate_overrides, non_constant_identifier_names, invalid_use_of_protected_member

import 'package:get/get.dart';
import 'package:hirexpert/controller/API_Cobtroller/Candidate/Collction/Login/login_API_controller.dart';
import 'package:hirexpert/controller/API_Cobtroller/Candidate/Menu/Search/Search_API_Controller.dart';
import 'package:hirexpert/modal/Job/jobSearch_list.dart';
import 'package:hirexpert/view/screen/Candidate/Menu/Search/Search.dart';

class SearchHendal extends GetxController {
  OptionApiController Login = Get.put(OptionApiController());
  SearchApiController Search = Get.put(SearchApiController());

  RxList<bool> isSeved = List.generate(showjob.length, (index) => false).obs;

  void isSave(int index) {
    isSeved.value[index] = true;
    saveshowjob.add(Search.Search_data['data'][index]);
    update(isSeved);
  }

  void onInit() {
    Future.microtask(() async {
      if (Login.option_data['status'] == true) {
        await Search.SearchApiController_fuction(
          Timezone: 'asia/kolkata',
          CandidateId: Login.option_data['data']['UserDetails']['CandidateId'],
          Tokan: Login.option_data['data']['LoginToken'],
        );
      }
    });
    super.onInit();
  }

  @override
  void onClose() {
    Search.SearchApiController_fuction(
      Timezone: 'asia/kolkata',
      CandidateId: Login.option_data['data']['UserDetails']['CandidateId'],
      Tokan: Login.option_data['data']['LoginToken'],
    );
    super.onClose();
  }
}
