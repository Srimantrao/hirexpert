// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../app_color.dart';
import '../../app_icon.dart';

class Showdialog {
  static showdialod({
    double? height,
    context,
    required Widget colamWidget,
    required String hedingtext,
    required void Function() onTabs,
  }) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: AppColor.Full_body_color,
          elevation: 0,
          title: Container(
            height: Get.height / 15,
            width: Get.width,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: AppColor.Bottam_color,
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(),
                SizedBox(
                  width: Get.width / 2,
                  child: Text(
                    textAlign: TextAlign.center,
                    hedingtext,
                    style: TextStyle(
                      fontSize: Get.width / 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                InkWell(
                  onTap: onTabs,
                  child: SvgPicture.asset(AppIcons.cancel),
                ),
              ],
            ),
          ),
          content: Container(
            height: height ?? Get.height / 5,
            width: Get.width,
            decoration: BoxDecoration(
              color: AppColor.Full_body_color,
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: colamWidget,
            ),
          ),
        );
      },
    );
  }
}

class Pop_Container extends StatelessWidget {
  final String text;
  final String? text2;
  final bool? condition;

  const Pop_Container({
    super.key,
    required this.text,
    this.condition,
    this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.height / 20,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: AppColor.Bottam_color,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          (condition ?? false)
              ? Text(
                  text2 ?? '',
                  style: TextStyle(
                    color: AppColor.subcolor,
                    fontSize: Get.width / 27,
                  ),
                )
              : Text(
                  text,
                  style: TextStyle(
                    color: AppColor.subcolor,
                    fontSize: Get.width / 27,
                  ),
                ),
          (condition ?? false)
              ? SvgPicture.asset(
                  AppIcons.Right,
                  color: AppColor.subcolor,
                )
              : SvgPicture.asset(
                  AppIcons.down,
                  color: AppColor.subcolor,
                ),
        ],
      ),
    );
  }
}
