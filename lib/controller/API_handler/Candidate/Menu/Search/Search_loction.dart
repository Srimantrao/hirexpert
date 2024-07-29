// ignore_for_file: file_names, non_constant_identifier_names, invalid_use_of_protected_member, annotate_overrides

import 'package:get/get.dart';
import 'package:hirexpert/controller/API_Controller/Candidate/Collction/Login/login_API_controller.dart';
import 'package:hirexpert/controller/API_Controller/Candidate/Menu/Search/Search_API_Controller.dart';
import 'package:hirexpert/modal/Job/jobSearch_list.dart';

class SearchLoction extends GetxController {
  OptionApiController Login = Get.put(OptionApiController());
  SearchApiController Search = Get.put(SearchApiController());

  // RxList<bool> isSeved = List.generate(showjob.length, (index) => false).obs;
  //
  // void isSave(int index) {
  //   isSeved.value[index] = true;
  //   saveshowjob.add(Search.Search_data['data'][index]);
  //   update(isSeved);
  // }

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
