// ignore_for_file: file_names, camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../app_color.dart';
import '../../app_icon.dart';

//My Profile
class Info extends StatelessWidget {
  final String info;
  final Widget? CircleAvatar_color;
  final Widget dropicons;

  const Info({
    super.key,
    required this.info,
    this.CircleAvatar_color,
    required this.dropicons,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.height / 15,
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
          Row(
            children: [
              CircleAvatar_color ??
                  SvgPicture.asset(
                    AppIcons.Unselect,
                    height: Get.height / 33,
                    width: Get.width / 33,
                  ),
              SizedBox(width: Get.width / 50),
              Text(
                info,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: Get.width / 25,
                ),
              ),
            ],
          ),
          dropicons,
        ],
      ),
    );
  }
}

//Setting
class Info_Setting extends StatelessWidget {
  final String info;

  const Info_Setting({super.key, required this.info});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.height / 13,
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
          Row(
            children: [
              SizedBox(width: Get.width / 50),
              Text(
                info,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: Get.width / 25,
                ),
              ),
            ],
          ),
          const Icon(
            Icons.navigate_next_outlined,
            size: 30,
          ),
        ],
      ),
    );
  }
}
