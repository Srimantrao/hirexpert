// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../app_color.dart';

class Info extends StatelessWidget {
  final String info;
  const Info({super.key, required this.info});

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
          Text(
            info,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: Get.width / 25,
            ),
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
