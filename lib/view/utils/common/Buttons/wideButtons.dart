// ignore_for_file: file_names, non_constant_identifier_names, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../app_color.dart';

class WideButton extends StatelessWidget {
  final String text;

  final String Icon;

  const WideButton({
    super.key,
    required this.text,
    required this.Icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height / 15,
      width: Get.width,
      decoration: BoxDecoration(
        border: Border.all(color: AppColor.Button_color, width: 2,),
        borderRadius: BorderRadius.circular(Get.width / 45),
        color: AppColor.Button_color,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(Icon, color: AppColor.Full_body_color),
          SizedBox(width: Get.width / 30),
          Text(text, style: TextStyle(fontSize: Get.width / 26, color: AppColor.Full_body_color))
        ],
      ),
    );
  }
}

class OnButtons extends StatelessWidget {
  final Color Button_Color;
  final Color? Boder_Button_Color;
  final String btn_name;
  final void Function()? onTap;

  const OnButtons({super.key, required this.Button_Color, required this.btn_name, this.onTap, this.Boder_Button_Color,});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: Get.height / 15,
        width: Get.width,
        decoration: BoxDecoration(
          border: Border.all(color: Boder_Button_Color ?? AppColor.Button_color, width: 2,),
          borderRadius: BorderRadius.circular(Get.width / 45),
          color: Button_Color,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: Get.width / 30),
            Text(btn_name, style: TextStyle(fontSize: Get.width / 26, fontWeight: FontWeight.w600, color: AppColor.Full_body_color,),)
          ],
        ),
      ),
    );
  }
}
