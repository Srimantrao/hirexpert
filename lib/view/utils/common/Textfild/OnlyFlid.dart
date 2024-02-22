// ignore_for_file: file_names

import 'package:flutter/material.dart';
import '../../app_color.dart';

class OnlyFild extends StatelessWidget {
  final String hintText;
  final Widget? prefixIcon;

  const OnlyFild({
    super.key,
    required this.hintText,
    this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          color: AppColor.subcolor,
        ),
        prefixIcon: prefixIcon,
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppColor.Bottam_color,
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppColor.Bottam_color,
          ),
        ),
      ),
    );
  }
}
