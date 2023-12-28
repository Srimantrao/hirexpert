// ignore_for_file: file_names, camel_case_types

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:hirexpert/view/utils/app_String.dart';
import 'package:hirexpert/view/utils/app_color.dart';
import 'Inputing.dart';

class Personal_information extends StatelessWidget {
  const Personal_information({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        decoration: BoxDecoration(color: AppColor.Full_body_color),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Get.width / 50),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: Get.height / 50),
                Text(
                  EditProfile_text.CV,
                  style: TextStyle(
                    fontSize: Get.width / 22,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  EditProfile_text.your,
                  style: TextStyle(
                    fontSize: Get.width / 27,
                    fontWeight: FontWeight.w400,
                    color: AppColor.subcolor,
                  ),
                ),
                SizedBox(height: Get.height / 50),
                DottedBorder(
                  color: AppColor.Bottam_color,
                  dashPattern: const [10, 10],
                  child: SizedBox(
                    height: Get.height / 6,
                    width: Get.width,
                    child: const Center(
                      child: Text(
                        textAlign: TextAlign.center,
                        EditProfile_text.Upload,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: Get.height / 50),
                const Inputing(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
