// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, unnecessary_null_comparison, prefer_const_constructors_in_immutables, must_be_immutable, invalid_use_of_protected_member

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hirexpert/controller/API_Controller/Candidate/Collction/List/Taglist.dart';
import 'package:hirexpert/controller/User_Controller/Candidate_Controller/CollectionController/Secondary_Collection.dart';
import 'package:hirexpert/view/screen/Candidate/collection/Education.dart';
import 'package:hirexpert/view/utils/app_color.dart';
import 'package:hirexpert/view/utils/app_icon.dart';
import 'package:hirexpert/view/utils/app_loder.dart';
import 'package:hirexpert/view/utils/common/Textfild/Inputfild.dart';
import '../../../utils/aap_image.dart';
import '../../../utils/app_String.dart';
import '../../../utils/logic/next_thow.dart';

class Collection extends StatelessWidget {
  final SecondaryCollection collection = Get.put(SecondaryCollection());
  final String? first_name;
  final String? last_name;

  Collection({super.key, this.first_name, this.last_name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: Get.height / 20,
        width: Get.width,
        decoration: BoxDecoration(
          color: AppColor.Full_body_color,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Get.width / 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SvgPicture.asset(AppIcons.Backarrow),
                    SizedBox(width: Get.width / 80),
                    NextThow(text: Navigator_text.Back, fontweight: true, fontcolor: true),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  if (collection.showSelectedItems.value) {
                    Get.to(Education());
                  }
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Obx(() => NextThow(text: Navigator_text.Next, fontweight: collection.showSelectedItems.value, fontcolor: collection.showSelectedItems.value)),
                    SizedBox(width: Get.width / 80),
                    Obx(() => NextArrow(arrowcolor: collection.showSelectedItems.value)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        width: Get.width,
        height: Get.height,
        decoration: BoxDecoration(
          color: AppColor.Full_body_color,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Get.width / 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: Get.height / 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Image.asset(AppImage.profile, scale: 5)],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(first_name ?? '', style: TextStyle(fontSize: Get.width / 25)),
                  SizedBox(width: Get.width / 80),
                  Text(last_name ?? '', style: TextStyle(fontSize: Get.width / 25)),
                ],
              ),
              SizedBox(height: Get.height / 20),
              Obx(
                () => Inputfild(
                  suffixIcon: (collection.selectedItems.values.where((isSelected) => isSelected).length == 4)
                      ? GestureDetector(
                          onTap: () {
                            collection.toggleSelectedItemsView();
                          },
                          child: Text('+Add', style: TextStyle(fontSize: Get.width / 25, fontFamily: GoogleFonts.inder().fontFamily, color: AppColor.success_color, fontWeight: FontWeight.w600)),
                        )
                      : GestureDetector(
                          onTap: () {
                            collection.toggleSelectedItemsView();
                          },
                          child: Text('+uppdate', style: TextStyle(fontSize: Get.width / 25, fontFamily: GoogleFonts.inder().fontFamily, color: AppColor.success_color, fontWeight: FontWeight.w600)),),
                  labal: Specialization_text.Collection,
                  hint: Specialization_text.Collection_text,
                  controller: collection.controller,
                  onTap: () {
                    collection.taglist.Taglist_Fuction();
                  },
                  onChanged: (value) {
                    collection.filterData(value);
                  },
                ),
              ),
              Obx(() {
                if (collection.showSelectedItems.value) {
                  return Expanded(
                    child: GridView.builder(
                      itemCount: collection.selectedItems.entries.where((entry) => entry.value).length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, mainAxisExtent: 55, mainAxisSpacing: 10, childAspectRatio: 1, crossAxisSpacing: 10),
                      itemBuilder: (context, index) {
                        var selectedItems = collection.selectedItems.entries.where((entry) => entry.value).toList();
                        String item = selectedItems[index].key;
                        return FilterChip(
                          selectedColor: AppColor.Button_color,
                          checkmarkColor: AppColor.Full_body_color,
                          backgroundColor: AppColor.Button_color,
                          label: Text(item, style: TextStyle(color: AppColor.Full_body_color, fontSize: Get.width / 27)),
                          onSelected: (bool value) {
                            collection.onChipSelected(item, value);
                          },
                          selected: collection.selectedItems[item] ?? false,
                        );
                      },
                    ),
                  );
                } else if (collection.taglist.isLoding.value) {
                  return Center(child: Image.asset(AppLoder.infinityloder_without_background));
                } else if (collection.taglist.Taglist_data == null || collection.taglist.Taglist_data['data'] == null) {
                  return Center(child: SizedBox());
                } else {
                  return Expanded(
                    child: GridView.builder(
                      itemCount: collection.filteredData.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, mainAxisExtent: 55, mainAxisSpacing: 1, childAspectRatio: 1, crossAxisSpacing: 10),
                      itemBuilder: (context, index) {
                        String item = collection.filteredData[index];
                        return Obx(
                          () => FilterChip(
                            selectedColor: AppColor.Button_color,
                            checkmarkColor: AppColor.Full_body_color,
                            backgroundColor: AppColor.Button_color,
                            label: Text(item, style: TextStyle(color: AppColor.Full_body_color, fontSize: Get.width / 27)),
                            onSelected: (bool value) {
                              collection.onChipSelected(item, value);
                            },
                            selected: collection.selectedItems[item] ?? false,
                          ),
                        );
                      },
                    ),
                  );
                }
              }),
              SizedBox(height: Get.height / 50),
            ],
          ),
        ),
      ),
    );
  }
}
