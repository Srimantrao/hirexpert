// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hirexpert/view/utils/app_color.dart';
import 'package:hirexpert/view/utils/common/Buttons/wideButtons.dart';
import 'package:hirexpert/view/utils/common/Textfild/Inputfild.dart';

class Myprofile extends StatefulWidget {
  const Myprofile({super.key});

  @override
  State<Myprofile> createState() => _MyprofileState();
}

class _MyprofileState extends State<Myprofile> {
  TextEditingController FristName_Controller = TextEditingController();
  TextEditingController LastName_Controller = TextEditingController();
  TextEditingController Designation_Controller = TextEditingController();
  TextEditingController Phone_Controller = TextEditingController();
  TextEditingController Email_Controller = TextEditingController();
  TextEditingController Aboutme_Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(color: AppColor.Full_body_color),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: Get.height/50),
              Text("Information", style: TextStyle(fontSize: Get.height / 45, fontWeight: FontWeight.w600)),
              SizedBox(height: Get.height / 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: Get.width / 2.5,
                    child: Inputfild(labal: 'FristName', hint: 'FristName', controller: FristName_Controller),
                  ),
                  SizedBox(
                    width: Get.width / 2.5,
                    child: Inputfild(labal: 'LastName', hint: 'LastName', controller: LastName_Controller),
                  ),
                ],
              ),
              SizedBox(height: Get.height / 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: Get.width / 2.5,
                    child: Inputfild(labal: 'Designation Name', hint: 'Designation Name', controller: Designation_Controller),
                  ),
                  SizedBox(
                    width: Get.width / 2.5,
                    child: Inputfild(labal: 'Phone Number', hint: 'Phone Number', controller: Phone_Controller),
                  ),
                ],
              ),
              SizedBox(height: Get.height / 50),
              Inputfild(labal: 'Email Id:', hint: 'Email Id:', controller: Email_Controller),
              SizedBox(height: Get.height / 30),
              Text("About Me", style: TextStyle(fontSize: Get.height / 45, fontWeight: FontWeight.w600)),
              SizedBox(height: Get.height/50),
              SizedBox(
                height: Get.height / 7,
                child: TextField(
                  maxLines: null,
                  expands: true,
                  controller: Aboutme_Controller,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: AppColor.Bottam_color)),
                    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: AppColor.Bottam_color)),
                  ),
                ),
              ),
              SizedBox(height: Get.height / 30),
              OnButtons(Button_Color: AppColor.Button_color, btn_name: 'Save'),
              SizedBox(height: Get.height / 30),
            ],
          ),
        ),
      ),
    );
  }
}
