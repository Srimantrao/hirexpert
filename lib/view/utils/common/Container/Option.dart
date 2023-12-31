// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../app_color.dart';

class Collec extends StatelessWidget {
  final String text;
  final Color color;
  final Color textcolor;

  const Collec({
    super.key,
    required this.text,
    required this.color,
    required this.textcolor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height / 18,
      width: Get.width / 3.5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          Get.width / 30,
        ),
        color: color,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: Get.width / 80,
          vertical: Get.width / 100,
        ),
        child: Center(
          child: Text(
            textAlign: TextAlign.center,
            text,
            style: TextStyle(
              color: textcolor,
            ),
          ),
        ),
      ),
    );
  }
}
