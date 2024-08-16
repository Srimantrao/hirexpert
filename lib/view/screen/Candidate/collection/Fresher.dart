// ignore_for_file: file_names, non_constant_identifier_names, avoid_print, prefer_const_constructors, unnecessary_brace_in_string_interps, curly_braces_in_flow_control_structures, unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hirexpert/view/utils/app_color.dart';
import 'package:hirexpert/view/utils/app_icon.dart';
import 'package:hirexpert/view/utils/common/Textfild/Inputfild.dart';
import 'package:hirexpert/view/utils/common/showpop/showdialog.dart';
import 'package:intl/intl.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:provider/provider.dart';
import '../../../../controller/User_Controller/Candidate_Controller/DropdownController/FresherController.dart';
import '../../../utils/aap_image.dart';
import '../../../utils/app_String.dart';
import '../../../utils/common/Buttons/ShortButton.dart';
import '../../../utils/logic/next_thow.dart';
import '../../../utils/logic/validation_error.dart';

class Fresher extends StatelessWidget {
  final String? first_name;
  final String? last_name;

  const Fresher({super.key, this.first_name, this.last_name});

  @override
  Widget build(BuildContext context) {
    final E_Salary = Provider.of<FreherController>(context, listen: false);
    return Scaffold(
      bottomNavigationBar: Container(
        width: Get.width,
        height: Get.height / 10,
        decoration: BoxDecoration(
          color: AppColor.Full_body_color,
        ),
        child: Consumer<FreherController>(
          builder: (BuildContext context, value, Widget? child) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: Get.width / 20),
              child: Column(
                children: [
                  SizedBox(height: Get.height / 18),
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
                            SizedBox(width: Get.width / 60),
                            Text(Navigator_text.Back, style: TextStyle(fontSize: Get.width / 24, color: AppColor.Button_color, fontWeight: FontWeight.w600)),
                          ],
                        ),
                      ),
                      (E_Salary.Visible)
                          ? GestureDetector(
                              onTap: () {
                                E_Salary.next_button();
                              },
                              child: Row(
                                children: [
                                  NextThow(text: Navigator_text.Next, fontweight: E_Salary.Expected && E_Salary.designation.text.isNotEmpty && E_Salary.company_name.text.isNotEmpty && E_Salary.Experience && E_Salary.CTC, fontcolor: E_Salary.Expected && E_Salary.designation.text.isNotEmpty && E_Salary.company_name.text.isNotEmpty && E_Salary.Experience && E_Salary.CTC),
                                  SizedBox(width: Get.width / 80),
                                  NextArrow(arrowcolor: E_Salary.Expected || E_Salary.designation.text.isNotEmpty && E_Salary.company_name.text.isNotEmpty && E_Salary.Experience && E_Salary.CTC),
                                ],
                              ),
                            )
                          : GestureDetector(
                              onTap: () {
                                E_Salary.next_viwe();
                              },
                              child: Row(
                                children: [
                                  NextThow(
                                    text: Navigator_text.Next,
                                    fontweight: E_Salary.Expected,
                                    fontcolor: E_Salary.Expected,
                                  ),
                                  SizedBox(width: Get.width / 80),
                                  NextArrow(arrowcolor: E_Salary.Expected),
                                ],
                              ),
                            )
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(
          color: AppColor.Full_body_color,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Get.width / 20),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Consumer<FreherController>(
              builder: (context, value, child) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: Get.height / 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Image.asset(AppImage.profile, scale: 5)],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(first_name ?? '', style: TextStyle(fontSize: Get.width / 25)),
                      SizedBox(width: Get.width / 80),
                      Text(last_name ?? '', style: TextStyle(fontSize: Get.width / 25)),
                    ],
                  ),
                  SizedBox(height: Get.height / 20),

                  //Fresher
                  Container(
                    height: Get.height / 25,
                    width: Get.width,
                    decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: AppColor.Bottam_color)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(Experience_text.IM, style: TextStyle(fontSize: Get.width / 25, fontWeight: FontWeight.w600)),
                        Padding(
                          padding: EdgeInsets.all(6),
                          child: FlutterSwitch(
                            activeColor: AppColor.Button_color,
                            padding: 2,
                            width: Get.width / 9,
                            value: E_Salary.Visible,
                            onToggle: (newvalue) {
                              E_Salary.Visible_fun();
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: Get.height / 50),

                  //Experience
                  Visibility(
                    visible: E_Salary.Visible,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(Experience_text.experience, style: TextStyle(color: AppColor.subcolor, fontSize: Get.width / 25)),
                        GestureDetector(
                          onTap: () {
                            Showdialog.showdialod(
                                height: Get.height / 4,
                                context: context,
                                colamWidget: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: Get.width / 10),
                                  child: StatefulBuilder(
                                    builder: (BuildContext context, inChage) {
                                      return Row(
                                        children: [
                                          Column(
                                            children: [
                                              Text(Experience_text.Years, style: TextStyle(color: AppColor.subcolor, fontSize: Get.width / 22)),
                                              NumberPicker(
                                                haptics: true,
                                                minValue: 0,
                                                maxValue: 15,
                                                itemHeight: Get.height / 13,
                                                selectedTextStyle: TextStyle(color: AppColor.black_all, fontSize: Get.width / 22),
                                                decoration: BoxDecoration(
                                                  border: Border(
                                                    top: BorderSide(color: AppColor.subcolor),
                                                    bottom: BorderSide(color: AppColor.subcolor),
                                                  ),
                                                ),
                                                value: E_Salary.selectedYear,
                                                onChanged: (value) {
                                                  E_Salary.Experience_fuction(value);
                                                  inChage(() {});
                                                },
                                              ),
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              Text(
                                                Experience_text.Months,
                                                style: TextStyle(color: AppColor.subcolor, fontSize: Get.width / 22),),
                                              NumberPicker(
                                                haptics: true,
                                                minValue: 0,
                                                maxValue: 15,
                                                itemHeight: Get.height / 13,
                                                selectedTextStyle: TextStyle(color: AppColor.black_all, fontSize: Get.width / 22),
                                                decoration: BoxDecoration(
                                                  border: Border(
                                                    top: BorderSide(color: AppColor.subcolor),
                                                    bottom: BorderSide(color: AppColor.subcolor),
                                                  ),
                                                ),
                                                value: E_Salary.selectMonth,
                                                onChanged: (value) {
                                                  E_Salary.Experience2_fuction(value);
                                                  inChage(() {});
                                                },
                                              ),
                                            ],
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                ),
                                actions: [
                                  OnButtons_short(
                                    onTap: () {
                                      print("Year :- ${E_Salary.selectedYear}, Month :- ${E_Salary.selectMonth}");
                                      Get.back();
                                    },
                                    btn_name: Experience_text.Save,
                                    Border_color: AppColor.Button_color,
                                    btn_color: AppColor.Button_color,
                                    text_color: AppColor.Full_body_color,
                                  )
                                ],
                                hedingtext: Specialization_text.Praduation,
                                onTabs: () {Get.back();});
                          },
                          child: Pop_Container(
                            text: Experience_text.of_Experience,
                            condition: E_Salary.Experience,
                            text2: '${E_Salary.Experience_Years_value} Years | ${E_Salary.Experience_Month_value} Monts',
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: Get.height / 50),

                  //Per Anum
                  Text(Experience_text.current, style: TextStyle(color: AppColor.subcolor, fontSize: Get.width / 25)),
                  GestureDetector(
                    onTap: () {
                      Showdialog.showdialod(
                          height: Get.height / 4,
                          context: context,
                          colamWidget: Padding(
                            padding: EdgeInsets.symmetric(horizontal: Get.width / 10),
                            child: StatefulBuilder(
                              builder: (BuildContext context, inChage) {
                                return Row(
                                  children: [
                                    Column(
                                      children: [
                                        Text(Experience_text.Lacks, style: TextStyle(color: AppColor.subcolor, fontSize: Get.width / 22)),
                                        NumberPicker(
                                          haptics: true,
                                          minValue: 0,
                                          maxValue: 15,
                                          itemHeight: Get.height / 13,
                                          selectedTextStyle: TextStyle(color: AppColor.black_all, fontSize: Get.width / 22),
                                          decoration: BoxDecoration(
                                            border: Border(
                                              top: BorderSide(color: AppColor.subcolor),
                                              bottom: BorderSide(color: AppColor.subcolor),
                                            ),
                                          ),
                                          value: E_Salary.selectLack,
                                          onChanged: (value) {
                                            E_Salary.Expected_fuction(value);
                                            inChage(() {});
                                          },
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          Experience_text.Thousands,
                                          style: TextStyle(color: AppColor.subcolor, fontSize: Get.width / 22),
                                        ),
                                        NumberPicker(
                                          haptics: true,
                                          minValue: 0,
                                          maxValue: 98,
                                          itemHeight: Get.height / 13,
                                          selectedTextStyle: TextStyle(color: AppColor.black_all, fontSize: Get.width / 22),
                                          decoration: BoxDecoration(
                                            border: Border(
                                              top: BorderSide(color: AppColor.subcolor),
                                              bottom: BorderSide(color: AppColor.subcolor),
                                            ),
                                          ),
                                          value: E_Salary.selectThousand,
                                          onChanged: (value) {
                                            E_Salary.Expected2_fuction(value);
                                            inChage(() {});
                                          },
                                        ),
                                      ],
                                    ),
                                  ],
                                );
                              },
                            ),
                          ),
                          actions: [
                            OnButtons_short(
                              onTap: () {
                                print("Lack :- ${E_Salary.selectLack}, Month :- ${E_Salary.selectThousand}");
                                Get.back();
                              },
                              btn_name: Experience_text.Save,
                              Border_color: AppColor.Button_color,
                              btn_color: AppColor.Button_color,
                              text_color: AppColor.Full_body_color,
                            )
                          ],
                          hedingtext: Specialization_text.Praduation,
                          onTabs: () {Get.back();});
                    },
                    child: Pop_Container(
                        text: Experience_text.E_Salary,
                        condition: E_Salary.Expected,
                        text2: 'Lack ${E_Salary.Expected_Lack_value} | Thousand ${E_Salary.Expected_Thousand_value}'),
                  ),
                  SizedBox(height: Get.height / 50),

                  Visibility(
                    visible: E_Salary.Visible,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(Experience_text.company, style: TextStyle(fontSize: Get.width / 24)),
                        SizedBox(height: Get.height / 50),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: Get.width / 2.5,
                                  child: Inputfild(
                                    onChanged: (value) {
                                      E_Salary.company_validation(value);
                                    },
                                    labal: Experience_text.Company_Name,
                                    hint: Experience_text.Company_Name,
                                    controller: E_Salary.company_name,
                                  ),
                                ),
                                valiadtion_error(
                                  condiation: E_Salary.companynames,
                                  Error: E_Salary.companyname_value,
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  width: Get.width / 2.5,
                                  child: Inputfild(
                                    onChanged: (value) {
                                      E_Salary.Designation_validation(value);
                                    },
                                    labal: Experience_text.Designation,
                                    hint: Experience_text.Designation,
                                    controller: E_Salary.designation,
                                  ),
                                ),
                                valiadtion_error(
                                  condiation: E_Salary.designations,
                                  Error: E_Salary.Designtion_value,
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: Get.height / 50),
                        (E_Salary.valuecheck)
                            ? SizedBox()
                            : Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(Experience_text.Duration, style: TextStyle(fontSize: Get.width / 24, color: AppColor.subcolor)),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      //Date
                                      SizedBox(
                                        width: Get.width / 2.5,
                                        child: GestureDetector(
                                          onTap: () {
                                            E_Salary.showpicker(context);
                                          },
                                          child: Container(
                                            width: Get.width / 2.5,
                                            height: Get.height / 18,
                                            decoration: BoxDecoration(
                                              border: Border(
                                                bottom: BorderSide(
                                                  color: AppColor.Bottam_color,
                                                ),
                                              ),
                                            ),
                                            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text(
                                                    E_Salary.selectedDate == null
                                                        ? 'No date selected!'
                                                        : DateFormat('dd/MM/yyyy').format(E_Salary.selectedDate),
                                                    style: TextStyle(fontSize: Get.width / 26)),
                                                Icon(
                                                  Icons.calendar_month_sharp,
                                                  color: AppColor.subcolor,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: Get.width / 2.5,
                                        child: GestureDetector(
                                          onTap: () {
                                            E_Salary.showpicker2(context);
                                          },
                                          child: Container(
                                            width: Get.width / 2.5,
                                            height: Get.height / 18,
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
                                                Text(
                                                    E_Salary.selectedDate2 == null
                                                        ? 'No date selected!'
                                                        : DateFormat('dd/MM/yyyy').format(E_Salary.selectedDate2),
                                                    style: TextStyle(fontSize: Get.width / 26)),
                                                Icon(
                                                  Icons.calendar_month_sharp,
                                                  color: AppColor.subcolor,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                        SizedBox(height: Get.height / 90),
                        Row(
                          children: [
                            Checkbox(
                                value: E_Salary.valuecheck,
                                onChanged: (newvalue) {
                                  E_Salary.valuecheck_fun(newvalue);
                                }),
                            Text(
                              Experience_text.currently,
                              style: TextStyle(
                                fontSize: Get.width / 24,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: Get.height / 50),
                        Text(Experience_text.ctc, style: TextStyle(fontSize: Get.width / 23, color: AppColor.subcolor)),
                        GestureDetector(
                          onTap: () {
                            Showdialog.showdialod(
                                height: Get.height / 4,
                                context: context,
                                colamWidget: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: Get.width / 10),
                                  child: StatefulBuilder(
                                    builder: (BuildContext context, inChage) {
                                      return Row(
                                        children: [
                                          Column(
                                            children: [
                                              Text(
                                                Experience_text.Lacks,
                                                style: TextStyle(color: AppColor.subcolor, fontSize: Get.width / 22)),
                                              NumberPicker(
                                                haptics: true,
                                                minValue: 0,
                                                maxValue: 15,
                                                itemHeight: Get.height / 13,
                                                selectedTextStyle: TextStyle(color: AppColor.black_all, fontSize: Get.width / 22),
                                                decoration: BoxDecoration(
                                                  border: Border(
                                                    top: BorderSide(color: AppColor.subcolor),
                                                    bottom: BorderSide(color: AppColor.subcolor),
                                                  ),
                                                ),
                                                value: E_Salary.selectLack2,
                                                onChanged: (value) {
                                                  E_Salary.CTC_fuction(value);
                                                  inChage(() {});
                                                },
                                              ),
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              Text(
                                                Experience_text.Thousands,
                                                style: TextStyle(color: AppColor.subcolor, fontSize: Get.width / 22),
                                              ),
                                              NumberPicker(
                                                haptics: true,
                                                minValue: 0,
                                                maxValue: 98,
                                                itemHeight: Get.height / 13,
                                                selectedTextStyle: TextStyle(color: AppColor.black_all, fontSize: Get.width / 22),
                                                decoration: BoxDecoration(
                                                  border: Border(
                                                    top: BorderSide(color: AppColor.subcolor),
                                                    bottom: BorderSide(color: AppColor.subcolor),
                                                  ),
                                                ),
                                                value: E_Salary.selectThousand2,
                                                onChanged: (value) {
                                                  E_Salary.CTC2_fuction(value);
                                                  inChage(() {});
                                                },
                                              ),
                                            ],
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                ),
                                actions: [
                                  OnButtons_short(
                                    onTap: () {
                                      print("Lack :- ${E_Salary.selectLack2}, Month :- ${E_Salary.selectThousand2}");
                                      Get.back();
                                    },
                                    btn_name: Experience_text.Save,
                                    Border_color: AppColor.Button_color,
                                    btn_color: AppColor.Button_color,
                                    text_color: AppColor.Full_body_color,
                                  )
                                ],
                                hedingtext: Specialization_text.Praduation,
                                onTabs: () {Get.back();});
                          },
                          child: Pop_Container(
                            text: Experience_text.E_CTC,
                            condition: E_Salary.CTC,
                            text2: '${E_Salary.Expected_Lack_value2} Lack  | ${E_Salary.Expected_Thousand_value2} Thousand',
                          ),
                        ),
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
