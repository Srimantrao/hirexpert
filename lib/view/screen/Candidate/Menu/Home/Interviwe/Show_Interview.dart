// ignore_for_file: file_names, camel_case_types, non_constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hirexpert/controller/API_handler/Candidate/Menu/Home/InterviweDetails.dart';
import '../../../../../../modal/Job/jobSearch_list.dart';
import '../../../../../utils/app_String.dart';
import '../../../../../utils/app_color.dart';
import '../../../../../utils/app_icon.dart';
import '../../../../../utils/app_loder.dart';
import 'Details_Interviwe.dart';

class Show_Interviwe extends StatelessWidget {
  final Interviwedetails Interview = Get.put(Interviwedetails());

  Show_Interviwe({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: size.height / 10,
        backgroundColor: AppColor.Full_body_color,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: const Text(
          My_Jobs_Screen.Interview,
          style: TextStyle(
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          Icon(Icons.notifications),
          SizedBox(width: size.width / 50),
        ],
      ),
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
          color: AppColor.Full_body_color,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width / 30),
          child: Obx(
            () {
              if (Interview.JobInter.isloding.value) {
                return Center(
                  child: Image.asset(AppLoder.infinityloder_without_background),
                );
              } else if (Interview.JobInter.JobInterviwe_data['data'] == null ||
                  Interview.JobInter.JobInterviwe_data == null) {
                return const Center(
                  child: Text(API_Error.null_data),
                );
              } else {
                return ListView.builder(
                  itemCount:
                      Interview.JobInter.JobInterviwe_data['data'].length,
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        Get.to(
                          () => Details_Interviwe(
                            Icon: Interview.JobInter.JobInterviwe_data['data']
                                [index]['ComLogo'],
                            Color_container: showjob[index]["Container_color"],
                            Job_Tital: Interview.JobInter
                                .JobInterviwe_data['data'][index]['JobTitle'],
                            Language: Interview.JobInter
                                .JobInterviwe_data['data'][index]['TechName'],
                            Commpany: Interview.JobInter
                                .JobInterviwe_data['data'][index]['ComName'],
                            Working: Interview.JobInter
                                .JobInterviwe_data['data'][index]["WorkWeek"],
                            Location: Interview.JobInter
                                .JobInterviwe_data['data'][index]["Location"],
                            Job_time: Interview.JobInter
                                .JobInterviwe_data['data'][index]['JobType'],
                            Exp: Interview.JobInter.JobInterviwe_data['data']
                                [index]["Experience"],
                            lake: Interview.JobInter.JobInterviwe_data['data']
                                [index]["Salary"],
                            Hybrid: Interview.JobInter.JobInterviwe_data['data']
                                [index]["WorkSet"],
                            stats: Interview.JobInter.JobInterviwe_data['data']
                                [index]["FormatDt"],
                          ),
                        );
                      },
                      child: Container(
                        height: size.height / 3.8,
                        width: size.width,
                        decoration: BoxDecoration(
                          border: Border(
                            top: BorderSide(
                              color: AppColor.Bottam_color,
                            ),
                            bottom: const BorderSide(
                              color: Colors.transparent,
                            ),
                          ),
                          color: AppColor.Full_body_color,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    vertical: size.width / 40,
                                  ),
                                  child: Container(
                                    width: size.width / 5.5,
                                    height: size.height / 12,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        size.width / 30,
                                      ),
                                      color: showjob[index]["Container_color"],
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(15),
                                      child: Image.network(
                                        Interview.JobInter
                                                .JobInterviwe_data['data']
                                            [index]['ComLogo'],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: size.width / 50),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              Interview.JobInter
                                                      .JobInterviwe_data['data']
                                                  [index]['TechName'],
                                              style: TextStyle(
                                                color: AppColor.subcolor,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: Get.width / 2,
                                      child: Text(
                                        Interview.JobInter
                                                .JobInterviwe_data['data']
                                            [index]['JobTitle'],
                                        style: TextStyle(
                                          fontSize: size.width / 23,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      Interview.JobInter
                                              .JobInterviwe_data['data'][index]
                                          ['ComName'],
                                      style: TextStyle(
                                        fontSize: size.width / 26,
                                        fontWeight: FontWeight.w400,
                                        color: AppColor.Button_color,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: size.width / 7),
                                SvgPicture.asset(AppIcons.bookmark),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      width: size.width / 3.2,
                                      height: size.height / 25,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          size.width / 60,
                                        ),
                                        color: AppColor.ditalis_conatiner,
                                      ),
                                      child: Center(
                                        child: Text(
                                          Interview.JobInter
                                                  .JobInterviwe_data['data']
                                              [index]["WorkSet"],
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: size.width / 30,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: size.width / 40),
                                    Container(
                                      width: size.width / 7,
                                      height: size.height / 25,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          size.width / 60,
                                        ),
                                        color: AppColor.ditalis_conatiner,
                                      ),
                                      child: Center(
                                        child: Text(
                                          Interview.JobInter
                                                  .JobInterviwe_data['data']
                                              [index]["Location"],
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: size.width / 30,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: size.width / 40),
                                    Container(
                                      width: size.width / 5,
                                      height: size.height / 25,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          size.width / 60,
                                        ),
                                        color: AppColor.ditalis_conatiner,
                                      ),
                                      child: Center(
                                        child: Text(
                                          Interview.JobInter
                                                  .JobInterviwe_data['data']
                                              [index]['JobType'],
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: size.width / 30,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: size.height / 80),
                                Row(
                                  children: [
                                    Container(
                                      width: size.width / 5,
                                      height: size.height / 25,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          size.width / 60,
                                        ),
                                        color: AppColor.ditalis_conatiner,
                                      ),
                                      child: Center(
                                        child: Text(
                                          Interview.JobInter
                                                  .JobInterviwe_data['data']
                                              [index]["Experience"],
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: size.width / 35,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: size.width / 40),
                                    Container(
                                      width: size.width / 2.5,
                                      height: size.height / 25,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          size.width / 60,
                                        ),
                                        color: AppColor.ditalis_conatiner,
                                      ),
                                      child: Center(
                                        child: Text(
                                          Interview.JobInter
                                                  .JobInterviwe_data['data']
                                              [index]["Salary"],
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: size.width / 30,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: size.width / 40),
                                    Container(
                                      width: size.width / 5,
                                      height: size.height / 25,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          size.width / 60,
                                        ),
                                        color: AppColor.ditalis_conatiner,
                                      ),
                                      child: Center(
                                        child: Text(
                                          Interview.JobInter
                                                  .JobInterviwe_data['data']
                                              [index]["WorkSet"],
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: size.width / 30,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: size.width / 40),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: size.width / 50),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  Interview.JobInter.JobInterviwe_data['data']
                                      [index]["FormatDt"],
                                  style: TextStyle(
                                    color: AppColor.subcolor,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  },
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
