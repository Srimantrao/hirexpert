
// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:hirexpert/view/utils/app_color.dart';



//DropIcons
class DropIcons extends StatelessWidget {
  final bool conditional_name;

  const DropIcons({super.key, required this.conditional_name});

  @override
  Widget build(BuildContext context) {
    return (conditional_name)
        ? Icon(
      Icons.navigate_next,
      color: AppColor.select_check_color,
      size: 31,
    )
        : Icon(
      Icons.keyboard_arrow_down,
      color: AppColor.select_check_color,
      size: 31,
    );
  }
}