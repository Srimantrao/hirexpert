// ignore_for_file: camel_case_types

import 'package:get/get.dart';

import '../../../../../../view/utils/app_constance.dart';
import '../../../../../API_handler/Candidate/Menu/Home/JobCountabale_hedal.dart';

class HomeState_Controller extends GetxController{
  final JobcountabaleHedal jobincount = Get.put(JobcountabaleHedal());
  @override
  void onInit(){
     jobincount.jobcount.Jobcountsaccording_fuction(CandidateId: Candidate , Tokan: Tokans);
    super.onInit();
  }
}