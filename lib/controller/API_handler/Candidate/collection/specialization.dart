// ignore_for_file: non_constant_identifier_names

import 'package:get/get.dart';
import 'package:hirexpert/controller/API_Controller/Candidate/Collction/Login/login_API_controller.dart';
import 'package:hirexpert/controller/API_Controller/Candidate/Collction/Poppup/candidateTech.dart';
import 'package:hirexpert/controller/API_Controller/Candidate/Collction/Poppup/describeyourjob.dart';
import 'package:hirexpert/controller/User_Controller/Candidate_Controller/AnimationControllers/AnimationControllers.dart';

class Specializations extends GetxController {
  final Animationcontrollers Animations = Get.put(Animationcontrollers());
  final Describeyourjob job = Get.put(Describeyourjob());
  final Candidatetech candidate = Get.put(Candidatetech());
  final OptionApiController Login = Get.put(OptionApiController());

  @override
  void onInit() {
    Future.microtask(() async {
      await job.Describeyourjob_fuction();
      await candidate.Candidatetech_fuctions(
        CandidateId: '0',
        TechId: '0',
        Timezone: 'asia/kolkata',
      );
    });
    super.onInit();
  }

  @override
  void onClose() {
    job.Describeyourjob_fuction();
    candidate.Candidatetech_fuctions(
      CandidateId: '0',
      TechId: '0',
      Timezone: 'asia/kolkata',
    );
    super.onClose();
  }
}
