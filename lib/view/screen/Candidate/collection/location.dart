// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hirexpert/view/utils/app_String.dart';
import 'package:hirexpert/view/utils/app_color.dart';
import 'package:hirexpert/view/utils/app_icon.dart';
import 'package:provider/provider.dart';
import '../../../../controller/User_Controller/Candidate_Controller/DropdownController/PreferenceController.dart';
import '../../../utils/aap_image.dart';
import '../../../utils/common/Popup/Candidate/Location_comm.dart';
import 'choose_file.dart';

class Location extends StatelessWidget {
  const Location({super.key});

  @override
  Widget build(BuildContext context) {
    final Work = Provider.of<SetupController>(context, listen: false);
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(
          color: AppColor.Full_body_color,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Get.width / 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: Get.height / 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(AppImage.profile, scale: 5),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("HI", style: TextStyle(fontSize: Get.width / 25)),
                      Text("HI", style: TextStyle(fontSize: Get.width / 25)),
                      Text("HI", style: TextStyle(fontSize: Get.width / 25)),
                    ],
                  ),
                  SizedBox(height: Get.height / 20),

                  //Preference
                  Text(
                    Location_text.preference,
                    style: TextStyle(
                      fontSize: Get.width / 23,
                      color: AppColor.subcolor,
                    ),
                  ),
                  const Preference(),
                  SizedBox(height: Get.height / 50),

                  //Current Location
                  Text(
                    Location_text.Location,
                    style: TextStyle(
                      fontSize: Get.width / 23,
                      color: AppColor.subcolor,
                    ),
                  ),
                  const Location_fild(),
                  SizedBox(height: Get.height / 50),

                  //Preferred Location
                  Text(
                    Location_text.Preffered,
                    style: TextStyle(
                      fontSize: Get.width / 23,
                      color: AppColor.subcolor,
                    ),
                  ),
                  const Preffered(),
                  SizedBox(height: Get.height / 50),

                  //Setup
                  Text(
                    Location_text.Work,
                    style: TextStyle(
                      fontSize: Get.width / 23,
                      color: AppColor.subcolor,
                    ),
                  ),
                  const Setup(),
                ],
              ),

              //Buttons
              Consumer<SetupController>(
                builder: (BuildContext context, value, Widget? child) {
                  return Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Get.back();
                            },
                            child: Row(
                              children: [
                                SvgPicture.asset(AppIcons.Backarrow),
                                SizedBox(width: Get.width / 70),
                                Text(  
                                  Navigator_text.Back,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: Get.width / 23,
                                    color: AppColor.Button_color,
                                  ),
                                )
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Work.isnext_fun();
                              Get.to(() => const Choose());
                            },
                            child: Row(
                              children: [
                                Text(
                                  Navigator_text.Next,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: Get.width / 23,
                                    color: (Work.isnext)
                                        ? AppColor.Button_color
                                        : AppColor.Botton_color_hide,
                                  ),
                                ),
                                SizedBox(width: Get.width / 70),
                                SvgPicture.asset(
                                  AppIcons.Go,
                                  color: (Work.isnext)
                                      ? AppColor.Button_color
                                      : AppColor.Botton_color_hide,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: Get.height / 50),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
