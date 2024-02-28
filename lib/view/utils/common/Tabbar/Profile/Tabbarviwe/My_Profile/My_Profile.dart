// ignore_for_file: camel_case_types, file_names, non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hirexpert/view/utils/app_String.dart';
import 'package:hirexpert/view/utils/app_color.dart';
import 'package:hirexpert/view/utils/common/Buttons/wideButtons.dart';
import 'Address.dart';
import 'Educational_Details.dart';
import 'Personal_Information.dart';
import 'Salary.dart';
import 'Upload_Your_CV.dart';
import 'Work_Experience.dart';
import 'Work_Location.dart';

class MY_Profile extends StatelessWidget {
  const MY_Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: Get.width / 70,
      ),
      child: Container(
        height: Get.height / 1.52,
        width: Get.width,
        decoration: BoxDecoration(
          color: AppColor.Full_body_color,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(height: Get.height / 60),

              //Upload Your CV
              const Upload_Yor_CV(),

              //Personal Information
              const Parsonal_Information(),

              //Adress
              const Address(),

              //Educational Details
              const Educational_Details(),

              //Work Experience
              const Work_Experience(),

              //Salary
              const Salary_Profile(),

              //Work Location
              const Work_Location(),
              SizedBox(height: Get.height / 10),

              //Buttons
              OnButtons(
                Button_Color: AppColor.Button_color,
                btn_name: Profile_Text.Buttion_name,
              )
            ],
          ),
        ),
      ),
    );
  }
}
