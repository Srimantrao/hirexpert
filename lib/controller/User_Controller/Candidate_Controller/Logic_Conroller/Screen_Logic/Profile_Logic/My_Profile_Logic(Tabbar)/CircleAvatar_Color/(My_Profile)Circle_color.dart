// ignore_for_file: camel_case_types, file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:hirexpert/view/utils/app_icon.dart';


class Change_Circle extends StatelessWidget {
  final bool Condition;

  const Change_Circle({super.key, required this.Condition});

  @override
  Widget build(BuildContext context) {
    return (Condition)
        ? SvgPicture.asset(AppIcons.select, height: Get.height / 33, width: Get.width / 33)
        : SvgPicture.asset(AppIcons.Unselect, height: Get.height / 33, width: Get.width / 33);
  }
}
