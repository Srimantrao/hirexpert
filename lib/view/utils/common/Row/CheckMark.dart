// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../app_color.dart';

class CheckMark extends StatelessWidget {
  final String rowText;
  final bool valueType;
  final void Function(bool?) onChanged;
  const CheckMark({
    super.key,
    required this.rowText,
    required this.valueType,
    required this.onChanged
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          side: BorderSide(color: AppColor.subcolor),
          activeColor: AppColor.Button_color,
          value: valueType,
          onChanged: onChanged,
        ),
        SizedBox(
          width: Get.width/1.3,
          child: Text(
            rowText,
            style: TextStyle(
              fontSize: Get.width / 24,
            ),
          ),
        ),
      ],
    );
  }
}
