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

class Work_Experience extends StatefulWidget {
  const Work_Experience({super.key});

  @override
  State<Work_Experience> createState() => _Work_ExperienceState();
}

class _Work_ExperienceState extends State<Work_Experience> {
  bool onthrowError = false;

  bool I_currently_workhere = false;

  TextEditingController Enter_The_Comppany_name = TextEditingController();
  TextEditingController Designation = TextEditingController();
  TextEditingController Year = TextEditingController();

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
                myProfile.Work_Experience_fun();
              },
              child: Info(
                info: Profile_Text.Work_Experience,
                dropicons: DropIcons(
                  conditional_name: myProfile.Work_Experience,
                ),
              ),
            ),
            Visibility(
              visible: myProfile.Work_Experience,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: Get.height / 50),
                  Container(
                    height: Get.height / 20,
                    width: Get.width,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: AppColor.select_check_color,
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          Profile_Text.fresher,
                          style: TextStyle(
                            fontSize: Get.width / 24,
                          ),
                        ),
                        Switch(
                          materialTapTargetSize: MaterialTapTargetSize.padded,
                          thumbColor: MaterialStatePropertyAll(
                            AppColor.Full_body_color,
                          ),
                          activeColor: AppColor.Button_color,
                          value: myProfile.fresher,
                          onChanged: (val) {
                            myProfile.Fresher_fun(val);
                          },
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: Get.height / 50),
                  Visibility(
                    visible: myProfile.fresher,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          Profile_Text.Total_Experience,
                          style: TextStyle(
                            fontSize: Get.width / 24,
                            color: AppColor.select_check_color,
                          ),
                        ),

                        //Total Experience
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: Get.width / 2.5,
                              child: InkWell(
                                onTap: () {
                                  showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return AlertDialog(
                                          backgroundColor:
                                              AppColor.Full_body_color,
                                          elevation: 0,
                                          title: Container(
                                            height: Get.height / 20,
                                            width: Get.width,
                                            decoration: BoxDecoration(
                                                border: Border(
                                              bottom: BorderSide(
                                                color: AppColor.Bottam_color,
                                              ),
                                            )),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                const SizedBox(),
                                                Text(
                                                  Profile_Text.E_Year,
                                                  style: TextStyle(
                                                    fontSize: Get.width / 23,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    Get.back();
                                                  },
                                                  child: SvgPicture.asset(
                                                    AppIcons.cancel,
                                                  ),
                                                )
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
                                                      color: AppColor
                                                          .select_check_color,
                                                    ),
                                                    top: BorderSide(
                                                      color: AppColor
                                                          .select_check_color,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              itemExtent: 30,
                                              onSelectedItemChanged:
                                                  (int index) {},
                                              children: [
                                                const Text("1 Year"),
                                                SizedBox(
                                                  height: Get.height / 50,
                                                ),
                                                const Text("2 Year"),
                                                SizedBox(
                                                  height: Get.height / 50,
                                                ),
                                                const Text(
                                                  "3 Year",
                                                ),
                                                SizedBox(
                                                  height: Get.height / 50,
                                                ),
                                                const Text(
                                                  "4 Year",
                                                ),
                                                SizedBox(
                                                  height: Get.height / 50,
                                                ),
                                                const Text(
                                                  "5 Year",
                                                ),
                                                SizedBox(
                                                  height: Get.height / 50,
                                                ),
                                                const Text(
                                                  "6 Year",
                                                ),
                                                SizedBox(
                                                  height: Get.height / 50,
                                                ),
                                                const Text(
                                                  "7 Year",
                                                ),
                                                SizedBox(
                                                  height: Get.height / 50,
                                                ),
                                                const Text(
                                                  "10 Year",
                                                ),
                                                SizedBox(
                                                  height: Get.height / 50,
                                                ),
                                                const Text(
                                                  "11 Year",
                                                ),
                                                SizedBox(
                                                  height: Get.height / 50,
                                                ),
                                                const Text(
                                                  "12 Year",
                                                ),
                                                SizedBox(
                                                  height: Get.height / 50,
                                                ),
                                                const Text(
                                                  "13 Year",
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                      });
                                },
                                child: Container(
                                  height: Get.height / 20,
                                  width: Get.width,
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        color: AppColor.select_check_color,
                                      ),
                                    ),
                                  ),
                                  child: const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(Profile_Text.Enter_Year),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: Get.width / 2.5,
                              child: InkWell(
                                onTap: () {
                                  showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return AlertDialog(
                                          backgroundColor:
                                              AppColor.Full_body_color,
                                          elevation: 0,
                                          title: Container(
                                            height: Get.height / 20,
                                            width: Get.width,
                                            decoration: BoxDecoration(
                                                border: Border(
                                              bottom: BorderSide(
                                                color: AppColor.Bottam_color,
                                              ),
                                            )),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                const SizedBox(),
                                                Text(
                                                  Profile_Text.E_Year,
                                                  style: TextStyle(
                                                    fontSize: Get.width / 23,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    Get.back();
                                                  },
                                                  child: SvgPicture.asset(
                                                    AppIcons.cancel,
                                                  ),
                                                )
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
                                                      color: AppColor
                                                          .select_check_color,
                                                    ),
                                                    top: BorderSide(
                                                      color: AppColor
                                                          .select_check_color,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              itemExtent: 30,
                                              onSelectedItemChanged:
                                                  (int index) {},
                                              children: [
                                                const Text(
                                                  "1 Month",
                                                ),
                                                SizedBox(
                                                  height: Get.height / 50,
                                                ),
                                                const Text(
                                                  "2 Month",
                                                ),
                                                SizedBox(
                                                  height: Get.height / 50,
                                                ),
                                                const Text(
                                                  "3 Month",
                                                ),
                                                SizedBox(
                                                  height: Get.height / 50,
                                                ),
                                                const Text(
                                                  "4 Month",
                                                ),
                                                SizedBox(
                                                  height: Get.height / 50,
                                                ),
                                                const Text(
                                                  "5 Month",
                                                ),
                                                SizedBox(
                                                  height: Get.height / 50,
                                                ),
                                                const Text(
                                                  "6 Month",
                                                ),
                                                SizedBox(
                                                  height: Get.height / 50,
                                                ),
                                                const Text(
                                                  "7 Month",
                                                ),
                                                SizedBox(
                                                  height: Get.height / 50,
                                                ),
                                                const Text(
                                                  "10 Month",
                                                ),
                                                SizedBox(
                                                    height: Get.height / 50),
                                                const Text(
                                                  "11 Month",
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                      });
                                },
                                child: Container(
                                  height: Get.height / 20,
                                  width: Get.width,
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        color: AppColor.select_check_color,
                                      ),
                                    ),
                                  ),
                                  child: const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(Profile_Text.Enter_Month),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: Get.height / 50),

                        //Company Name
                        Text(
                          Profile_Text.Company_Name,
                          style: TextStyle(
                              fontSize: Get.width / 24,
                              color: AppColor.select_check_color),
                        ),
                        TextField(
                          controller: Enter_The_Comppany_name,
                          decoration: InputDecoration(
                            hintText: Profile_Text.Enter_The_Comppany_name,
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: AppColor.select_check_color,
                              ),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: AppColor.select_check_color,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: Get.height / 50),

                        //Designation
                        Text(
                          Profile_Text.Designation,
                          style: TextStyle(
                              fontSize: Get.width / 24,
                              color: AppColor.select_check_color),
                        ),
                        TextField(
                          controller: Designation,
                          decoration: InputDecoration(
                            hintText: Profile_Text.Enter_The_Designation,
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: AppColor.select_check_color,
                              ),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: AppColor.select_check_color,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: Get.height / 50),

                        //Duration
                        Text(
                          Profile_Text.Designation,
                          style: TextStyle(
                              fontSize: Get.width / 24,
                              color: AppColor.select_check_color),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: Get.width / 2.5,
                              child: TextField(
                                onTap: () {
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        backgroundColor:
                                            AppColor.Full_body_color,
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
                                                Profile_Text.Starting_date,
                                                style: TextStyle(
                                                  fontSize: Get.width / 23,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  Get.back();
                                                },
                                                child: SvgPicture.asset(
                                                  AppIcons.cancel,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        content: Container(
                                          height: Get.height / 2,
                                          width: Get.width,
                                          decoration: BoxDecoration(
                                            color: AppColor.Full_body_color,
                                          ),
                                          child: DateRangePickerDialog(
                                            firstDate: DateTime(1990),
                                            lastDate: DateTime(2030),
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                                controller: Year,
                                readOnly: true,
                                decoration: InputDecoration(
                                  suffixIcon: Icon(
                                    Icons.calendar_month_sharp,
                                    color: AppColor.select_check_color,
                                  ),
                                  hintText: Profile_Text.Enter_Year,
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: AppColor.select_check_color,
                                    ),
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: AppColor.select_check_color,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: Get.width / 2.5,
                              child: TextField(
                                onTap: () {
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        backgroundColor:
                                            AppColor.Full_body_color,
                                        elevation: 0,
                                        title: Container(
                                          height: Get.height / 20,
                                          width: Get.width,
                                          decoration: BoxDecoration(
                                            border: Border(
                                              bottom: BorderSide(
                                                  color: AppColor.Bottam_color),
                                            ),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              const SizedBox(),
                                              Text(
                                                Profile_Text.Starting_date,
                                                style: TextStyle(
                                                  fontSize: Get.width / 23,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  Get.back();
                                                },
                                                child: SvgPicture.asset(
                                                  AppIcons.cancel,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        content: Container(
                                          height: Get.height / 2,
                                          width: Get.width,
                                          decoration: BoxDecoration(
                                            color: AppColor.Full_body_color,
                                          ),
                                          child: DateRangePickerDialog(
                                            firstDate: DateTime(1990),
                                            lastDate: DateTime(2030),
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                                controller: Designation,
                                readOnly: true,
                                decoration: InputDecoration(
                                  hintText: Profile_Text.Enter_The_Designation,
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: AppColor.select_check_color,
                                    ),
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: AppColor.select_check_color,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: Get.height / 50),
                        Column(
                          children: [
                            Row(
                              children: [
                                Checkbox(
                                    value: I_currently_workhere,
                                    onChanged: (val) {
                                      I_currently_workhere = val!;
                                      setState(() {});
                                    }),
                                Text(
                                  Profile_Text.I_currently_work_here,
                                  style: TextStyle(
                                    fontSize: Get.width / 24,
                                    color: AppColor.subcolor,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: Get.height / 50),
                        Text(
                          Profile_Text.Add_Work_Experience,
                          style: TextStyle(
                            fontSize: Get.width / 24,
                            fontWeight: FontWeight.w600,
                            color: AppColor.Button_color,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
