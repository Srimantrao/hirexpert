// ignore_for_file: avoid_print, file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hirexpert/view/screen/Employer/Menu/Profile/AddTeams/AddTeams.dart';
import 'package:hirexpert/view/screen/Employer/Menu/Profile/CompanyProfile/Company_Profile.dart';
import 'package:hirexpert/view/screen/Employer/Menu/Profile/MyProfile/MyProfile.dart';
import 'package:hirexpert/view/screen/Employer/Menu/Profile/popupMenu/Hirexpert_Credit.dart';
import 'package:hirexpert/view/utils/aap_image.dart';
import 'package:hirexpert/view/utils/app_color.dart';
import 'package:hirexpert/view/utils/app_icon.dart';
import 'package:hirexpert/view/utils/common/Tabbar/Profile/Tab_Conatiner/Profile_Conatiner.dart';

class EmployerProfile extends StatefulWidget {
  const EmployerProfile({super.key});

  @override
  State<EmployerProfile> createState() => _EmployerProfileState();
}

class _EmployerProfileState extends State<EmployerProfile> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.Full_body_color,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(Get.height / 10),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: Get.width / 20),
            child: Column(
              children: [
                SizedBox(height: Get.height / 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Profile", style: TextStyle(fontSize: Get.height / 40, fontWeight: FontWeight.w600)),
                    Row(
                      children: [
                        Container(
                          height: Get.height / 20,
                          width: Get.width / 3.8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(Get.width / 50),
                            color: AppColor.Button_color,
                          ),
                          child: Center(
                            child: Text('Post Jobs', style: TextStyle(fontSize: Get.width / 27, color: AppColor.Full_body_color)),
                          ),
                        ),
                        SizedBox(width: Get.width / 50),
                        Icon(Icons.notifications_none_sharp, color: AppColor.select_check_color, size: 30),
                        SizedBox(width: Get.width / 50),
                        Icon(Icons.monitor_weight_outlined, color: AppColor.select_check_color, size: 30),
                        SizedBox(width: Get.width / 50),
                        PopupMenuButton(
                          color: AppColor.Full_body_color,
                          onSelected: (value) {
                            print(value);
                          },
                          itemBuilder: (BuildContext context) =>
                              <PopupMenuEntry>[
                            PopupMenuItem(
                              value: 1,
                              child: GestureDetector(
                                onTap: (){
                                  Get.to(()=> HirexpertCredit(),duration: Duration(seconds: 1),transition: Transition.upToDown);
                                },
                                  child: Text('Hirexpert Credit'),
                              ),
                            ),
                          ],
                          child: SvgPicture.asset(AppIcons.dots),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(color: AppColor.Full_body_color),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Get.width / 20),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(radius: 40, backgroundImage: AssetImage(AppImage.profile)),
                  SizedBox(width: Get.width / 30),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Username', style: TextStyle(fontSize: Get.width / 22, fontWeight: FontWeight.w700)),
                      SizedBox(
                        width: Get.width / 2,
                        child: Text('TechName', style: TextStyle(fontSize: Get.width / 28, fontWeight: FontWeight.w400, color: AppColor.subcolor)),
                      ),
                    ],
                  ),
                  SvgPicture.asset(AppIcons.Wallet, width: 25, height: 25),
                  SizedBox(width: Get.width / 50),
                  Text('500', style: TextStyle(fontSize: Get.width / 25, fontWeight: FontWeight.w600))
                ],
              ),
              SizedBox(height: Get.height / 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  tab(
                    onTap: () {
                      setState(() {
                        selectedIndex = 0;
                      });
                    },
                    textcolor: selectedIndex == 0,
                    tabcolor: selectedIndex == 0,
                    name: 'My Profile',
                  ),
                  tab(
                    onTap: () {
                      setState(() {
                        selectedIndex = 1;
                      });
                    },
                    textcolor: selectedIndex == 1,
                    tabcolor: selectedIndex == 1,
                    name: 'Company Profile',
                  ),
                  tab(
                    onTap: () {
                      setState(() {
                        selectedIndex = 2;
                      });
                    },
                    textcolor: selectedIndex == 2,
                    tabcolor: selectedIndex == 2,
                    name: 'Add Teams',
                  ),
                ],
              ),
              SizedBox(height: Get.height / 50),
              Expanded(
                child: IndexedStack(
                  index: selectedIndex,
                  children: [
                    Myprofile(),
                    CompanyProfile(),
                    Addteams(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
