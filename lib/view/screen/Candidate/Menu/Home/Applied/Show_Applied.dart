// ignore_for_file: camel_case_types, file_names, prefer_const_constructors_in_immutables, prefer_const_constructors, non_constant_identifier_names, invalid_use_of_protected_member

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hirexpert/controller/API_Controller/Candidate/Collction/Login/login_API_controller.dart';
import 'package:hirexpert/controller/API_Controller/Candidate/Menu/Home/ApplyJobList_Controller.dart';
import 'package:hirexpert/controller/API_handler/Candidate/Menu/Home/Appling_API_handler.dart';
import 'package:hirexpert/view/utils/app_constance.dart';
import 'package:hirexpert/view/utils/app_loder.dart';
import 'package:hirexpert/view/utils/common/List/jobSearch.dart';
import '../../../../../utils/app_String.dart';
import '../../../../../utils/app_color.dart';
import '../../../../../utils/app_icon.dart';
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

  // final ApplingApiHandler Appling = Get.put(ApplingApiHandler());

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: size.height / 10,
        backgroundColor: AppColor.Full_body_color,
        elevation: 0,
        automaticallyImplyLeading: false,
        surfaceTintColor: AppColor.Full_body_color,
        title: Text(My_Jobs_Screen.Applied, style: TextStyle(fontWeight: FontWeight.w700)),
        actions: [Icon(Icons.notifications), SizedBox(width: size.width / 50)],
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
              height: size.height,
              width: size.width,
              decoration: BoxDecoration(color: AppColor.Full_body_color),
              child: ListView.builder(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                itemCount: Applay.ApplyJobList_data.value.length,
                itemBuilder: (BuildContext context, int index) {
                 var jobData = Applay.ApplyJobList_data.value['data'][index];
                  return JobSearch(
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
                    bottam: BorderSide(color: AppColor.Bottam_color),
                  );
                },
              ),
            );
          }
        },
      ),
    );
  }
}
