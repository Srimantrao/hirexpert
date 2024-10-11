// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:get/get.dart';

import '../../../../../view/utils/app_constance.dart';
import '../../../../API_handler/Candidate/Menu/Search/Search_Hendal.dart';

class StateSearch_Controller extends GetxController{
  final SearchHendal Searchings = Get.put(SearchHendal());
  @override
  void onInit() {
    Searchings.onInit();
    Searchings.Search.SearchApiController_fuction(
        Timezone: 'asia/kolkata',
        CandidateId: Candidate,
        Tokan: Tokans,
        IsWeb: 'false',
        TechId: TechId,
    );
    super.onInit();
  }
}