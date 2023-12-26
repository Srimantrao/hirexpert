// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hirexpert/view/utils/app_color.dart';
import 'package:hirexpert/view/utils/app_icon.dart';
import '../../../modal/Job/jobSearch_list.dart';
import '../../utils/app_String.dart';
import '../../utils/common/List/jobSearch.dart';

class Saved extends StatefulWidget {
  const Saved({super.key});

  @override
  State<Saved> createState() => _SavedState();
}

class _SavedState extends State<Saved> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: Get.height / 10,
        backgroundColor: AppColor.Full_body_color,
        elevation: 0,
        automaticallyImplyLeading: false,

        title: const Text(
          My_Jobs_Screen.My_Jobs,
          style: TextStyle(
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          const Icon(Icons.notifications),
          SizedBox(width: Get.width / 50),
        ],
      ),
      body: Container(
        width: Get.width,
        height: Get.height,
        decoration: BoxDecoration(
          color: AppColor.Full_body_color,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Get.width / 50),
          child: (saveshowjob.isEmpty)
              ? const Center(child: Text("File is Empty !"))
              : Expanded(
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    itemCount: saveshowjob.length,
                    itemBuilder: (BuildContext context, int index) {
                      int itemCount = saveshowjob.length ?? 0;
                      int reversedIndex = itemCount - 1 - index;
                      return Container(
                        height: Get.height / 4.3,
                        width: Get.width,
                        decoration: BoxDecoration(
                          border: Border(
                            top: BorderSide(
                              color: AppColor.Bottam_color,
                            ),
                            bottom: BorderSide(
                              color: AppColor.Bottam_color,
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
                                    vertical: Get.width / 40,
                                  ),
                                  child: Container(
                                    width: Get.width / 5.5,
                                    height: Get.height / 12,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        Get.width / 30,
                                      ),
                                      color: showjob[reversedIndex]["Container_color"],
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(15),
                                      child: SvgPicture.asset(
                                          showjob[reversedIndex]["Icon"]),
                                    ),
                                  ),
                                ),
                                SizedBox(width: Get.width / 30),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          showjob[reversedIndex]["Job_tital"],
                                          style: TextStyle(
                                            color: AppColor.subcolor,
                                          ),
                                        ),
                                        SizedBox(width: Get.width / 3),
                                        SvgPicture.asset(AppIcons.save),
                                      ],
                                    ),
                                    Text(
                                      showjob[reversedIndex]["Language"],
                                      style: TextStyle(
                                        fontSize: Get.width / 23,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text(
                                      showjob[reversedIndex]["Company_name"],
                                      style: TextStyle(
                                        fontSize: Get.width / 26,
                                        fontWeight: FontWeight.w400,
                                        color: AppColor.Button_color,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      width: Get.width / 3.2,
                                      height: Get.height / 25,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          Get.width / 60,
                                        ),
                                        color: AppColor.ditalis_conatiner,
                                      ),
                                      child: Center(
                                        child: Text(
                                          showjob[reversedIndex]["Working"],
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: Get.width / 30,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: Get.width / 40),
                                    Container(
                                      width: Get.width / 7,
                                      height: Get.height / 25,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          Get.width / 60,
                                        ),
                                        color: AppColor.ditalis_conatiner,
                                      ),
                                      child: Center(
                                        child: Text(
                                          showjob[reversedIndex]["Location"],
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: Get.width / 30,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: Get.width / 40),
                                    Container(
                                      width: Get.width / 5,
                                      height: Get.height / 25,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          Get.width / 60,
                                        ),
                                        color: AppColor.ditalis_conatiner,
                                      ),
                                      child: Center(
                                        child: Text(
                                          showjob[reversedIndex]["job_time"],
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: Get.width / 30,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: Get.width / 40),
                                    Container(
                                      width: Get.width / 5,
                                      height: Get.height / 25,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          Get.width / 60,
                                        ),
                                        color: AppColor.ditalis_conatiner,
                                      ),
                                      child: Center(
                                        child: Text(
                                          showjob[reversedIndex]["Exp"],
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: Get.width / 35,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: Get.height / 80),
                                Row(
                                  children: [
                                    Container(
                                      width: Get.width / 2.5,
                                      height: Get.height / 25,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          Get.width / 60,
                                        ),
                                        color: AppColor.ditalis_conatiner,
                                      ),
                                      child: Center(
                                        child: Text(
                                          showjob[reversedIndex]["Sallary"],
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: Get.width / 30,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: Get.width / 40),
                                    Container(
                                      width: Get.width / 5,
                                      height: Get.height / 25,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          Get.width / 60,
                                        ),
                                        color: AppColor.ditalis_conatiner,
                                      ),
                                      child: Center(
                                        child: Text(
                                          showjob[reversedIndex]["Hybrid"],
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: Get.width / 30,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: Get.width / 40),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  showjob[reversedIndex]["stats"],
                                  style: TextStyle(
                                    color: AppColor.subcolor,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
        ),
      ),
    );
  }
}
