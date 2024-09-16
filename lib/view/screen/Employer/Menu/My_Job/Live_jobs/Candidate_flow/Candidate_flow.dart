// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:hirexpert/view/utils/app_color.dart';
import 'package:hirexpert/view/utils/app_icon.dart';

class CandidateFlow extends StatefulWidget {
  const CandidateFlow({super.key});

  @override
  State<CandidateFlow> createState() => _CandidateFlowState();
}

class _CandidateFlowState extends State<CandidateFlow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              ];
            },
            body: Container(
              height: Get.height,
              width: Get.width,
              decoration: BoxDecoration(color: AppColor.Full_body_color),
              child: Column(
                children: [
                  SizedBox(height: Get.height / 80),
                  SafeArea(
                    child: DefaultTabController(
                      length: 7,
                      child: TabBar(
                          dividerColor: AppColor.Full_body_color,
                          indicatorColor: AppColor.Full_body_color,
                          physics: BouncingScrollPhysics(),
                          isScrollable: true,
                          tabAlignment: TabAlignment.start,
                          indicator: BoxDecoration(
                            color: AppColor.Button_color,
                          ),
                          tabs: [
                            Tab(
                              child: Container(
                                height: Get.height / 20,
                                width: Get.width / 3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(Get.width / 35),
                                  color: AppColor.subcolor,
                                ),
                                child: Center(child: Text('1')),
                              ),
                            ),
                            Tab(
                              child: Container(
                                height: Get.height / 20,
                                width: Get.width / 3,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(Get.width / 35),
                                  color: AppColor.subcolor,
                                ),
                                child: Center(child: Text('1')),
                              ),
                            ),
                            Tab(
                              child: Container(
                                height: Get.height / 20,
                                width: Get.width / 3,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(Get.width / 35),
                                  color: AppColor.subcolor,
                                ),
                                child: Center(child: Text('1')),
                              ),
                            ),
                            Tab(
                              child: Container(
                                height: Get.height / 20,
                                width: Get.width / 3,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(Get.width / 35),
                                  color: AppColor.subcolor,
                                ),
                                child: Center(child: Text('1')),
                              ),
                            ),
                            Tab(
                              child: Container(
                                height: Get.height / 20,
                                width: Get.width / 3,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(Get.width / 35),
                                  color: AppColor.subcolor,
                                ),
                                child: Center(child: Text('1')),
                              ),
                            ),
                            Tab(
                              child: Container(
                                height: Get.height / 20,
                                width: Get.width / 3,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(Get.width / 35),
                                  color: AppColor.subcolor,
                                ),
                                child: Center(child: Text('1')),
                              ),
                            ),
                            Tab(
                              child: Container(
                                height: Get.height / 20,
                                width: Get.width / 3,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(Get.width / 35),
                                    color: AppColor.subcolor),
                                child: Center(child: Text('1')),
                              ),
                            ),
                          ]),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
