// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hirexpert/controller/API_Controller/Candidate/Collction/Login/login_API_controller.dart';
import 'package:hirexpert/view/utils/app_String.dart';
import 'package:hirexpert/view/utils/app_color.dart';
import 'package:hirexpert/view/utils/app_constance.dart';
import 'package:hirexpert/view/utils/common/Buttons/wideButtons.dart';
import 'package:hirexpert/view/utils/common/Textfild/Inputfild.dart';

class Myprofile extends StatefulWidget {
  const Myprofile({super.key});

  @override
  State<Myprofile> createState() => _MyprofileState();
}

class _MyprofileState extends State<Myprofile> {

  OptionApiController profile = Get.put(OptionApiController());

  @override
  void initState() {
    Future.microtask(() async {
      await profile.OptionApiController_fuction(
        Email: 'khageshsoni98@gmail.com',
        Password: Password_main.Pass.text,
        UserType: 'Company',
        Tokan: Tokan,
        CandidateId: Candidate,
      );
    });
    super.initState();
  }

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
              SizedBox(height: Get.height / 50),
              Text(My_Profile_text.Information, style: TextStyle(fontSize: Get.height / 45, fontWeight: FontWeight.w600)),
              SizedBox(height: Get.height / 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: Get.width / 2.5,
                    child: Inputfild(
                      labal: My_Profile_text.FristName,
                      hint: profile.option_data['data']['UserDetails']['FirstName'],
                      controller: TextEditingController(text: profile.option_data['data']['UserDetails']['FirstName']),
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(
                    width: Get.width / 2.5,
                    child: Inputfild(
                      labal: My_Profile_text.LastName,
                      hint: profile.option_data['data']['UserDetails']['LastName'],
                      controller: TextEditingController(text: profile.option_data['data']['UserDetails']['LastName']),
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
              SizedBox(height: Get.height / 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: Get.width / 2.5,
                    child: Inputfild(
                      labal: My_Profile_text.Designation_Name,
                      hint: profile.option_data['data']['UserDetails']['ComName'],
                      controller: TextEditingController(text: profile.option_data['data']['UserDetails']['ComName']),
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(
                    width: Get.width / 2.5,
                    child: Inputfild(
                      labal: My_Profile_text.Phone_Number,
                      hint: profile.option_data['data']['UserDetails']['Phone'],
                      controller: TextEditingController(text: profile.option_data['data']['UserDetails']['Phone']),
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
              SizedBox(height: Get.height / 50),
              Inputfild(
                labal: My_Profile_text.Email_Id,
                hint: profile.option_data['data']['UserDetails']['Email'],
                controller: TextEditingController(text: profile.option_data['data']['UserDetails']['Email']),
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              SizedBox(height: Get.height / 30),
              Text("About Me", style: TextStyle(fontSize: Get.height / 45, fontWeight: FontWeight.w600)),
              SizedBox(height: Get.height / 50),
              SizedBox(
                height: Get.height / 7,
                child: TextField(
                  textAlign: TextAlign.start,
                  maxLines: null,
                  expands: true,
                  style: TextStyle(fontWeight: FontWeight.w600),
                  onSubmitted: (value) => profile.option_data['data']['UserDetails']['BIO'],
                  controller: TextEditingController(text: profile.option_data['data']['UserDetails']['BIO']),
                  decoration: InputDecoration(
                    hintText: profile.option_data['data']['UserDetails']['BIO'],
                    enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: AppColor.Bottam_color)),
                    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: AppColor.Bottam_color)),
                  ),
                ),
              ),
              SizedBox(height: Get.height / 30),
              OnButtons(
                onTap: () {},
                Button_Color: AppColor.Button_color,
                btn_name: 'Save',
              ),
              SizedBox(height: Get.height / 30),
            ],
          ),
        ),
      ),
    );
  }
}
