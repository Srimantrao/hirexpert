// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../app_String.dart';
import '../../app_color.dart';

class Inputfild extends StatelessWidget {
  final String labal;
  final String hint;
  final Widget? suffixIcon;
  final TextEditingController controller;
  final bool? obscureText;
  final TextInputType? keyboardType;
  final void Function(String)? onChanged;
  final void Function()? onTap;

  const Inputfild({
    super.key,
    required this.labal,
    required this.hint,
    this.suffixIcon,
    required this.controller,
    this.obscureText,
    this.keyboardType,
    this.onChanged,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labal,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: Get.width / 22,
          ),
        ),
        TextField(
          onTap: onTap,
          onChanged: onChanged,
          obscureText: obscureText ?? false,
          keyboardType: keyboardType,
          controller: controller,
          decoration: InputDecoration(
            suffixIcon: suffixIcon,
            hintText: hint,
            hintStyle: TextStyle(
              color: AppColor.subcolor,
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: AppColor.offButton_color,
              ),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: AppColor.offButton_color,
              ),
            ),
          ),
        )
      ],
    );
  }
}
