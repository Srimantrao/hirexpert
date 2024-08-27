// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hirexpert/view/screen/Employer/Menu/My_Job/Closed_Jobs/Closed_jobs.dart';
import 'package:hirexpert/view/screen/Employer/Menu/My_Job/Live_jobs/Live_jobs.dart';
import 'package:hirexpert/view/screen/Employer/Menu/My_Job/Paused_Jobs/Paused_jobs.dart';
import 'package:hirexpert/view/utils/app_color.dart';
import 'package:hirexpert/view/utils/app_icon.dart';
import 'package:hirexpert/view/utils/common/Tabbar/Profile/Tab_Conatiner/Profile_Conatiner.dart';

class Selection extends StatefulWidget {
  const Selection({super.key});

  @override
  State<Selection> createState() => _SelectionState();
}

class _SelectionState extends State<Selection> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(Get.height / 10),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: Get.width / 30),
            child: Container(
              height: Get.height / 10,
              width: Get.width,
              decoration: BoxDecoration(
                color: AppColor.Full_body_color,
              ),
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
                      SvgPicture.asset(AppIcons.dots),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        body: Container(
          height: Get.height,
          width: Get.width,
          decoration: BoxDecoration(
            color: AppColor.Full_body_color,
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: Get.width / 30),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    tab(
                      onTap: () {
                        setState(() {
                          selectedIndex = 0;
                        });
                      },
                      textcolor: selectedIndex == 0,
                      tabcolor: selectedIndex == 0,
                      name: 'Live Jobs',
                    ),
                    tab(
                      onTap: () {
                        setState(() {
                          selectedIndex = 1;
                        });
                      },
                      textcolor: selectedIndex == 1,
                      tabcolor: selectedIndex == 1,
                      name: 'Paused Jobs',
                    ),
                    tab(
                      onTap: () {
                        setState(() {
                          selectedIndex = 2;
                        });
                      },
                      textcolor: selectedIndex == 2,
                      tabcolor: selectedIndex == 2,
                      name: 'Closed Jobs',
                    ),
                  ],
                ),
                Expanded(
                  child: IndexedStack(
                    index: selectedIndex,
                    children: [
                      Live_Jobs(),
                      Paused_jobs(),
                      Closed_jobs(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
