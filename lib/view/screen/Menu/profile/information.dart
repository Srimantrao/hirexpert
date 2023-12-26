// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:hirexpert/view/screen/Menu/profile/profile.dart';
import 'package:hirexpert/view/utils/app_String.dart';
import 'package:hirexpert/view/utils/app_color.dart';
import 'package:hirexpert/view/utils/common/Container/profile_Info.dart';

class Profile_info extends StatefulWidget {
  const Profile_info({super.key});

  @override
  State<Profile_info> createState() => _Profile_infoState();
}

class _Profile_infoState extends State<Profile_info> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(
          color: AppColor.Full_body_color,
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: Get.width / 50,
              vertical: Get.width / 50,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: Get.height / 8,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: AppColor.Bottam_color,
                      ),
                    ),
                  ),
                  child: Row(
                    children: [
                      const CircleAvatar(
                        radius: 40,
                      ),
                      SizedBox(width: Get.width / 30),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Sagar Patil",
                            style: TextStyle(
                              fontSize: Get.width / 22,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            "Accounting",
                            style: TextStyle(
                                fontSize: Get.width / 26,
                                fontWeight: FontWeight.w400,
                                color: AppColor.subcolor),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: Get.height / 50),
                InkWell(
                  highlightColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  onTap: () {
                    Get.to(() => const Edit_profile());
                  },
                  child: const Info(info: Profile_Text.Profile),
                ),
                const Info(info: Profile_Text.Archive),
                const Info(info: Profile_Text.Notification_Setting),
                const Info(info: Profile_Text.Send_Us_Your_Feedback),
                const Info(info: Profile_Text.Manage_Account),
                const Info(info: Profile_Text.Terms_And_Conditions),
                const Info(info: Profile_Text.Privacy_Policy),
                const Info(info: Profile_Text.Change_Password),
                SizedBox(height: Get.height / 50),
                Text(
                  Profile_Text.Logout,
                  style: TextStyle(
                    color: AppColor.Button_color,
                    fontSize: Get.width / 25,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
