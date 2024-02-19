// ignore_for_file: file_names, camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../view/utils/app_color.dart';

//Error
class MyProfile_Error extends StatelessWidget {
  final bool throww;
  final String Error;

  const MyProfile_Error({
    super.key,
    required this.throww,
    required this.Error,
  });

  @override
  Widget build(BuildContext context) {
    return (throww)
        ? const SizedBox()
        : Text(
            Error,
            style: TextStyle(
              fontSize: Get.width / 27,
              color: AppColor.Error_color,
            ),
          );
  }
}
