// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:hirexpert/view/utils/app_color.dart';
import '../../../utils/Tabbar/Profiletab/Additional/Additional.dart';
import '../../../utils/Tabbar/Profiletab/ Personal/Personal.dart';
import '../../../utils/app_String.dart';

class Edit_profile extends StatefulWidget {
  const Edit_profile({super.key});

  @override
  State<Edit_profile> createState() => _Edit_profileState();
}

class _Edit_profileState extends State<Edit_profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColor.Full_body_color,
        automaticallyImplyLeading: false,
        title: const Text(
          EditProfile_text.Profile,
          style: TextStyle(
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          Row(
            children: [
              const Icon(
                Icons.notifications,
                size: 25,
              ),
              SizedBox(width: Get.width / 40),
            ],
          )
        ],
      ),
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(
          color: AppColor.Full_body_color,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Get.width / 50,
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Container(
                  height: Get.height / 8,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: AppColor.Bottam_color,
                      ),
                    ),
                  ),
                  child: Row(
                    children: [
                      const CircleAvatar(
                        radius: 40,
                      ),
                      SizedBox(width: Get.width / 30),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Sagar Patil",
                            style: TextStyle(
                              fontSize: Get.width / 22,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            "Accounting",
                            style: TextStyle(
                                fontSize: Get.width / 26,
                                fontWeight: FontWeight.w400,
                                color: AppColor.subcolor),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: Get.height / 50),
                DefaultTabController(
                  length: 3,
                  child: Column(
                    children: [
                      TabBar(
                        labelStyle: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: Get.width / 26,
                        ),
                        unselectedLabelColor: AppColor.subcolor,
                        unselectedLabelStyle: const TextStyle(
                          fontWeight: FontWeight.w400,
                        ),
                        dividerColor: AppColor.Full_body_color,
                        labelColor: AppColor.Full_body_color,
                        indicatorSize: TabBarIndicatorSize.tab,
                        indicator: BoxDecoration(
                          color: AppColor.Button_color,
                          borderRadius: BorderRadius.circular(
                            Get.width / 40,
                          ),
                        ),
                        labelPadding: const EdgeInsets.all(3),
                        tabs: [
                          Container(
                            height: Get.height / 14,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 2,
                                color: AppColor.Button_color,
                              ),
                              borderRadius: BorderRadius.circular(
                                Get.width / 40,
                              ),
                            ),
                            child: Tab(
                              height: Get.height / 18,
                              child: const Center(
                                child: Text(
                                  textAlign: TextAlign.center,
                                  EditProfile_text.Additionl,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: Get.height / 14,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 2,
                                color: AppColor.Button_color,
                              ),
                              borderRadius: BorderRadius.circular(
                                Get.width / 40,
                              ),
                            ),
                            child: Tab(
                              height: Get.height / 18,
                              child: const Center(
                                child: Text(
                                  textAlign: TextAlign.center,
                                  EditProfile_text.Parsnaol,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: Get.height / 14,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 2,
                                color: AppColor.Button_color,
                              ),
                              borderRadius: BorderRadius.circular(
                                Get.width / 40,
                              ),
                            ),
                            child: Tab(
                              height: Get.height / 18,
                              child: const Center(
                                child: Text(
                                  textAlign: TextAlign.center,
                                  EditProfile_text.Certification,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: Get.height / 1.47,
                        child: const TabBarView(
                          children: [
                            Additional(),
                            Personal_information(),
                            Center(
                              child: Text("Hello3"),
                            ),
                          ],
                        ),
                      )
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
