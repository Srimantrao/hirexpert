// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hirexpert/view/utils/app_color.dart';

import '../app_icon.dart';

class NextThow extends StatelessWidget {
  final String text;
  final bool fontweight;
  final bool fontcolor;
  const NextThow({
    super.key,
    required this.text,
    required this.fontweight,
    required this.fontcolor,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: (fontweight) ? FontWeight.w700 : FontWeight.w300,
        color: (fontcolor) ? AppColor.Button_color : AppColor.Botton_color_hide,
        fontSize: Get.width / 22,
      ),
    );
  }
}

class NextArrow extends StatelessWidget {
  final bool arrowcolor;
  const NextArrow({super.key, required this.arrowcolor});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      AppIcons.Go,
      color: (arrowcolor) ? AppColor.Button_color : AppColor.Botton_color_hide,
    );
  }
}

