// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hirexpert/view/utils/app_String.dart';
import 'package:hirexpert/view/utils/app_color.dart';
import 'package:provider/provider.dart';
import '../../../../../controller/Candidate_Controller/TabbarController/Tabcontroller.dart';
import '../../../../utils/common/Tabbar/Profile/Tab_Conatiner/Profile_Conatiner.dart';
import '../../../../utils/common/Tabbar/Profile/Tabbarviwe/Document_profile.dart';
import '../../../../utils/common/Tabbar/Profile/Tabbarviwe/Extra_Info.dart';
import '../../../../utils/common/Tabbar/Profile/Tabbarviwe/My_Profile/My_Profile.dart';
import 'Setting.dart';

class Profile_info extends StatefulWidget {
  const Profile_info({super.key});

  @override
  State<Profile_info> createState() => _Profile_infoState();
}

class _Profile_infoState extends State<Profile_info> {
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
            padding: EdgeInsets.symmetric(
              horizontal: Get.width / 50,
              vertical: Get.width / 50,
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
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
                        InkWell(
                          onTap: (){
                            Get.to(()=>const Setting());
                          },
                          child: Icon(
                            Icons.settings,
                            color: AppColor.Button_color,
                            size: 32,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: Get.height / 50),
                  Consumer<TabbarController>(
                    builder: (BuildContext context, value, Widget? child) {
                      return DefaultTabController(
                        length: 3,
                        child: Column(
                          children: [
                            TabBar(
                              automaticIndicatorColorAdjustment: true,
                              unselectedLabelColor: AppColor.subcolor,
                              labelStyle: const TextStyle(
                                fontWeight: FontWeight.w700,
                              ),
                              unselectedLabelStyle: const TextStyle(
                                fontWeight: FontWeight.w400,
                              ),
                              labelColor: AppColor.Full_body_color,
                              dividerColor: AppColor.Full_body_color,
                              onTap: (index) {
                                Tabb.ChangigColor(index);
                              },
                              indicatorSize: TabBarIndicatorSize.label,
                              indicator: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  Get.width / 60,
                                ),
                                color: AppColor.Full_body_color,
                              ),
                              tabs: [
                                Container_tab(
                                  text: Profile_Text.Extra_Info,
                                  tabcolor: Tabb.tabColor
                                ),
                                Container_tab(
                                  text: Profile_Text.My_Profile,
                                  tabcolor: Tabb.tabColor2,
                                ),
                                Container_tab(
                                  text: Profile_Text.Document,
                                  tabcolor: Tabb.tabColor3,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: Get.height / 1.52,
                              child: const TabBarView(
                                physics: NeverScrollableScrollPhysics(),
                                children: [
                                  Extra_info(),
                                  MY_Profile(),
                                  Documant_Profile(),
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
