import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../app_String.dart';
import '../../app_color.dart';
import '../../app_icon.dart';

class Showdialog {
  static showdialod(double? height, context, Widget colamWidget,
      String hedingtext, void Function() onTabs) {
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
                Text(
                  hedingtext,
                  style: TextStyle(
                    fontSize: Get.width / 24,
                    fontWeight: FontWeight.w600,
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
