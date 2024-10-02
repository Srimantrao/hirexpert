// ignore_for_file: camel_case_types, file_names, non_constant_identifier_names, prefer_const_constructors, must_be_immutable, unnecessary_null_comparison, prefer_const_constructors_in_immutables, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hirexpert/controller/API_Controller/Candidate/Collction/Login/login_API_controller.dart';
import 'package:hirexpert/controller/Save_Controller/Candidate_state/Menu/Profile/Extra_Info/Extra_info.dart';
import 'package:hirexpert/view/screen/Candidate/collection/specialization.dart';
import 'package:hirexpert/view/utils/app_loder.dart';
import '../../../../../../controller/API_Controller/Candidate/Profile/Details_profile/Details_Profile.dart';
import '../../../../app_String.dart';
import '../../../../app_color.dart';
import '../../../../app_icon.dart';

class Extra_info extends StatefulWidget {

  Extra_info({super.key});

  @override
  State<Extra_info> createState() => _Extra_infoState();
}

class _Extra_infoState extends State<Extra_info> {
  @override
  void initState() {
    Future.microtask(()async{
      Details.DetailsProfile_Controls_Fuction(
        JobId: '7',
        Timezone: 'asia/kolkata',
        CandidateId: login.option_data['data']['UserDetails']['CandidateId'],
        IsInterview: '0',
        Tokan: login.option_data['data']['LoginToken'],
      );
    });
    super.initState();
  }

  ExtraInfos Extras = Get.put(ExtraInfos());
  DetailsProfile_Controls Details = Get.put(DetailsProfile_Controls());
  OptionApiController login = Get.put(OptionApiController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        decoration: BoxDecoration(color: AppColor.Full_body_color),
        child: Obx(() {
            if (Details.isloding.value) {
              return Center(child: Image.asset(AppLoder.infinityloder_without_background,scale: Get.width/250));
            } else if (Details.DetailsProfile_data['data'] == null || Details.DetailsProfile_data == null) {
              return Center(child: Text(API_Error.null_data));
            } else {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: Get.height / 30),

                  //Which of these most closely describe your job !
                  Text(Profile_Text.Moust, style: TextStyle(fontWeight: FontWeight.w400, fontSize: Get.width / 24, color: AppColor.subcolor)),
                  TextField(
                    readOnly: true,
                    controller: Extras.whichJob,
                    decoration: InputDecoration(
                      hintText: Profile_Text.Moust_hint,
                      hintStyle: TextStyle(fontSize: Get.width / 24),
                      focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: AppColor.Buttom_color)),
                      enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: AppColor.Buttom_color)),
                    ),
                  ),
                  SizedBox(height: Get.height / 50),

                  //Select your Specialization / interest
                  Text(Details.DetailsProfile_data['data']['QuestionList'][0]['LabelName'], style: TextStyle(fontWeight: FontWeight.w400, fontSize: Get.width / 24, color: AppColor.subcolor)),
                  TextField(
                    readOnly: true,
                    controller: TextEditingController(text: Details.DetailsProfile_data['data']['QuestionList'][0]['Answer'][0]),
                    decoration: InputDecoration(
                      hintText: Details.DetailsProfile_data['data']['QuestionList'][0]['Answer'][0],
                      hintStyle: TextStyle(fontSize: Get.width / 24),
                      focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: AppColor.Buttom_color)),
                      enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: AppColor.Buttom_color)),
                    ),
                  ),
                  SizedBox(height: Get.height / 50),

                  //What is Your Primary Skilled
                  Text(Details.DetailsProfile_data['data']['QuestionList'][1]['LabelName'], style: TextStyle(fontWeight: FontWeight.w400, fontSize: Get.width / 24, color: AppColor.subcolor)),
                  TextField(
                    readOnly: true,
                    controller: TextEditingController(text: Details.DetailsProfile_data['data']['QuestionList'][1]['Answer'][0]),
                    decoration: InputDecoration(
                      hintText: Details.DetailsProfile_data['data']['QuestionList'][1]['Answer'][0],
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
      floatingActionButton: GestureDetector(
        onTap: () {
          Get.to(()=> Candidate_Specialization(),duration: Duration(seconds: 1),transition: Transition.upToDown,curve: Curves.easeInOutExpo);
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
