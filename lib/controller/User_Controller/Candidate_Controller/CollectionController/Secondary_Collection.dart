// ignore_for_file: file_names, annotate_overrides, avoid_function_literals_in_foreach_calls, prefer_for_elements_to_map_fromiterable

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../API_Controller/Candidate/Collction/List/Taglist.dart';

class SecondaryCollection extends GetxController {
  Taglist taglist = Get.put(Taglist());
  RxList<String> filteredData = <String>[].obs;
  RxMap<String, bool> selectedItems = <String, bool>{}.obs;
  TextEditingController controller = TextEditingController();
  RxBool showSelectedItems = false.obs;

  @override
  void onInit() {
    super.onInit();
    taglist.Taglist_Fuction();
    ever(filteredData, (_) => _initializeSelectedItems());
    taglist.Taglist_data.listen((data) {filterData(controller.text);});
  }

  @override
  void onClose() {
    taglist.Taglist_Fuction();
    super.onClose();
  }

  void _initializeSelectedItems() {
    selectedItems.value = Map.fromIterable(
      filteredData,
      key: (item) => item,
      value: (item) => selectedItems[item] ?? false,
    );
  }

  void filterData(String query) {
    if (query.isEmpty) {
      filteredData.value = List<String>.from(taglist.Taglist_data['data']);
    } else {
      filteredData.value = List<String>.from(taglist.Taglist_data['data']).where((item) => item.toLowerCase().contains(query.toLowerCase())).toList();
    }
    _initializeSelectedItems();
  }

  void onChipSelected(String item, bool selected) {
    if (selected) {
      if (selectedItems.values.where((isSelected) => isSelected).length < 4) {
        selectedItems[item] = true;
      }
    } else {
      selectedItems[item] = false;
    }
    filterData(controller.text);
  }

  bool isAnyItemSelected() {
    return selectedItems.values.any((selected) => selected);
  }

  void toggleSelectedItemsView() {
    showSelectedItems.value = !showSelectedItems.value;
    if (!showSelectedItems.value) {
      selectedItems.keys.forEach((key) => selectedItems[key] = false);
    }
  }
}
