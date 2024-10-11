// ignore_for_file: camel_case_types, file_names, prefer_const_constructors_in_immutables, prefer_const_constructors, non_constant_identifier_names, invalid_use_of_protected_member, unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hirexpert/controller/API_handler/Candidate/Menu/Home/Appling_API_handler.dart';
import 'package:hirexpert/view/utils/app_icon.dart';
import 'package:hirexpert/view/utils/app_loder.dart';
import 'package:hirexpert/view/utils/common/List/jobSearch.dart';
import '../../../../../utils/app_String.dart';
import '../../../../../utils/app_color.dart';
import 'Details_Applid.dart';

// ignore: must_be_immutable
class Show_Applied extends StatelessWidget {
  Appling_Handaling Applay = Get.put(Appling_Handaling());
  Show_Applied({super.key});

  @override
  Widget build(BuildContext context) {
    Applay.onInit();
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: Get.height / 10,
        backgroundColor: AppColor.Full_body_color,
        elevation: 0,
        automaticallyImplyLeading: false,
        surfaceTintColor: AppColor.Full_body_color,
        title: Text(My_Jobs_Screen.Applied, style: TextStyle(fontWeight: FontWeight.w700)),
        actions: [Icon(Icons.notifications), SizedBox(width: Get.width / 50)],
      ),
      body: Obx(() {
          if (Applay.Applay.isLoding.value) {
            return Scaffold(
              body: Container(
                height: Get.height,
                width: Get.width,
                decoration: BoxDecoration(color: AppColor.Full_body_color),
                child: Center(child: Image.asset(AppLoder.infinityloder_without_background)),
              ),
            );
          } else if (Applay.Applay.ApplyJobList_data == null) {
            return Scaffold(
              body: Container(
                height: Get.height,
                width: Get.width,
                decoration: BoxDecoration(color: AppColor.Full_body_color),
                child: Center(
                  child: Text("Your Data is Empty !", style: TextStyle(fontSize: Get.width / 25)),
                ),
              ),
            );
          } else {
            return Container(
              height: Get.height,
              width: Get.width,
              decoration: BoxDecoration(color: AppColor.Full_body_color),
              child: ListView.builder(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                itemCount: Applay.Applay.ApplyJobList_data.value['data'] != null ? Applay.Applay.ApplyJobList_data.value['data'].length : 0,
                itemBuilder: (BuildContext context, int index) {
                  if (Applay.Applay.ApplyJobList_data.value['data'] != null && index < Applay.Applay.ApplyJobList_data.value['data'].length) {
                    var jobData = Applay.Applay.ApplyJobList_data.value['data'][index];
                    return JobSearch(
                      onTap: () {
                        Get.to(
                          () => Details_Appild(
                            Icon: jobData['ComLogo'],
                            Job_Tital: jobData['JobTitle'],
                            Language: jobData['TechName'],
                            Commpany: jobData['ComName'],
                            Working: jobData['WorkWeek'],
                            Location: jobData['Location'],
                            Job_time: jobData['JobType'],
                            Exp: jobData['Experience'],
                            lake: jobData['Salary'],
                            Hybrid: jobData['WorkSet'],
                            stats: jobData['FormatDt'],
                            saving: SvgPicture.asset(AppIcons.bookmark),
                          ),
                        );
                      },
                      Icon: jobData['ComLogo'],
                      Job_Tital: jobData['JobTitle'],
                      Language: jobData['TechName'],
                      Commpany: jobData['ComName'],
                      Working: jobData['WorkWeek'],
                      Location: jobData['Location'],
                      Job_time: jobData['JobType'],
                      Exp: jobData['Experience'],
                      lake: jobData['Salary'],
                      Hybrid: jobData['WorkSet'],
                      stats: jobData['FormatDt'],
                      savechild: SizedBox(),
                      top: BorderSide(color: AppColor.Bottam_color),
                    );
                  } else {
                    return SizedBox.shrink();
                  }
                },
              ),
            );
          }
        },
      ),
    );
  }
}
