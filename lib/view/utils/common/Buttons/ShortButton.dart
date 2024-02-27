// ignore_for_file: camel_case_types, file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
// ignore: unnecessary_import
import 'package:get/get_core/src/get_main.dart';

import '../../app_String.dart';
import '../../app_color.dart';

class OnButtons_short extends StatelessWidget {
  final String btn_name;
  final Color Border_color;
  final Color btn_color;
  final Color text_color;
  final double? width;
  final void Function()? onTap;

  const OnButtons_short({
    super.key,
    required this.btn_name,
    required this.Border_color,
    required this.btn_color,
    required this.text_color,
    this.onTap,
    this.width
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){

      },
      child: Container(
        height: Get.height / 16,
        width: width ?? Get.width / 2.5,
        decoration: BoxDecoration(
          border: Border.all(
            color: Border_color,
          ),
          borderRadius: BorderRadius.circular(Get.width / 30),
          color: btn_color,
        ),
        child: Center(
          child: Text(
            btn_name,
            style: TextStyle(
              fontSize: Get.width / 25,
              color: text_color,
            ),
          ),
        ),
      ),
    );
  }
}
