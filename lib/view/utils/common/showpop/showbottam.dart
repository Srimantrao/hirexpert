// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../app_color.dart';
import '../../app_icon.dart';

class ShowBottom {
  static showbottam({
    required BuildContext context,
    required String heding,
    required Widget country,
    required Widget state,
    required bool coundition,
  }) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (BuildContext context, void Function(void Function()) setState) {
            return Container(
              height: Get.height / 1.1,
              width: Get.width,
              decoration: BoxDecoration(
                color: AppColor.Full_body_color,
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: Get.width / 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: Get.height / 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(),
                        Text(
                          heding,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: Get.width / 23,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.back();
                          },
                          child: SvgPicture.asset(AppIcons.cancel),
                        ),
                      ],
                    ),
                    SizedBox(height: Get.height / 50),
                    Divider(
                      thickness: 1,
                      color: AppColor.subcolor,
                    ),
                    SizedBox(height: Get.height / 50),
                    Expanded(
                      child: Row(
                        children: [
                          SizedBox(
                            width: Get.width / 2.5,
                            child: country,
                          ),
                          SizedBox(width: Get.width / 30),
                          (coundition)
                              ? Expanded(
                            child: SizedBox(
                              width: Get.width / 2.5,
                              child: state,
                            ),
                          )
                              : SizedBox(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
