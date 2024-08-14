// ignore_for_file: camel_case_types, non_constant_identifier_names, prefer_const_constructors, unnecessary_null_comparison, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hirexpert/view/utils/app_String.dart';
import 'package:hirexpert/view/utils/app_color.dart';
import 'package:hirexpert/view/utils/app_loder.dart';
import 'package:provider/provider.dart';
import '../../../../../controller/API_handler/Candidate/Menu/profile/profiel_info.dart';
import '../../../../../controller/User_Controller/Candidate_Controller/TabbarController/Tabcontroller.dart';
import '../../../../utils/common/Tabbar/Profile/Tab_Conatiner/Profile_Conatiner.dart';
import '../../../../utils/common/Tabbar/Profile/Tabbarviwe/Document_profile.dart';
import '../../../../utils/common/Tabbar/Profile/Tabbarviwe/Extra_Info.dart';
import '../../../../utils/common/Tabbar/Profile/Tabbarviwe/My_Profile/My_Profile.dart';
import 'Setting.dart';

class Profile_info extends StatelessWidget {
  Profile_info({super.key});

  final ProfielInfo profile = Get.put(ProfielInfo());

  @override
  Widget build(BuildContext context) {
    final Tabb = Provider.of<TabbarController>(context, listen: false);
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(
          color: AppColor.Full_body_color,
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: Get.width / 20),
            child: SingleChildScrollView(
              child: Consumer<TabbarController>(
                builder: (BuildContext context, value, Widget? child) {
                  return Column(
                    children: [
                      Container(
                        height: Get.height / 8,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(color: AppColor.Bottam_color),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Obx(() {
                              if (profile.login.isLodingvalue.value) {
                                return Center(child: Image.asset(AppLoder.infinityloder_without_background));
                              } else if (profile.login.option_data['data'] == null || profile.login.option_data == null) {
                                return Center(child: Text(API_Error.null_data));
                              } else {
                                return Row(
                                  children: [
                                    CircleAvatar(radius: 40, backgroundImage: NetworkImage(profile.login.option_data['data']['Profile'])),
                                    SizedBox(width: Get.width / 30),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          profile.login.option_data['data']['Username'],
                                          style: TextStyle(
                                              fontSize: Get.width / 22,
                                              fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        SizedBox(
                                          width: Get.width / 2,
                                          child: Text(
                                            profile.login.option_data['data']['UserDetails']['TechName'],
                                            style: TextStyle(
                                                fontSize: Get.width / 28,
                                                fontWeight: FontWeight.w400,
                                                color: AppColor.subcolor,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                );
                              }
                            }),
                            InkWell(
                              onTap: () {
                                Get.to(() => Setting());
                              },
                              child: Icon(Icons.settings, color: AppColor.Button_color, size: 32),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: Get.height / 50),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          tab(
                              onTap: () {
                                Tabb.Tabbarcontroler_1();
                              },
                              textcolor: Tabb.selectedIndex == 0,
                              tabcolor: Tabb.selectedIndex == 0,
                              name: Profile_Text.Extra_Info),
                          tab(
                              onTap: () {
                                Tabb.Tabbarcontroler_2();
                              },
                              textcolor: Tabb.selectedIndex == 1,
                              tabcolor: Tabb.selectedIndex == 1,
                              name: Profile_Text.Company_Name),
                          tab(
                              onTap: () {
                                Tabb.Tabbarcontroler_3();
                              },
                              textcolor: Tabb.selectedIndex == 2,
                              tabcolor: Tabb.selectedIndex == 2,
                              name: Profile_Text.Document),
                        ],
                      ),
                      SizedBox(height: Get.height / 50),
                      SizedBox(
                        height: Get.height / 1.52,
                        child: IndexedStack(
                          index: Tabb.selectedIndex,
                          children: [
                            Extra_info(),
                            MY_Profile(),
                            Documant_Profile(),
                          ],
                        ),
                      ),
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
