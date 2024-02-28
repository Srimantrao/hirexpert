// ignore_for_file: camel_case_types, file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../../../screen/Candidate/collection/specialization.dart';
import '../../../../app_String.dart';
import '../../../../app_color.dart';
import '../../../../app_icon.dart';

class Extra_info extends StatefulWidget {
  const Extra_info({super.key});

  @override
  State<Extra_info> createState() => _Extra_infoState();
}

class _Extra_infoState extends State<Extra_info> {

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
        child: Column(
          crossAxisAlignment:
          CrossAxisAlignment.start,
          children: [
            SizedBox(height: Get.height / 50),

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
                focusedBorder:
                UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColor.Buttom_color,
                  ),
                ),
                enabledBorder:
                UnderlineInputBorder(
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
                hintText: Profile_Text.Company,
                hintStyle: TextStyle(
                  fontSize: Get.width / 24,
                ),
                focusedBorder:
                UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColor.Buttom_color,
                  ),
                ),
                enabledBorder:
                UnderlineInputBorder(
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
                hintText: Profile_Text.What,
                hintStyle: TextStyle(
                  fontSize: Get.width / 24,
                ),
                focusedBorder:
                UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColor.Buttom_color,
                  ),
                ),
                enabledBorder:
                UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColor.Buttom_color,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

      //Buttons
      floatingActionButton: InkWell(
        onTap: (){
          Get.to(()=>const Specialization());
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
            mainAxisAlignment:
            MainAxisAlignment.spaceAround,
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
