// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hirexpert/view/utils/app_color.dart';
import 'package:hirexpert/view/utils/app_icon.dart';

class Creditplans extends StatelessWidget {
  const Creditplans({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Credit Plans', style: TextStyle(fontWeight: FontWeight.w600)),
        centerTitle: true,
      ),
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(color: AppColor.Full_body_color),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Get.width / 20),
          child: Column(
            children: [
              SizedBox(height: Get.height / 50),
              Text(
                textAlign: TextAlign.center,
                'When you purchase credit, your credits are automatically added to your Hirexpert account',
                style: TextStyle(color: AppColor.subcolor),
              ),
              SizedBox(height: Get.height / 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: Get.height / 3,
                    width: Get.width / 2.5,
                    child: Column(
                      children: [
                        Text('100 Credits', style: TextStyle(fontWeight: FontWeight.w600)),
                        SizedBox(height: Get.height / 50),
                        SvgPicture.asset(AppIcons.doo),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: Get.height / 3,
                    width: Get.width / 2.5,
                    child: Column(
                      children: [
                        SvgPicture.asset(AppIcons.shopping),
                        SizedBox(height: Get.height / 50),
                        Text('100 Credits', style: TextStyle(fontWeight: FontWeight.w600)),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
