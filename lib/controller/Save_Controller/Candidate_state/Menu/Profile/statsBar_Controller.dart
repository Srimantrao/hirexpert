import 'package:get/get.dart';

import '../../../../../view/utils/app_constance.dart';
import '../../../../API_handler/Candidate/Menu/profile/profiel_info.dart';

class StatsbarController extends GetxController{
  final ProfielInfo profile = Get.put(ProfielInfo());

  @override
  void onInit() {
    Future.microtask(()async{
      await profile.login.OptionApiController_fuction(Email: Email,Password: Password,UserType: username, Tokan: Tokans, CandidateId: Candidate);
    });
    super.onInit();
  }
}