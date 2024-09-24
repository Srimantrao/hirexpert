// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hirexpert/view/utils/app_GIF.dart';
import 'package:hirexpert/view/utils/app_color.dart';
import 'package:hirexpert/view/utils/app_icon.dart';

import '../../../controller/User_Controller/LogoController/logoController.dart';

class Logo extends StatelessWidget {
  final Logocontroller logo = Get.put(Logocontroller());

  Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        decoration: BoxDecoration(color: AppColor.Full_body_color),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(),
            TweenAnimationBuilder(tween: Tween<double>(begin: 0, end: 1),
              duration: const Duration(seconds: 3),
              builder: (BuildContext context, double value, Widget? child) {
                return Opacity(
                  opacity: value,
                  child: Image.asset(AppIcons.logo, scale: 4),
                );
              },
            ),
            Column(
              children: [
                Image.asset(App_GIF.Loding, height: Get.width / 10, width: Get.width / 10),
                SizedBox(height: Get.height / 50),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
