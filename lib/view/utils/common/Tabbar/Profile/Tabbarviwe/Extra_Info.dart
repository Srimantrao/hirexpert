// ignore_for_file: camel_case_types, file_names, non_constant_identifier_names, prefer_const_constructors, must_be_immutable, unnecessary_null_comparison, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hirexpert/controller/API_Controller/Candidate/Collction/Login/login_API_controller.dart';
import 'package:hirexpert/controller/API_Controller/Candidate/Profile/Extrainfo/candidate_update_controller.dart';
import 'package:hirexpert/controller/API_handler/Candidate/Menu/profile/Extra_info.dart';
import 'package:hirexpert/view/utils/app_loder.dart';
import '../../../../app_String.dart';
import '../../../../app_color.dart';
import '../../../../app_icon.dart';

class Extra_info extends StatelessWidget {
  Extra_info({super.key});

  final ExtraInfo Extra = Get.put(ExtraInfo());

  TextEditingController whichJob = TextEditingController();
  TextEditingController Specializationss = TextEditingController();
  TextEditingController Skillset = TextEditingController();

  OptionApiController login = Get.put(OptionApiController());
  Candidate_update_controller candidateupdate = Get.put(Candidate_update_controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        decoration: BoxDecoration(color: AppColor.Full_body_color),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Get.width / 40),
          child: Obx(
            () {
              if (Extra.login.isLodingvalue.value) {
                return Center(child: Image.asset(AppLoder.infinityloder_without_background));
              } else if (Extra.login.option_data['data'] == null || Extra.login.option_data == null) {
                return Center(child: Text(API_Error.null_data));
              } else {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: Get.height / 30),

                    //Which of these most closely describe your job !
                    Text(Profile_Text.Moust, style: TextStyle(fontWeight: FontWeight.w400, fontSize: Get.width / 24, color: AppColor.subcolor)),
                    TextField(
                      controller: whichJob,
                      decoration: InputDecoration(
                        hintText: Profile_Text.Moust_hint,
                        hintStyle: TextStyle(fontSize: Get.width / 24),
                        focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: AppColor.Buttom_color)),
                        enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: AppColor.Buttom_color)),
                      ),
                    ),
                    SizedBox(height: Get.height / 50),

                    //Select your Specialization / interest
                    Text(Profile_Text.specializationss, style: TextStyle(fontWeight: FontWeight.w400, fontSize: Get.width / 24, color: AppColor.subcolor)),
                    TextField(
                      controller: Specializationss,
                      decoration: InputDecoration(
                        hintText: 'jh',
                        hintStyle: TextStyle(fontSize: Get.width / 24),
                        focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: AppColor.Buttom_color,)),
                        enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: AppColor.Buttom_color)),
                      ),
                    ),
                    SizedBox(height: Get.height / 50),

                    //What is Your Primary Skilled
                    Text(Profile_Text.What, style: TextStyle(fontWeight: FontWeight.w400, fontSize: Get.width / 24, color: AppColor.subcolor)),
                    TextField(
                      controller: Skillset,
                      decoration: InputDecoration(
                        hintText: 'jh',
                        // hintText: Extra.login.option_data['data']['UserDetails']['QuestionList'][0]['AnswerArr'][0],
                        hintStyle: TextStyle(fontSize: Get.width / 24),
                        focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: AppColor.Buttom_color)),
                        enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: AppColor.Buttom_color)),
                      ),
                    ),
                  ],
                );
              }
            },
          ),
        ),
      ),

      //Buttons
      floatingActionButton: GestureDetector(
        onTap: () {
          candidateupdate.Candidate_update_fuction(
              CandidateId: login.option_data['data']['UserDetails']['CandidateId'],
              FirstName: login.option_data['data']['UserDetails']['FirstName'],
              UserId: login.option_data['data']['UserDetails']['UserId'],
              Timezone: 'asia/kolkata'
          );
        },
        child: Container(
          height: Get.height / 20,
          width: Get.width / 4,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Get.height / 80),
            color: AppColor.Button_color,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SvgPicture.asset(AppIcons.Edit),
                Text("Edit", style: TextStyle(color: AppColor.Full_body_color)),
            ],
          ),
        ),
      ),
      backgroundColor: AppColor.Full_body_color,
    );
  }
}
