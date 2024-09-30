// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hirexpert/controller/API_Controller/Candidate/Collction/Login/login_API_controller.dart';
import 'package:hirexpert/view/utils/app_String.dart';
import 'package:hirexpert/view/utils/app_color.dart';
import 'package:hirexpert/view/utils/app_icon.dart';
import 'package:hirexpert/view/utils/common/Buttons/wideButtons.dart';
import 'package:provider/provider.dart';
import '../../../controller/User_Controller/Option_Controller/SelectButton.dart';
import '../../utils/app_constance.dart';

class Option extends StatelessWidget {
  final OptionApiController option_api = Get.put(OptionApiController());

  Option({super.key});

  @override
  Widget build(BuildContext context) {
    final select = Provider.of<SelectButtonsController>(context, listen: false);
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(color: AppColor.Full_body_color),
        child: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: Get.width / 20),
              child: Consumer<SelectButtonsController>(
                builder: (BuildContext context, value, Widget? child) {
                  return Column(
                    children: [
                      SizedBox(height: Get.height / 10),
                      Image.asset(AppIcons.logo, scale: 5),
                      SizedBox(height: Get.height / 10),
                      SizedBox(
                        width: Get.width / 1.2,
                        child: Text(textAlign: TextAlign.center, Option_text.hed, style: TextStyle(fontSize: Get.width / 17, fontWeight: FontWeight.w600)),
                      ),
                      SizedBox(height: Get.height / 50),
                      SizedBox(
                        width: Get.width / 1.19,
                        child: Text(textAlign: TextAlign.center, Option_text.subhed, style: TextStyle(fontSize: Get.width / 27, fontWeight: FontWeight.w400, color: AppColor.subcolor)),
                      ),
                      SizedBox(height: Get.height / 20),

                      //Employer
                      GestureDetector(
                        onTap: () async{
                          option_api.OptionApiController_fuction(UserType: 'Company', Tokan: Tokans, CandidateId: Candidate);
                          await pref!.setString('usertype', 'Company');
                          username = pref!.getString('usertype')!;
                          select.Select();
                        },
                        child: WideButton(text: Option_text.Employer, Icon: AppIcons.Employee),
                      ),
                      SizedBox(height: Get.height / 50),

                      //Candidate
                      GestureDetector(
                        onTap: () async{
                          option_api.OptionApiController_fuction(UserType: 'Candidate', Tokan: Tokans, CandidateId: Candidate);
                          await pref!.setString('usertype', 'Candidate');
                          username = pref!.getString('usertype')!;
                          select.SelectSecond();
                        },
                        child: WideButton(text: Option_text.Candidate, Icon: AppIcons.briefcase),
                      ),
                      SizedBox(height: Get.height / 20),
                      Text(textAlign: TextAlign.center, Option_text.ThenkYOU, style: TextStyle(fontSize: Get.width / 27, color: AppColor.subcolor)),
                      SizedBox(height: Get.height / 15),
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
