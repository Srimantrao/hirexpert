// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../app_String.dart';
import '../../app_color.dart';

class Additional extends StatelessWidget {
  const Additional({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(
          color: AppColor.Full_body_color,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: Get.height / 30),
            Text(
              EditProfile_text.Qution,
              style: TextStyle(
                color: AppColor.subcolor,
                fontWeight: FontWeight.w700,
                fontSize: Get.width / 25,
              ),
            ),
            Text(
              EditProfile_text.Aanwasr,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: Get.width / 25,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        width: Get.width / 4,
        height: Get.height / 18,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            Get.width / 40,
          ),
          color: AppColor.Button_color,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Get.width / 30,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.edit,
                color: AppColor.Full_body_color,
              ),
              Text(
                EditProfile_text.Edit,
                style: TextStyle(
                  fontSize: Get.width / 25,
                  fontWeight: FontWeight.w600,
                  color: AppColor.Full_body_color,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
