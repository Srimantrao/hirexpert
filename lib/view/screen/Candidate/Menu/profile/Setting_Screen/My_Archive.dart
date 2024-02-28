// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hirexpert/view/utils/app_String.dart';
import 'package:hirexpert/view/utils/app_color.dart';
import 'package:hirexpert/view/utils/common/Buttons/wideButtons.dart';

class My_Archive extends StatefulWidget {
  const My_Archive({super.key});

  @override
  State<My_Archive> createState() => _My_ArchiveState();
}

class _My_ArchiveState extends State<My_Archive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(Get.height / 15),
        child: AppBar(
          backgroundColor: AppColor.Full_body_color,
          automaticallyImplyLeading: false,
          title: Container(
            height: Get.height / 20,
            width: Get.width,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: AppColor.Buttom_color,
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Icons.navigate_before,
                  size: 35,
                ),
                Text(
                  My_Archive_text.titele,
                  style: TextStyle(
                    fontSize: Get.width / 20,
                  ),
                ),
                const SizedBox(),
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
          padding: EdgeInsets.symmetric(horizontal: Get.width / 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: Get.height / 50),
                  Text(
                    My_Archive_text.Body_tital,
                    style: TextStyle(
                      fontSize: Get.width / 18,
                    ),
                  ),
                  Text(
                    My_Archive_text.No_Job,
                    style: TextStyle(
                      color: AppColor.Error_color,
                      fontSize: Get.width / 20,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  OnButtons(
                    Button_Color: AppColor.Button_color,
                    btn_name: My_Archive_text.Search_Job,
                  ),
                  SizedBox(height: Get.height / 50),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
