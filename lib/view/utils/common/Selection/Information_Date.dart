// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../app_String.dart';
import '../../app_color.dart';
import '../../app_icon.dart';

class Date_time extends StatelessWidget {
  final TextEditingController controller;
  final String hintString;
  const Date_time({
    super.key,
    required this.controller,
    required this.hintString,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              backgroundColor: AppColor.Full_body_color,
              elevation: 0,
              title: Container(
                height: Get.height / 20,
                width: Get.width,
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
                    const SizedBox(),
                    Text(
                      Profile_Text.Starting_date,
                      style: TextStyle(
                        fontSize: Get.width / 23,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: SvgPicture.asset(AppIcons.cancel),
                    )
                  ],
                ),
              ),
              content: Container(
                height: Get.height / 2,
                width: Get.width,
                decoration: BoxDecoration(
                  color: AppColor.Full_body_color,
                ),
                child: DatePickerDialog(
                  firstDate: DateTime(1990),
                  lastDate: DateTime(2030),
                ),
              ),
            );
          },
        );
      },
      readOnly: true,
      controller: controller,
      decoration: InputDecoration(
        suffixIcon: Icon(
          Icons.calendar_month_sharp,
          color: AppColor.select_check_color,
        ),
        hintText: Profile_Text.Enter_Year,
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppColor.select_check_color,
          ),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppColor.select_check_color,
          ),
        ),
      ),
    );
  }
}
