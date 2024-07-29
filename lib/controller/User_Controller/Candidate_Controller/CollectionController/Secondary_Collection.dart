// ignore_for_file: file_names, annotate_overrides

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../API_Controller/Candidate/Collction/List/Taglist.dart';

class SecondaryCollection extends GetxController {
  Taglist taglist = Get.put(Taglist());
  RxList<String> filteredData = <String>[].obs;
  var selectedItems = [].obs;
  TextEditingController controller = TextEditingController();

  @override
  void onInit() {
    super.onInit();
    taglist.Taglist_Fuction();
    // taglist.Taglist_data.listen((data) {filterData(controller.text);});
  }

  @override
  void onClose() {
    taglist.Taglist_Fuction();
    // taglist.Taglist_data.listen((data) {filterData(controller.text);});
    super.onClose();
  }

  void filterData(String query) {
    if (query.isEmpty) {
      filteredData.value = List<String>.from(taglist.Taglist_data['data']);
    } else {
      filteredData.value = List<String>.from(taglist.Taglist_data['data']).where((item) => item.toLowerCase().contains(query.toLowerCase())).toList();
    }
  }

  void onChipSelected(String item, bool selected) {
    if (selected) {
      if (!selectedItems.contains(item) && selectedItems.length < 4) {
        selectedItems.add(item);
      }
    } else {
      selectedItems.remove(item);
    }
    update();
  }
}
