// ignore_for_file: camel_case_types, file_names, non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import '../../../../../../../controller/Logic_Conroller/Screen_Logic/Profile_Logic/My_Profile_Logic(Tabbar)/Navi_Icons/(My_Profile)_Navi_Icons.dart';
import '../../../../../../../controller/MY_ProfileController/My_ProfileController.dart';
import '../../../../../app_String.dart';
import '../../../../../app_color.dart';
import '../../../../../app_icon.dart';
import '../../../../Container/profile_Info.dart';

class Educational_Details extends StatefulWidget {
  const Educational_Details({super.key});

  @override
  State<Educational_Details> createState() => _Educational_DetailsState();
}

class _Educational_DetailsState extends State<Educational_Details> {
  TextEditingController Degree = TextEditingController();
  TextEditingController Specialisation = TextEditingController();
  TextEditingController Institute_Name = TextEditingController();
  TextEditingController Passing_Year = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final myProfile = Provider.of<My_ProfileController>(
      context,
      listen: false,
    );
    return Consumer<My_ProfileController>(
      builder: (BuildContext context, value, Widget? child) {
        return Column(
          children: [
            InkWell(
              onTap: () {
                myProfile.Education_Details_fun();
              },
              child: Info(
                info: Profile_Text.Educational_Detailss,
                dropicons: DropIcons(
                  conditional_name: myProfile.Education_Details,
                ),
              ),
            ),
            Visibility(
              visible: myProfile.Education_Details,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: Get.height / 50),

                  //Degree
                  Text(
                    EditProfile_text.Degree,
                    style: TextStyle(
                      fontSize: Get.width / 24,
                      color: AppColor.select_check_color,
                    ),
                  ),
                  TextField(
                    controller: Degree,
                    decoration: InputDecoration(
                      hintText: Profile_Text.Degree,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColor.select_check_color,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColor.select_check_color,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: Get.height / 50),

                  //Specialisation
                  Text(
                    EditProfile_text.Specialisation,
                    style: TextStyle(
                      fontSize: Get.width / 24,
                      color: AppColor.select_check_color,
                    ),
                  ),
                  TextField(
                    controller: Specialisation,
                    decoration: InputDecoration(
                      hintText: Profile_Text.Specialisation,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColor.select_check_color,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColor.select_check_color,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: Get.height / 50),

                  //Institute Name
                  Text(
                    EditProfile_text.Institute_Name,
                    style: TextStyle(
                      fontSize: Get.width / 24,
                      color: AppColor.select_check_color,
                    ),
                  ),
                  TextField(
                    controller: Institute_Name,
                    decoration: InputDecoration(
                      hintText: Profile_Text.Institute_Name,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColor.select_check_color,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColor.select_check_color,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: Get.height / 50),

                  //Passing Year
                  Text(
                    EditProfile_text.Passing_Yea,
                    style: TextStyle(
                      fontSize: Get.width / 24,
                      color: AppColor.select_check_color,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            backgroundColor: AppColor.Full_body_color,
                            elevation: 0,
                            title: Container(
                              height: Get.height / 20,
                              width: Get.width,
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: AppColor.Bottam_color,
                                  ),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const SizedBox(),
                                  Text(
                                    Profile_Text.Select_City,
                                    style: TextStyle(
                                      fontSize: Get.width / 23,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Get.back();
                                    },
                                    child: SvgPicture.asset(AppIcons.cancel),
                                  ),
                                ],
                              ),
                            ),
                            content: Container(
                              height: Get.height / 5,
                              width: Get.width,
                              decoration: BoxDecoration(
                                color: AppColor.Full_body_color,
                              ),
                              child: CupertinoPicker(
                                selectionOverlay: Container(
                                  height: Get.height / 15,
                                  width: Get.width,
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        color: AppColor.select_check_color,
                                      ),
                                      top: BorderSide(
                                        color: AppColor.select_check_color,
                                      ),
                                    ),
                                  ),
                                ),
                                itemExtent: 30,
                                onSelectedItemChanged: (int value) {},
                                children: [
                                  const Text("2021"),
                                  SizedBox(height: Get.height / 50),
                                  const Text("2022"),
                                  SizedBox(height: Get.height / 50),
                                  const Text("2023"),
                                  SizedBox(height: Get.height / 50),
                                  const Text("2024"),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                    child: Container(
                      height: Get.height / 20,
                      width: Get.width,
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                        color: AppColor.select_check_color,
                      ))),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(Profile_Text.Select_City),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: Get.height / 50),

                  //Passing Year
                  Text(
                    Profile_Text.Add_Educational_Details,
                    style: TextStyle(
                      fontSize: Get.width / 24,
                      fontWeight: FontWeight.w600,
                      color: AppColor.Button_color,
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
