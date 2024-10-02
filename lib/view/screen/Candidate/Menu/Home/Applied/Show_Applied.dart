// ignore_for_file: camel_case_types, file_names, prefer_const_constructors_in_immutables, prefer_const_constructors, non_constant_identifier_names, invalid_use_of_protected_member, unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hirexpert/controller/API_Controller/Candidate/Collction/Login/login_API_controller.dart';
import 'package:hirexpert/controller/API_Controller/Candidate/Menu/Home/ApplyJobList_Controller.dart';
import 'package:hirexpert/view/utils/app_icon.dart';
import 'package:hirexpert/view/utils/app_loder.dart';
import 'package:hirexpert/view/utils/common/List/jobSearch.dart';
import '../../../../../utils/app_String.dart';
import '../../../../../utils/app_color.dart';
import 'Details_Applid.dart';

class Show_Applied extends StatefulWidget {
  Show_Applied({super.key});

  @override
  State<Show_Applied> createState() => _Show_AppliedState();
}

class _Show_AppliedState extends State<Show_Applied> {
  @override
  void initState() {
    Applay.ApplyjoblistController_Fuction(
        CandidateId: login.option_data['data']['UserDetails']['CandidateId'],
        Timezone: 'Asia/Calcutta',
        Tokan: login.option_data['data']['LoginToken']);
    super.initState();
  }

  ApplyjoblistController Applay = Get.put(ApplyjoblistController());
  OptionApiController login = Get.put(OptionApiController());

  @override
  Widget build(BuildContext context) {
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
          if (Applay.isLoding.value) {
            return Scaffold(
              body: Container(
                height: Get.height,
                width: Get.width,
                decoration: BoxDecoration(color: AppColor.Full_body_color),
                child: Center(child: Image.asset(AppLoder.infinityloder_without_background)),
              ),
            );
          } else if (Applay.ApplyJobList_data == null) {
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
                itemCount: Applay.ApplyJobList_data.value['data'] != null ? Applay.ApplyJobList_data.value['data'].length : 0,
                itemBuilder: (BuildContext context, int index) {
                  if (Applay.ApplyJobList_data.value['data'] != null && index < Applay.ApplyJobList_data.value['data'].length) {
                    var jobData = Applay.ApplyJobList_data.value['data'][index];
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
