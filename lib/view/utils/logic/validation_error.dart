// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:hirexpert/view/utils/app_color.dart';

class valiadtion_error extends StatelessWidget {
  final bool condiation;
  final String Error;

  const valiadtion_error({super.key, required this.condiation, required this.Error});

  @override
  Widget build(BuildContext context) {
    return (condiation)
        ? Text(
            condiation ? Error : "",
            style: TextStyle(
              fontSize: Get.width / 25,
              color: AppColor.Error_color,
            ),
          )
        : const SizedBox();
  }
}
