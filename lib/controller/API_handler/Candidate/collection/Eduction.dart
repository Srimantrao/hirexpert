// ignore_for_file: file_names, annotate_overrides, camel_case_types, non_constant_identifier_names

import 'package:get/get.dart';
import 'package:hirexpert/controller/API_Cobtroller/Candidate/Collction/Pop_Collection/DegreeList_pop_Controller.dart';

class Eduction_hedal extends GetxController {
  DegreelistPopController Dedree = Get.put(DegreelistPopController());

  void onInit() {
    super.onInit();
    Future.microtask(() async {
      await Dedree.DegreelistPopController_Fuction();
    });
  }

  void onClose() {
    super.onClose();
    Dedree.DegreelistPopController_Fuction();
  }
}
