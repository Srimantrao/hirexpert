// ignore_for_file: file_names, camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hirexpert/controller/User_Controller/Candidate_Controller/Profile_Info_Controller/Document_Info_Controller.dart';
import 'package:hirexpert/view/utils/app_String.dart';
import 'package:hirexpert/view/utils/app_color.dart';
import 'package:hirexpert/view/utils/common/Buttons/wideButtons.dart';
import 'package:provider/provider.dart';

import '../../../../app_icon.dart';

class Documant_Profile extends StatefulWidget {
  const Documant_Profile({super.key});

  @override
  State<Documant_Profile> createState() => _Documant_ProfileState();
}

class _Documant_ProfileState extends State<Documant_Profile> {
  String Month = "Month";
  String Year = "Year";

  TextEditingController Certificate = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final Documents_pro =
        Provider.of<DocumentInfoController>(context, listen: false);
    return Consumer<DocumentInfoController>(
      builder: (BuildContext context, value, Widget? child) {
        return Scaffold(
          //Buttons
          floatingActionButton: InkWell(
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(),
                          Text(
                            Profile_Text.Hedding_Critifaction,
                            style: TextStyle(
                              fontSize: Get.width / 25,
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
                      height: Get.height / 1.5,
                      width: Get.width,
                      decoration: BoxDecoration(
                        color: AppColor.Full_body_color,
                      ),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: StatefulBuilder(
                          builder: (BuildContext context,
                              void Function(void Function()) setState) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  Profile_Text.Certificate,
                                  style: TextStyle(
                                    fontSize: Get.width / 25,
                                    color: AppColor.select_check_color,
                                  ),
                                ),
                                TextField(
                                  controller: Certificate,
                                  decoration: InputDecoration(
                                    hintText: Profile_Text.Certificate_Name,
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: AppColor.Bottam_color),
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: AppColor.Bottam_color),
                                    ),
                                  ),
                                ),
                                SizedBox(height: Get.height / 50),

                                //Date
                                Text(
                                  Profile_Text.Date_issued,
                                  style: TextStyle(
                                    color: AppColor.select_check_color,
                                    fontSize: Get.width / 25,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      width: Get.width / 3,
                                      child: TextField(
                                        controller: Certificate,
                                        decoration: InputDecoration(
                                          suffixIcon: Icon(
                                            Icons.keyboard_arrow_down,
                                            color: AppColor.select_check_color,
                                          ),
                                          hintText: Month,
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: AppColor.Bottam_color),
                                          ),
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: AppColor.Bottam_color,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: Get.width / 3,
                                      child: TextField(
                                        controller: Certificate,
                                        decoration: InputDecoration(
                                          suffixIcon: Icon(
                                            Icons.keyboard_arrow_down,
                                            color: AppColor.select_check_color,
                                          ),
                                          hintText: Year,
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: AppColor.Bottam_color),
                                          ),
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: AppColor.Bottam_color,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: Get.height / 50),
                                Row(
                                  children: [
                                    Checkbox(
                                        side: BorderSide(
                                          color: AppColor.select_check_color,
                                        ),
                                        value: Documents_pro.certificate_cheak,
                                        onChanged: (val) {
                                          Documents_pro
                                              .certificate_cheak_fuction(val);
                                        }),
                                    SizedBox(
                                      width: Get.width / 2,
                                      child: Text(
                                        Profile_Text.This_certificate,
                                        style: TextStyle(
                                          fontSize: Get.width / 27,
                                          color: AppColor.select_check_color,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: Get.height / 50),
                                Text(
                                  Profile_Text.Description,
                                  style: TextStyle(
                                    color: AppColor.select_check_color,
                                    fontSize: Get.width / 25,
                                  ),
                                ),
                                SizedBox(height: Get.height / 70),
                                SizedBox(
                                  height: Get.height / 8,
                                  width: Get.width,
                                  child: TextField(
                                    expands: true,
                                    maxLines: null,
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: AppColor.select_check_color),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: AppColor.select_check_color),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: Get.height / 50),
                                Text(
                                  Profile_Text.Image_Type,
                                  style: TextStyle(
                                    color: AppColor.select_check_color,
                                    fontSize: Get.width / 25,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Checkbox(
                                        side: BorderSide(
                                          color: AppColor.select_check_color,
                                        ),
                                        value: Documents_pro.Image_url,
                                        onChanged: (val) {
                                          Documents_pro.Image_url_fuction(val);
                                        }),
                                    Text(
                                      Profile_Text.Image_URL,
                                      style: TextStyle(
                                        fontSize: Get.width / 26,
                                        color: AppColor.subcolor,
                                      ),
                                    ),
                                    SizedBox(width: Get.width / 70),
                                    Checkbox(
                                        side: BorderSide(
                                          color: AppColor.select_check_color,
                                        ),
                                        value: Documents_pro.Image,
                                        onChanged: (val) {
                                          Documents_pro.Image_fuction(val);
                                        }),
                                    Text(
                                      Profile_Text.Image,
                                      style: TextStyle(
                                        fontSize: Get.width / 26,
                                        color: AppColor.subcolor,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: Get.height / 50),
                                Text(
                                  Profile_Text.Image_URL,
                                  style: TextStyle(
                                    color: AppColor.select_check_color,
                                    fontSize: Get.width / 23,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      width: Get.width / 2.5,
                                      child: TextField(
                                        decoration: InputDecoration(
                                          filled: true,
                                          fillColor: AppColor.Textfild_color,
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: AppColor.Textfild_color,
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: AppColor.Textfild_color,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: Get.height / 15,
                                      width: Get.width / 3.9,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            Get.width / 60,
                                          ),
                                          color: AppColor.Button_color),
                                      child: Center(
                                        child: Text(
                                          textAlign: TextAlign.center,
                                          Profile_Text.Choose_File,
                                          style: TextStyle(
                                            color: AppColor.Full_body_color,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ),
                    actions: [
                      OnButtons(
                        Button_Color: AppColor.Button_color,
                        btn_name: Profile_Text.Submit,
                      )
                    ],
                  );
                },
              );
            },
            child: Container(
              height: Get.height / 20,
              width: Get.width / 3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  Get.height / 80,
                ),
                color: AppColor.Button_color,
              ),
              child: Center(
                child: Text(
                  Profile_Text.Add_New,
                  style: TextStyle(
                    color: AppColor.Full_body_color,
                    fontSize: Get.width / 26,
                  ),
                ),
              ),
            ),
          ),

          //Body
          body: Container(
            height: Get.height / 1.52,
            width: Get.width,
            decoration: BoxDecoration(
              color: AppColor.Full_body_color,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  Profile_Text.Candidate_certificate_list_not_found,
                  style: TextStyle(
                    color: AppColor.Error_color,
                    fontSize: Get.width / 25,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
