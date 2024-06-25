// ignore_for_file: camel_case_types, file_names, non_constant_identifier_names, prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hirexpert/controller/API_Cobtroller/Candidate/Collction/Login/login_API_controller.dart';
import 'package:hirexpert/controller/API_handler/Candidate/Menu/profile/Extra_info.dart';
import 'package:hirexpert/view/utils/app_constance.dart';
import 'package:hirexpert/view/utils/app_loder.dart';
import '../../../../../screen/Candidate/collection/specialization.dart';
import '../../../../app_String.dart';
import '../../../../app_color.dart';
import '../../../../app_icon.dart';

class Extra_info extends StatelessWidget {
  final ExtraInfo Extra = Get.put(ExtraInfo());

  Extra_info({super.key});

  TextEditingController whichJob = TextEditingController();

  TextEditingController Specializationss = TextEditingController();

  TextEditingController Skillset = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height / 1.54,
        width: Get.width,
        decoration: BoxDecoration(
          color: AppColor.Full_body_color,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Get.width / 30,
          ),
          child: Obx(
            () {
              if (Extra.login.isLodingvalue.value) {
                return Center(
                  child: Image.asset(AppLoder.infinityloder_without_background),
                );
              } else if (Extra.login.option_data['data'] == null ||
                  Extra.login.option_data == null) {
                return Center(
                  child: Text(API_Error.null_data),
                );
              } else {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: Get.height / 30),

                    //Which of these most closely describe your job !
                    Text(
                      Profile_Text.Moust,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: Get.width / 24,
                        color: AppColor.subcolor,
                      ),
                    ),
                    TextField(
                      controller: whichJob,
                      decoration: InputDecoration(
                        hintText: Profile_Text.Moust_hint,
                        hintStyle: TextStyle(
                          fontSize: Get.width / 24,
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColor.Buttom_color,
                          ),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColor.Buttom_color,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: Get.height / 50),

                    //Select your Specialization / interest
                    Text(
                      Profile_Text.specializationss,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: Get.width / 24,
                        color: AppColor.subcolor,
                      ),
                    ),
                    TextField(
                      controller: Specializationss,
                      decoration: InputDecoration(
                        hintText: Extra.login.option_data['data']['UserDetails']
                            ['QuestionList'][0]['AnswerArr'][0],
                        hintStyle: TextStyle(
                          fontSize: Get.width / 24,
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColor.Buttom_color,
                          ),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColor.Buttom_color,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: Get.height / 50),

                    //What is Your Primary Skilled
                    Text(
                      Profile_Text.What,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: Get.width / 24,
                        color: AppColor.subcolor,
                      ),
                    ),
                    TextField(
                      controller: Skillset,
                      decoration: InputDecoration(
                        hintText: Extra.login.option_data['data']['UserDetails']
                            ['QuestionList'][0]['AnswerArr'][0],
                        hintStyle: TextStyle(
                          fontSize: Get.width / 24,
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColor.Buttom_color,
                          ),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColor.Buttom_color,
                          ),
                        ),
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
      floatingActionButton: InkWell(
        onTap: () {
          Get.to(() => const Candidate_Specialization());
        },
        child: Container(
          height: Get.height / 20,
          width: Get.width / 4,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              Get.height / 80,
            ),
            color: AppColor.Button_color,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SvgPicture.asset(AppIcons.Edit),
              Text(
                "Edit",
                style: TextStyle(
                  color: AppColor.Full_body_color,
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: AppColor.Full_body_color,
    );
  }
}
