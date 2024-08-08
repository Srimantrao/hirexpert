// ignore_for_file: camel_case_types, file_names, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hirexpert/view/utils/app_color.dart';

import '../../../../app_String.dart';

class Container_tab extends StatelessWidget {
  final String text;
  final Color tabcolor;
  final Color? textcolor;

  Container_tab({super.key, required this.text, required this.tabcolor, this.textcolor});

  @override
  Widget build(BuildContext context) {

    return Container(
      height: Get.height / 18,
      width: Get.width / 3.8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Get.width / 50),
        color: tabcolor,
      ),
      child: Center(
        child: Text(text, style: TextStyle(fontSize: Get.width / 27,color: textcolor ?? AppColor.Full_body_color)),
      ),
    );
  }
}

