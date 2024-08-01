// ignore_for_file: file_names, non_constant_identifier_names, must_be_immutable, prefer_const_constructors, prefer_const_constructors_in_immutables, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hirexpert/controller/API_Controller/Candidate/Collction/Concern/Concern_API_Controller.dart';
import 'package:hirexpert/view/utils/app_color.dart';
import 'package:hirexpert/view/utils/app_icon.dart';
import 'package:hirexpert/view/utils/common/Buttons/ShortButton.dart';
import 'package:hirexpert/view/utils/common/showpop/showdialog.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:provider/provider.dart';
import '../../../../controller/API_handler/Candidate/collection/Eduction.dart';
import '../../../../controller/User_Controller/Candidate_Controller/DropdownController/EducationController.dart';
import '../../../utils/aap_image.dart';
import '../../../utils/app_String.dart';
import '../../../utils/logic/next_thow.dart';
import 'Fresher.dart';

class Education extends StatefulWidget {
  final String? first_name;
  final String? last_name;

  Education({super.key, this.first_name, this.last_name});

  @override
  State<Education> createState() => _EducationState();
}

class _EducationState extends State<Education> {
  final ConcernApiController Con = Get.put(ConcernApiController());
  final Eduction_hedal Eduction = Get.put(Eduction_hedal());

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final JobTitle = Provider.of<JobTitle_Controller>(context, listen: false);
    final Education = Provider.of<Education_Controller>(context, listen: false);
    return Scaffold(
      bottomNavigationBar: Container(
        height: Get.height / 20,
        width: Get.width,
        decoration: BoxDecoration(
          color: AppColor.Full_body_color,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Get.width / 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  Get.back();
                },
                child: Row(
                  children: [
                    SvgPicture.asset(AppIcons.Backarrow),
                    SizedBox(width: Get.width / 80),
                    Text(Navigator_text.Back, style: TextStyle(fontSize: Get.width / 23, fontWeight: FontWeight.w600, color: AppColor.Button_color)),
                  ],
                ),
              ),
              Consumer<JobTitle_Controller>(
                builder: (BuildContext context, value, Widget? child) {
                  return InkWell(
                    onTap: () {
                      Con.ConcernApi_fuction(JobId: '1', Comment: JobTitle.JobTitalController.text);
                      if (JobTitle.SelectIndex && Education.select_Eduction && Education.currentValue) {
                        Get.to(() => const Fresher());
                      } else {
                        JobTitle.EmptyError();
                      }
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        NextThow(
                          text: Navigator_text.Next,
                          fontweight: JobTitle.SelectIndex && Education.select_Eduction && Education.currentValue,
                          fontcolor: JobTitle.SelectIndex && Education.select_Eduction && Education.currentValue,
                        ),
                        SizedBox(width: Get.width / 80),
                        NextArrow(arrowcolor: JobTitle.SelectIndex && Education.select_Eduction && Education.currentValue),
                      ],
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
      body: Consumer<Education_Controller>(
        builder: (BuildContext context, value, Widget? child) {
          return Container(
            width: Get.width,
            height: Get.height,
            decoration: BoxDecoration(
              color: AppColor.Full_body_color,
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: Get.width / 20,
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
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
                        Text(widget.first_name ?? '', style: TextStyle(fontSize: Get.width / 25)),
                        SizedBox(width: Get.width / 80),
                        Text(widget.last_name ?? '', style: TextStyle(fontSize: Get.width / 25)),
                      ],
                    ),
                    SizedBox(height: Get.height / 20),

                    //Education
                    Text(Specialization_text.Education, style: TextStyle(fontSize: Get.width / 25, color: AppColor.subcolor)),
                    GestureDetector(
                      onTap: () {
                        Showdialog.showdialod(
                          context: context,
                          colamWidget: SizedBox(
                            height: Get.width / 1,
                            child: ListView.builder(
                              itemCount: Eduction.Dedree.Degree_data['data'].length,
                              itemBuilder: (BuildContext context, int index) {
                                return Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        Education.Education_level(text: Eduction.Dedree.Degree_data['data'][index]['Name']);
                                      },
                                      child: Text(Eduction.Dedree.Degree_data['data'][index]['Name'],
                                        style: TextStyle(fontSize: Get.width / 28),
                                      ),
                                    ),
                                    SizedBox(height: Get.height / 50),
                                  ],
                                );
                              },
                            ),
                          ),
                          hedingtext: Specialization_text.Education_Level,
                          onTabs: () {
                            Get.back();
                          },
                        );
                      },
                      child: Pop_Container(
                        text: Specialization_text.Education_Level,
                        condition: Education.select_Eduction,
                        text2: Education.Select_Eduction,
                      ),
                    ),
                    SizedBox(height: Get.height / 50),

                    //Passsing Year
                    Text(
                      Specialization_text.graduation,
                      style: TextStyle(
                        fontSize: Get.width / 25,
                        color: AppColor.subcolor,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Showdialog.showdialod(
                            height: Get.height / 4,
                            context: context,
                            colamWidget: Padding(
                              padding: EdgeInsets.symmetric(horizontal: Get.width / 10),
                              child: StatefulBuilder(
                                builder: (BuildContext context, void Function(void Function()) setState) {
                                  return NumberPicker(
                                    haptics: true,
                                    minValue: 2000,
                                    maxValue: 2050,
                                    itemHeight: Get.height / 13,
                                    selectedTextStyle: TextStyle(color: AppColor.black_all, fontSize: Get.width / 22),
                                    decoration: BoxDecoration(
                                      border: Border(
                                        top: BorderSide(color: AppColor.subcolor),
                                        bottom: BorderSide(color: AppColor.subcolor),
                                      ),
                                    ),
                                    value: Education.currentIntValue,
                                    onChanged: (value) {
                                      Education.graduation_passing(value);
                                      setState(() {});
                                    },
                                  );
                                },
                              ),
                            ),
                            actions: [
                              OnButtons_short(
                                onTap: () {
                                  print("currentIntValue :- ${Education.currentIntValue}");
                                  Get.back();
                                },
                                btn_name: Experience_text.Save,
                                Border_color: AppColor.Button_color,
                                btn_color: AppColor.Button_color,
                                text_color: AppColor.Full_body_color,
                              )
                            ],
                            hedingtext: Specialization_text.Praduation,
                            onTabs: () {
                              Get.back();
                            });
                      },
                      child: Pop_Container(
                        text: Specialization_text.Praduation,
                        condition: Education.currentValue,
                        text2: Education.currentStringValue.toString(),
                      ),
                    ),
                    SizedBox(height: Get.height / 50),

                    //Job Title
                    Text(Specialization_text.Job_Title, style: TextStyle(fontSize: Get.width / 25, color: AppColor.subcolor)),
                    Consumer<JobTitle_Controller>(
                      builder: (BuildContext context, value, Widget? child) {
                        return InkWell(
                          onTap: () {
                            JobTitle.Selectindex_true();
                          },
                          child: Container(
                            height: Get.height / 25,
                            width: Get.width,
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(color: AppColor.Bottam_color),
                              ),
                            ),
                            child: TextField(
                              onChanged: (value) {
                                JobTitle.JobOnChang(value);
                              },
                              controller: JobTitle.JobTitalController,
                              decoration: InputDecoration(
                                hintText: Specialization_text.Job_Title,
                                hintStyle: TextStyle(fontSize: Get.width / 25),
                                contentPadding: EdgeInsets.symmetric(vertical: Get.width / 45),
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                    SizedBox(height: Get.width / 50),
                    Consumer<JobTitle_Controller>(
                      builder: (BuildContext context, value, Widget? child) {
                        return (JobTitle.showErroring)
                            ? Text(JobTitle.showError, style: TextStyle(color: AppColor.Error_color, fontWeight: FontWeight.w600, fontSize: Get.width / 28))
                            : const SizedBox();
                      },
                    ),
                    SizedBox(height: size.height / 3),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
