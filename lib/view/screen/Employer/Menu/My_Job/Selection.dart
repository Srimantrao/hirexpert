// ignore_for_file: file_names, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hirexpert/view/screen/Employer/Menu/My_Job/Closed_Jobs/Closed_jobs.dart';
import 'package:hirexpert/view/screen/Employer/Menu/My_Job/Live_jobs/Live_jobs.dart';
import 'package:hirexpert/view/screen/Employer/Menu/My_Job/Paused_Jobs/Paused_jobs.dart';
import 'package:hirexpert/view/utils/app_color.dart';
import 'package:hirexpert/view/utils/app_icon.dart';
import 'package:hirexpert/view/utils/common/Tabbar/Profile/Tab_Conatiner/Profile_Conatiner.dart';

import '../../../../utils/app_String.dart';

class Selection extends StatefulWidget {
  const Selection({super.key});

  @override
  State<Selection> createState() => _SelectionState();
}

class _SelectionState extends State<Selection> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.Full_body_color,
      body: SafeArea(
        child: Container(
          height: Get.height,
          width: Get.width,
          decoration: BoxDecoration(color: AppColor.Full_body_color),
          child: NestedScrollView(
            headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  elevation: 0,
                  backgroundColor: AppColor.Full_body_color,
                  forceMaterialTransparency: true,
                  pinned: false,
                  collapsedHeight: Get.height / 10,
                  automaticallyImplyLeading: false,
                  flexibleSpace: Padding(
                    padding: EdgeInsets.symmetric(horizontal: Get.width / 20),
                    child: Container(
                      height: Get.height / 10,
                      width: Get.width,
                      decoration: BoxDecoration(color: AppColor.Full_body_color),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(My_Jobes_text.My_Jobs, style: TextStyle(fontSize: Get.height / 40, fontWeight: FontWeight.w600)),
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
                                  child: Text(My_Jobes_text.Post_Jobs, style: TextStyle(fontSize: Get.width / 27, color: AppColor.Full_body_color)),
                                ),
                              ),
                              SizedBox(width: Get.width / 50),
                              Icon(Icons.notifications_none_sharp, color: AppColor.select_check_color, size: 30),
                              SizedBox(width: Get.width / 50),
                              Icon(Icons.monitor_weight_outlined, color: AppColor.select_check_color, size: 30),
                              SizedBox(width: Get.width / 50),
                              PopupMenuButton(color: AppColor.Full_body_color,
                                onSelected: (value){
                                  print(value);
                                },
                                  itemBuilder: (BuildContext context) => <PopupMenuEntry>[
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
              ];
            },
            body: Container(
              height: Get.height,
              width: Get.width,
              decoration: BoxDecoration(color: AppColor.Full_body_color),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: Get.width / 20),
                child: Column(
                  children: [
                    SizedBox(height: Get.height/80),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        tab(
                          onTap: () {
                            setState(() {selectedIndex = 0;});
                          },
                          textcolor: selectedIndex == 0,
                          tabcolor: selectedIndex == 0,
                          name: My_Jobes_text.Live_Jobs,
                        ),
                        tab(
                          onTap: () {
                            setState(() {selectedIndex = 1;});
                          },
                          textcolor: selectedIndex == 1,
                          tabcolor: selectedIndex == 1,
                          name: My_Jobes_text.Paused_Jobs,
                        ),
                        tab(
                          onTap: () {
                            setState(() {selectedIndex = 2;});
                          },
                          textcolor: selectedIndex == 2,
                          tabcolor: selectedIndex == 2,
                          name: My_Jobes_text.Closed_Jobs,
                        ),
                      ],
                    ),
                    SizedBox(height: Get.height / 50),
                    Expanded(
                      child: IndexedStack(
                        index: selectedIndex,
                        children: [Live_Jobs(), Paused_jobs(), Closed_jobs()],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
