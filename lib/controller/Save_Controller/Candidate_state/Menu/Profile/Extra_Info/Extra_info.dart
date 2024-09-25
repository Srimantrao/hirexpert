// ignore_for_file: non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../../../view/utils/app_constance.dart';
import '../../../../../API_handler/Candidate/Menu/profile/Extra_info.dart';

class ExtraInfos extends GetxController{
  TextEditingController whichJob = TextEditingController();
  TextEditingController Specializationss = TextEditingController();
  TextEditingController Skillset = TextEditingController();

  final ExtraInfo Extra = Get.put(ExtraInfo());
  @override
  void onInit() {
    Future.microtask(()async{
      await Extra.login.OptionApiController_fuction(Email: Email, Password: Password, UserType: username);
    });
    super.onInit();
  }
}