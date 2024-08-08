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

class Profile_info extends StatefulWidget {
  Profile_info({super.key});

  @override
  State<Profile_info> createState() => _Profile_infoState();
}

class _Profile_infoState extends State<Profile_info> {
  final ProfielInfo profile = Get.put(ProfielInfo());

  int selectedIndex = 0;

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
              child: Column(
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
                                    Text(profile.login.option_data['data']['Username'],
                                      style: TextStyle(fontSize: Get.width / 22, fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Text(
                                      profile.login.option_data['data']['UserDetails']['TechName'],
                                      style: TextStyle(fontSize: Get.width / 26, fontWeight: FontWeight.w400, color: AppColor.subcolor,
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
                      GestureDetector(
                        onTap: () {
                          setState(() {selectedIndex = 0;});
                        },
                        child: Container_tab(text: Profile_Text.Extra_Info,
                            textcolor: (selectedIndex == 0)
                                ?AppColor.Full_body_color
                                :AppColor.black_all,
                            tabcolor: (selectedIndex == 0)
                                ?AppColor.Button_color
                                :AppColor.Bottam_color,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {selectedIndex = 1;});
                        },
                        child: Container_tab(text: Profile_Text.My_Profile,
                          textcolor: (selectedIndex == 1)
                              ?AppColor.Full_body_color
                              :AppColor.black_all,
                          tabcolor: (selectedIndex == 1)
                            ?AppColor.Button_color
                            :AppColor.Bottam_color,),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {selectedIndex = 2;});
                        },
                        child: Container_tab(text: Profile_Text.Document,
                          textcolor: (selectedIndex == 2)
                              ?AppColor.Full_body_color
                              :AppColor.black_all,
                          tabcolor: (selectedIndex == 2)
                            ?AppColor.Button_color
                            :AppColor.Bottam_color,),
                      ),
                    ],
                  ),

                  SizedBox(height: Get.height/50),

                  SizedBox(
                    height: Get.height / 1.52,
                    child: IndexedStack(
                      index: selectedIndex,
                      children: [
                        Extra_info(),
                        MY_Profile(),
                        Documant_Profile(),
                      ],
                    ),
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