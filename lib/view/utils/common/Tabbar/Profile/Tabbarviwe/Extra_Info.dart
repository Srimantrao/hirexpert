// ignore_for_file: camel_case_types, file_names, non_constant_identifier_names, prefer_const_constructors, must_be_immutable, unnecessary_null_comparison, prefer_const_constructors_in_immutables, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hirexpert/controller/API_Controller/Candidate/Collction/Login/login_API_controller.dart';
import 'package:hirexpert/controller/Save_Controller/Candidate_state/Menu/Profile/Extra_Info/Extra_info.dart';
import 'package:hirexpert/view/screen/Candidate/collection/specialization.dart';
import 'package:hirexpert/view/utils/app_loder.dart';
import '../../../../../../controller/API_Controller/Candidate/Profile/Details_profile/Details_Profile.dart';
import '../../../../../../controller/API_handler/Candidate/Menu/profile/Extra_info.dart';
import '../../../../app_String.dart';
import '../../../../app_color.dart';
import '../../../../app_constance.dart';
import '../../../../app_icon.dart';

class Extra_info extends StatelessWidget {
  ExtraHandaler Extra = Get.put(ExtraHandaler());
  Extra_info({super.key});

  @override
  Widget build(BuildContext context) {
    Extra.onInit();
    return Scaffold(
      body: Container(
        width: Get.width,
        decoration: BoxDecoration(color: AppColor.Full_body_color),
        child: Obx(() {
           if (Extra.Details.isloding.value) {
             return Center(child: Image.asset(AppLoder.infinityloder_without_background, scale: Get.width / 250));
           } else if (Extra.Details.DetailsProfile_data == null || Extra.Details.DetailsProfile_data['data'] == null) {
             return Center(child: Text(API_Error.null_data));
           } else if (Extra.Details.DetailsProfile_data['data']['QuestionList'] == null || Extra.Details.DetailsProfile_data['data']['QuestionList'].isEmpty) {
             return Center(child: Text("No questions available"));
           } else {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: Get.height / 30),

                  //Which of these most closely describe your job !
                  Text(Profile_Text.Moust, style: TextStyle(fontWeight: FontWeight.w400, fontSize: Get.width / 24, color: AppColor.subcolor)),
                  TextField(
                    readOnly: true,
                    decoration: InputDecoration(
                      hintText: Profile_Text.Moust_hint,
                      hintStyle: TextStyle(fontSize: Get.width / 24),
                      focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: AppColor.Buttom_color)),
                      enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: AppColor.Buttom_color)),
                    ),
                  ),
                  SizedBox(height: Get.height / 50),

                  //Select your Specialization / interest
                  Text(Extra.Details.DetailsProfile_data['data']?['QuestionList']?[0]?['LabelName']!, style: TextStyle(fontWeight: FontWeight.w400, fontSize: Get.width / 24, color: AppColor.subcolor)),
                  TextField(
                    readOnly: true,
                    controller: TextEditingController(text: Extra.Details.DetailsProfile_data['data']['QuestionList'][0]['Answer'][0]),
                    decoration: InputDecoration(
                      hintText: Extra.Details.DetailsProfile_data['data']?['QuestionList']?[0]?['Answer']?[0]!,
                      hintStyle: TextStyle(fontSize: Get.width / 24),
                      focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: AppColor.Buttom_color)),
                      enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: AppColor.Buttom_color)),
                    ),
                  ),
                  SizedBox(height: Get.height / 50),

                  //What is Your Primary Skilled
                  Text(Extra.Details.DetailsProfile_data['data']?['QuestionList']?[1]?['LabelName']!, style: TextStyle(fontWeight: FontWeight.w400, fontSize: Get.width / 24, color: AppColor.subcolor)),
                  TextField(
                    readOnly: true,
                    controller: TextEditingController(text: Extra.Details.DetailsProfile_data['data']?['QuestionList']?[1]?['Answer']?[0]!),
                    decoration: InputDecoration(
                      hintText: Extra.Details.DetailsProfile_data['data']?['QuestionList'][1]?['Answer']?[0]!,
                      hintStyle: TextStyle(fontSize: Get.width / 24),
                      focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: AppColor.Buttom_color,)),
                      enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: AppColor.Buttom_color)),
                    ),
                  ),
                  SizedBox(height: Get.height / 50),
                ],
              );
            }
          },
        ),
      ),

      //Buttons
      floatingActionButton: Obx((){
        if (Extra.Details.isloding.value) {
          return Center(child: SizedBox());
        } else{
          return GestureDetector(
            onTap: () {
              Get.to(()=> Candidate_Specialization(
                first_name: Extra.Details.DetailsProfile_data['data']['FirstName'],
                last_name: Extra.Details.DetailsProfile_data['data']['LastName'],
              ),duration: Duration(seconds: 1),transition: Transition.upToDown,curve: Curves.easeInOutExpo);
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
          );
        }
      }),
      backgroundColor: AppColor.Full_body_color,
    );
  }
}
