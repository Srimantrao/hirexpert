// ignore_for_file: non_constant_identifier_names

import 'package:get/get.dart';

import '../../../../../view/utils/app_constance.dart';
import '../../../../API_Controller/Candidate/Menu/Home/Candidate_Details_Controllres.dart';

class InformationHandler extends GetxController{
  CandidatedetailsControllers_Controllrs Candidatedetails = Get.put(CandidatedetailsControllers_Controllrs());

  @override
  void onInit() {
    Tokans = pref!.getString('Tokan')!;
    Candidate = pref!.getString('Candidate')!;
    Candidatedetails.CandidatedetailsControllers_Fuction(
      CandidateId: Candidate,
      Timezone: 'asia/kolkata',
      IsLabel: '1',
      CompanyId: '1',
      Tokan: Tokans,
    );
    super.onInit();
  }
}