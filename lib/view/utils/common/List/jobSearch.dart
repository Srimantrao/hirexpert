import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../app_String.dart';
import '../../app_color.dart';
import '../../app_icon.dart';

class JobSearch extends StatefulWidget {
  const JobSearch({super.key});

  @override
  State<JobSearch> createState() => _JobSearchState();
}

class _JobSearchState extends State<JobSearch> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
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
                        color: AppColor.Small_container_frist,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: SvgPicture.asset(AppIcons.pro1),
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
                            Search_text.Mobile,
                            style: TextStyle(
                              color: AppColor.subcolor,
                            ),
                          ),
                          SizedBox(width: Get.width / 3),
                          SvgPicture.asset(AppIcons.save),
                        ],
                      ),
                      Text(
                        Search_text.React,
                        style: TextStyle(
                          fontSize: Get.width / 23,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        Search_text.SlPATIL,
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
                          borderRadius:
                          BorderRadius.circular(Get.width / 60),
                          color: AppColor.ditalis_conatiner,
                        ),
                        child: Center(
                          child: Text(
                            Search_text.day,
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
                            Search_text.Surat,
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
                          borderRadius:
                          BorderRadius.circular(Get.width / 60),
                          color: AppColor.ditalis_conatiner,
                        ),
                        child: Center(
                          child: Text(
                            Search_text.Full,
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
                          borderRadius:
                          BorderRadius.circular(Get.width / 60),
                          color: AppColor.ditalis_conatiner,
                        ),
                        child: Center(
                          child: Text(
                            Search_text.Year,
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
                          borderRadius:
                          BorderRadius.circular(Get.width / 60),
                          color: AppColor.ditalis_conatiner,
                        ),
                        child: Center(
                          child: Text(
                            Search_text.lake,
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
                          borderRadius:
                          BorderRadius.circular(Get.width / 60),
                          color: AppColor.ditalis_conatiner,
                        ),
                        child: Center(
                          child: Text(
                            Search_text.Hybrid,
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
                    Search_text.Days,
                    style: TextStyle(
                      color: AppColor.subcolor,
                    ),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
