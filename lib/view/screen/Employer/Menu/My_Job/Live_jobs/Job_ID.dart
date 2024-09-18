// ignore_for_file: avoid_print, file_names, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:hirexpert/view/screen/Employer/Menu/My_Job/Live_jobs/Candidate_flow/Candidate_flow.dart';
import 'package:hirexpert/view/utils/app_color.dart';
import 'package:hirexpert/view/utils/app_icon.dart';
import 'package:hirexpert/view/utils/common/Tabbar/Profile/Tab_Conatiner/Profile_Conatiner.dart';

class JobId extends StatefulWidget {
  const JobId({super.key});

  @override
  State<JobId> createState() => _JobIdState();
}

class _JobIdState extends State<JobId> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColor.Full_body_color,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(Get.height / 10),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: Get.width / 20),
            child: Container(
              height: Get.height / 10,
              width: Get.width,
              decoration: BoxDecoration(color: AppColor.Full_body_color),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("My Jobs", style: TextStyle(fontSize: Get.height / 40, fontWeight: FontWeight.w600)),
                  Row(
                    children: [
                      Container(
                        height: Get.height / 20,
                        width: Get.width / 3.8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(Get.width / 50),
                          color: AppColor.Button_color,
                        ),
                        child: Center(
                          child: Text('Post Jobs', style: TextStyle(fontSize: Get.width / 27, color: AppColor.Full_body_color)),
                        ),
                      ),
                      SizedBox(width: Get.width / 50),
                      Icon(Icons.notifications_none_sharp, color: AppColor.select_check_color, size: 30),
                      SizedBox(width: Get.width / 50),
                      Icon(Icons.monitor_weight_outlined, color: AppColor.select_check_color, size: 30),
                      SizedBox(width: Get.width / 50),
                      PopupMenuButton(
                          color: AppColor.Full_body_color,
                          onSelected: (value) {
                            print(value);
                          },
                          itemBuilder: (BuildContext context) =>
                              <PopupMenuEntry>[
                                PopupMenuItem(value: 1, child: Text('All')),
                                PopupMenuItem(value: 2, child: Text('Last 7 Days')),
                                PopupMenuItem(value: 3, child: Text('Last 30 Days')),
                                PopupMenuItem(value: 3, child: Text('Last 6 Months')),
                                PopupMenuItem(value: 3, child: Text('Last 1 Year')),
                              ],
                          child: SvgPicture.asset(AppIcons.dots)),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(color: AppColor.Full_body_color),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Get.width/20),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: Get.height / 80),
                GestureDetector(
                  onTap: (){
                    Get.to(()=> CandidateFlow(),duration: Duration(seconds: 1),transition: Transition.downToUp);
                  },
                  child: Container(
                    height: size.height / 3.8,
                    width: size.width,
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(color: AppColor.Bottam_color),
                        bottom: BorderSide(color: Colors.transparent),
                      ),
                      color: AppColor.Full_body_color,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: size.width / 40),
                                  child: SvgPicture.asset(AppIcons.Layer_1),
                                ),
                                SizedBox(width: size.width / 50),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('JobTitle', style: TextStyle(color: AppColor.subcolor)),
                                    SizedBox(width: Get.width / 2, child: Text('TechName', style: TextStyle(fontSize: size.width / 26, fontWeight: FontWeight.w600))),
                                    Text('ComName', style: TextStyle(fontSize: size.width / 26, fontWeight: FontWeight.w400, color: AppColor.Button_color)),
                                  ],
                                ),
                              ],
                            ),
                            // GestureDetector(
                            //   onTap: () {},
                            //   child: SvgPicture.asset(AppIcons.Editing),
                            // ),
                          ],
                        ),
                        SizedBox(height: Get.height / 50),
                        Wrap(
                          runSpacing: Get.height / 90,
                          children: [
                            SizedBox(
                              height: Get.height / 30,
                              width: Get.width / 5,
                              child: Container(
                                width: size.width / 3.2,
                                height: size.height / 25,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(size.width / 60),
                                  color: AppColor.ditalis_conatiner,
                                ),
                                child: Center(
                                  child: Text('JobType', style: TextStyle(fontWeight: FontWeight.w600, fontSize: size.width / 30)),
                                ),
                              ),
                            ),
                            SizedBox(width: Get.width / 50),
                            SizedBox(
                              height: Get.height / 30,
                              width: Get.width / 5,
                              child: Container(
                                width: size.width / 7,
                                height: size.height / 25,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(size.width / 60),
                                  color: AppColor.ditalis_conatiner,
                                ),
                                child: Center(
                                  child: Text('Location', style: TextStyle(fontWeight: FontWeight.w600, fontSize: size.width / 30)),
                                ),
                              ),
                            ),
                            SizedBox(width: Get.width / 50),
                            SizedBox(
                              height: Get.height / 30,
                              width: Get.width / 5,
                              child: Container(
                                width: size.width / 5,
                                height: size.height / 25,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(size.width / 60),
                                  color: AppColor.ditalis_conatiner,
                                ),
                                child: Center(
                                  child: Text('JobType', style: TextStyle(fontWeight: FontWeight.w600, fontSize: size.width / 30),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: Get.width / 50),
                            SizedBox(
                              height: Get.height / 30,
                              width: Get.width / 5,
                              child: Container(
                                width: size.width / 5,
                                height: size.height / 25,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(size.width / 60),
                                  color: AppColor.ditalis_conatiner,
                                ),
                                child: Center(
                                  child: Text('Experience', style: TextStyle(fontWeight: FontWeight.w600, fontSize: size.width / 35)),
                                ),
                              ),
                            ),
                            SizedBox(width: Get.width / 50),
                            SizedBox(
                              height: Get.height / 30,
                              width: Get.width / 5,
                              child: Container(
                                width: size.width / 2.5,
                                height: size.height / 25,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(size.width / 60),
                                  color: AppColor.ditalis_conatiner,
                                ),
                                child: Center(
                                  child: Text('Salary', style: TextStyle(fontWeight: FontWeight.w600, fontSize: size.width / 30)),
                                ),
                              ),
                            ),
                            SizedBox(width: Get.width / 50),
                            SizedBox(
                              height: Get.height / 30,
                              width: Get.width / 5,
                              child: Container(
                                width: size.width / 5,
                                height: size.height / 22,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(size.width / 60),
                                  color: AppColor.ditalis_conatiner,
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: Get.width / 30),
                                  child: Center(
                                    child: Text('WorkSet', style: TextStyle(fontWeight: FontWeight.w600, fontSize: size.width / 33,)),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: size.width / 50),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('FormatDt', style: TextStyle(color: AppColor.subcolor)),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Text('Job ID: J-6575'),
                SizedBox(height: Get.height/50),
                Text('More about the role',style: TextStyle(fontSize: Get.width/23,fontWeight: FontWeight.w600)),
                Text('Testing'),
                SizedBox(height: Get.height/50),
                Text('Additional Benefits',style: TextStyle(fontSize: Get.width/23,fontWeight: FontWeight.w600)),
                Text('Testing'),
                SizedBox(height: Get.height/50),
                Text('Job Information',style: TextStyle(fontSize: Get.width/23,fontWeight: FontWeight.w600)),
                Text('Testing'),
                SizedBox(height: Get.height/50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('No. of Openings :',style: TextStyle(fontSize: Get.width/25)),
                    Text('1',style: TextStyle(fontSize: Get.width/25,fontWeight: FontWeight.w600)),
                  ],
                ),
                SizedBox(height: Get.height/80),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Job Type :',style: TextStyle(fontSize: Get.width/25)),
                    Text('FullTime',style: TextStyle(fontSize: Get.width/25,fontWeight: FontWeight.w600)),
                  ],
                ),
                SizedBox(height: Get.height/80),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Preferred Education :',style: TextStyle(fontSize: Get.width/25)),
                    Text('BCA',style: TextStyle(fontSize: Get.width/25,fontWeight: FontWeight.w600)),
                  ],
                ),
                SizedBox(height: Get.height/80),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Work Setup :',style: TextStyle(fontSize: Get.width/25)),
                    Text('In-Office',style: TextStyle(fontSize: Get.width/25,fontWeight: FontWeight.w600)),
                  ],
                ),
                SizedBox(height: Get.height/80),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Experience Required :',style: TextStyle(fontSize: Get.width/25)),
                    Text('5 Days a Week',style: TextStyle(fontSize: Get.width/25,fontWeight: FontWeight.w600)),
                  ],
                ),
                SizedBox(height: Get.height/80),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Work Week :',style: TextStyle(fontSize: Get.width/25)),
                    Text('5 Days a Week',style: TextStyle(fontSize: Get.width/25,fontWeight: FontWeight.w600)),
                  ],
                ),
                SizedBox(height: Get.height/80),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Salary (per annum) :',style: TextStyle(fontSize: Get.width/25)),
                    Text('8.00 - 14.00 Lakh',style: TextStyle(fontSize: Get.width/25,fontWeight: FontWeight.w600)),
                  ],
                ),
                SizedBox(height: Get.height/80),
                Text('Additional Pay :',style: TextStyle(fontSize: Get.width/25)),
                SizedBox(height: Get.height/30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
