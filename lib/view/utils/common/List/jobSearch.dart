// ignore_for_file: non_constant_identifier_names, camel_case_types, file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../app_String.dart';
import '../../app_color.dart';
import '../../app_icon.dart';

class JobSearch extends StatelessWidget {
  final String Icon;
  final Color Color_container;
  final String Job_Tital;
  final String Language;
  final String Commpany;
  final String Working;
  final String Location;
  final String Job_time;
  final String Exp;
  final String lake;
  final String Hybrid;
  final String stats;
  final String saveicon;
  final BorderSide top;
  final Widget? savechild;
  final void Function()? onTap;
  final void Function()? saveonTap;

  const JobSearch({
    super.key,
    required this.Icon,
    required this.Color_container,
    required this.Job_Tital,
    required this.Language,
    required this.Commpany,
    required this.Working,
    required this.Location,
    required this.Job_time,
    required this.Exp,
    required this.lake,
    required this.Hybrid,
    required this.stats,
    this.onTap,
    required this.saveicon,
    required this.top,
    this.saveonTap,
    this.savechild,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: Get.width / 50,
        ),
        child: Container(
          height: Get.height / 4.3,
          width: Get.width,
          decoration: BoxDecoration(
            border: Border(
              top: top,
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
                        color: Color_container,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: SvgPicture.asset(Icon),
                      ),
                    ),
                  ),
                  SizedBox(width: Get.width/50),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            Job_Tital,
                            style: TextStyle(
                              color: AppColor.subcolor,
                            ),
                          ),
                          SizedBox(width: Get.width / 3.4),
                          InkWell(
                            onTap: saveonTap,
                            child: SvgPicture.asset(saveicon),
                          ),
                        ],
                      ),
                      Text(
                        Language,
                        style: TextStyle(
                          fontSize: Get.width / 23,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        Commpany,
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
                            Working,
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
                            Location,
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
                            Job_time,
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
                            Exp,
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
                            lake,
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
                            Hybrid,
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
                    stats,
                    style: TextStyle(
                      color: AppColor.subcolor,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
