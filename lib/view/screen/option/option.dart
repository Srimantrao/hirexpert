// ignore_for_file: non_constant_identifier_names

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hirexpert/controller/OptionController/SelectButton.dart';
import 'package:hirexpert/view/utils/app_String.dart';
import 'package:hirexpert/view/utils/app_color.dart';
import 'package:hirexpert/view/utils/app_icon.dart';
import 'package:hirexpert/view/utils/common/Buttons/wideButtons.dart';
import 'package:provider/provider.dart';

class Option extends StatefulWidget {
  const Option({super.key});

  @override
  State<Option> createState() => _OptionState();
}

class _OptionState extends State<Option> {
  @override
  Widget build(BuildContext context) {
    final select = Provider.of<SelectButtonsController>(
      context,
      listen: false,
    );
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(
          color: AppColor.Full_body_color,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Get.width / 50,
          ),
          child: Consumer<SelectButtonsController>(
            builder: (BuildContext context, value, Widget? child) {
              return Column(
                children: [
                  Image.asset(AppIcons.logo, scale: 4),
                  SizedBox(
                    width: Get.width / 1.2,
                    child: Text(
                      textAlign: TextAlign.center,
                      Option_text.hed,
                      style: TextStyle(
                        fontSize: Get.width / 17,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(height: Get.height / 50),
                  SizedBox(
                    width: Get.width / 1.19,
                    child: Text(
                      textAlign: TextAlign.center,
                      Option_text.subhed,
                      style: TextStyle(
                        fontSize: Get.width / 27,
                        fontWeight: FontWeight.w400,
                        color: AppColor.subcolor,
                      ),
                    ),
                  ),
                  SizedBox(height: Get.height / 20),
                  InkWell(
                    onTap: () {
                      select.Select();
                    },
                    child: WideButton(
                      Button_color: (select.SelectButton)
                          ? AppColor.Full_body_color
                          : AppColor.Button_color,
                      Button_Boder_color: (select.SelectButton)
                          ? AppColor.offButton_color
                          : AppColor.Button_color,
                      text: Option_text.Employer,
                      Icon: AppIcons.Employee,
                      text_color: (select.SelectButton)
                          ? AppColor.subcolor
                          : AppColor.Full_body_color,
                      Icon_color: (select.SelectButton)
                          ? AppColor.offButton_color
                          : AppColor.Full_body_color,
                    ),
                  ),
                  SizedBox(height: Get.height / 50),
                  InkWell(
                    onTap: () {
                      select.SelectSecond();
                    },
                    child: WideButton(
                      Button_color: (select.SelectButtonSecond)
                          ? AppColor.Full_body_color
                          : AppColor.Button_color,
                      Button_Boder_color: (select.SelectButtonSecond)
                          ? AppColor.offButton_color
                          : AppColor.Button_color,
                      text: Option_text.Candidate,
                      Icon: AppIcons.briefcase,
                      text_color: (select.SelectButtonSecond)
                          ? AppColor.subcolor
                          : AppColor.Full_body_color,
                      Icon_color: (select.SelectButtonSecond)
                          ? AppColor.offButton_color
                          : AppColor.Full_body_color,
                    ),
                  ),
                  SizedBox(height: Get.height / 20),
                  Text(
                    textAlign: TextAlign.center,
                    Option_text.ThenkYOU,
                    style: TextStyle(
                      fontSize: Get.width / 27,
                      color: AppColor.subcolor,
                    ),
                  ),
                  SizedBox(height: Get.height / 15),
                  Text(
                    (select.Error) ? select.ShowError : "",
                    style: TextStyle(
                      fontSize: Get.width / 25,
                      color: AppColor.Error_color,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
