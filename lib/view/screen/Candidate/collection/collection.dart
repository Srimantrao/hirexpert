// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, unnecessary_null_comparison, prefer_const_constructors_in_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hirexpert/controller/API_Controller/Candidate/Collction/List/Taglist.dart';
import 'package:hirexpert/controller/User_Controller/Candidate_Controller/CollectionController/Secondary_Collection.dart';
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
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SvgPicture.asset(AppIcons.Backarrow),
                  SizedBox(width: Get.width / 80),
                  NextThow(text: Navigator_text.Back, fontweight: true, fontcolor: true),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  NextThow(text: Navigator_text.Next, fontweight: true, fontcolor: true),
                  SizedBox(width: Get.width / 80),
                  NextArrow(arrowcolor: true),
                ],
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
              Inputfild(
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
              Obx(() {
                if (collection.taglist.isLoding.value) {
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
                        return FilterChip(
                          checkmarkColor: AppColor.Full_body_color,
                          backgroundColor: AppColor.Button_color,
                          label: Text(item, style: TextStyle(color: AppColor.Full_body_color, fontSize: Get.width / 27)),
                          onSelected: (bool value) {
                            collection.onChipSelected(item, value);
                          },
                          selected: collection.selectedItems.contains(item),
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