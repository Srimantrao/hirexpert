// ignore_for_file: camel_case_types, non_constant_identifier_names, file_names, prefer_const_constructors, prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hirexpert/view/screen/Employer/Menu/My_Job/Live_jobs/Job_ID.dart';
import 'package:hirexpert/view/utils/app_color.dart';
import 'package:hirexpert/view/utils/app_icon.dart';

import '../../../../../../modal/Job/Search_list.dart';
import '../../../../../utils/app_String.dart';
import '../../../../../utils/common/Container/Option.dart';

class LiveJobsDitails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: size.height / 10,
        backgroundColor: AppColor.Full_body_color,
        elevation: 0,
        leading: GestureDetector(
          onTap: (){
            Get.back();
          },
            child: Icon(Icons.navigate_before),
        ),
        automaticallyImplyLeading: false,
        surfaceTintColor: AppColor.Full_body_color,
        centerTitle: true,
        title: Text('Job Details', style: TextStyle(fontWeight: FontWeight.w700)),
      ),
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(color: AppColor.Full_body_color),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Get.width / 20),
          child: SafeArea(
            child: NestedScrollView(
              headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
                return [
                  SliverAppBar(
                    elevation: 0,
                    backgroundColor: AppColor.Full_body_color,
                    forceMaterialTransparency: true,
                    pinned: true,
                    collapsedHeight: size.height / 3.5,
                    automaticallyImplyLeading: false,
                    flexibleSpace: GestureDetector(
                      onTap: (){
                          Get.to(()=> JobId());
                      },
                      child: Container(
                        height: size.height / 3.8,
                        width: size.width,
                        decoration: BoxDecoration(
                          border: Border(
                            top: BorderSide(color: AppColor.Bottam_color),
                            bottom: BorderSide(color: Colors.transparent),
                          ),
                          color: AppColor.Full_body_color,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.symmetric(vertical: size.width / 40),
                                      child: SvgPicture.asset(AppIcons.Layer_1),
                                    ),
                                    SizedBox(width: size.width / 50),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('JobTitle', style: TextStyle(color: AppColor.subcolor)),
                                        SizedBox(width: Get.width / 2, child: Text('TechName', style: TextStyle(fontSize: size.width / 26, fontWeight: FontWeight.w600))),
                                        Text('ComName', style: TextStyle(fontSize: size.width / 26, fontWeight: FontWeight.w400, color: AppColor.Button_color)),
                                      ],
                                    ),
                                  ],
                                ),
                                SvgPicture.asset(AppIcons.Editing),
                              ],
                            ),
                            SizedBox(height: Get.height / 50),
                            Wrap(
                              runSpacing: Get.height / 90,
                              children: [
                                SizedBox(
                                  height: Get.height / 30,
                                  width: Get.width / 5,
                                  child: Container(
                                    width: size.width / 3.2,
                                    height: size.height / 25,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(size.width / 60),
                                      color: AppColor.ditalis_conatiner,
                                    ),
                                    child: Center(
                                      child: Text('JobType', style: TextStyle(fontWeight: FontWeight.w600, fontSize: size.width / 30)),
                                    ),
                                  ),
                                ), SizedBox(width: Get.width / 50),
                                SizedBox(
                                  height: Get.height / 30,
                                  width: Get.width / 5,
                                  child: Container(
                                    width: size.width / 7,
                                    height: size.height / 25,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(size.width / 60),
                                      color: AppColor.ditalis_conatiner,
                                    ),
                                    child: Center(
                                      child: Text('Location', style: TextStyle(fontWeight: FontWeight.w600, fontSize: size.width / 30)),
                                    ),
                                  ),
                                ), SizedBox(width: Get.width / 50),
                                SizedBox(
                                  height: Get.height / 30,
                                  width: Get.width / 5,
                                  child: Container(
                                    width: size.width / 5,
                                    height: size.height / 25,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(size.width / 60),
                                      color: AppColor.ditalis_conatiner,
                                    ),
                                    child: Center(
                                      child: Text('JobType', style: TextStyle(fontWeight: FontWeight.w600, fontSize: size.width / 30)),
                                    ),
                                  ),
                                ), SizedBox(width: Get.width / 50),
                                SizedBox(
                                  height: Get.height / 30,
                                  width: Get.width / 5,
                                  child: Container(
                                    width: size.width / 5,
                                    height: size.height / 25,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(size.width / 60),
                                      color: AppColor.ditalis_conatiner,
                                    ),
                                    child: Center(
                                      child: Text('Experience', style: TextStyle(fontWeight: FontWeight.w600, fontSize: size.width / 35)),
                                    ),
                                  ),
                                ), SizedBox(width: Get.width / 50),
                                SizedBox(
                                  height: Get.height / 30,
                                  width: Get.width / 5,
                                  child: Container(
                                    width: size.width / 2.5,
                                    height: size.height / 25,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(size.width / 60),
                                      color: AppColor.ditalis_conatiner,
                                    ),
                                    child: Center(
                                      child: Text('Salary', style: TextStyle(fontWeight: FontWeight.w600, fontSize: size.width / 30)),
                                    ),
                                  ),
                                ), SizedBox(width: Get.width / 50),
                                SizedBox(
                                  height: Get.height / 30,
                                  width: Get.width / 5,
                                  child: Container(
                                    width: size.width / 5,
                                    height: size.height / 22,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(size.width / 60),
                                      color: AppColor.ditalis_conatiner,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(horizontal: Get.width / 30),
                                      child: Center(
                                        child: Text('WorkSet', style: TextStyle(fontWeight: FontWeight.w600, fontSize: size.width / 33)),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: size.width / 50),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text('FormatDt', style: TextStyle(color: AppColor.subcolor)),
                              ],
                            ),
                            Divider(color: AppColor.Bottam_color)
                          ],
                        ),
                      ),
                    ),
                  ),
                ];
              },
              body: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: Get.height / 60),
                    Text(Details_texts.Job_Description, style: TextStyle(fontWeight: FontWeight.w700, fontSize: Get.width / 22)),
                    SizedBox(height: Get.height / 60),
                    SizedBox(
                      height: Get.height / 0.52,
                      child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 1,
                        itemBuilder: (BuildContext context, int index) {
                          return Html(
                            data: '''Appling.Detailing.Details_data['data']['JobAbout']''',
                            style: {
                              'p': Style(fontSize: FontSize(Get.width / 27)),
                              'strong': Style(fontSize: FontSize(Get.width / 22)),
                              'li': Style(fontSize: FontSize(Get.width / 27))
                            },
                          );
                        },
                      ),
                    ),
                    SizedBox(height: Get.height / 60),
                    Text(Details_texts.Secondary_Skillset, style: TextStyle(fontWeight: FontWeight.w700, fontSize: Get.width / 22)),
                    Column(
                      children: [
                        SizedBox(height: Get.height / 80),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Collec(text: Details_texts.Marketing, color: AppColor.Button_color, textcolor: AppColor.Full_body_color),
                            Collec(text: Details_texts.Field_Sales, color: AppColor.Button_color, textcolor: AppColor.Full_body_color),
                            Collec(text: Details_texts.Sales, color: AppColor.Button_color, textcolor: AppColor.Full_body_color),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: Get.height / 60),

                    //Benefits Offered
                    Text(Details_texts.Benefits_Offered, style: TextStyle(fontWeight: FontWeight.w700, fontSize: Get.width / 22)),
                    SizedBox(height: Get.height / 50),
                    SizedBox(
                      height: Get.height / 45,
                      child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: Benefits_Offered.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 8,
                                height: 8,
                                child: CircleAvatar(backgroundColor: AppColor.subcolor),
                              ),
                              SizedBox(width: Get.width / 23),
                              Expanded(
                                child: Text(Benefits_Offered[index], style: TextStyle(fontSize: 16, color: AppColor.subcolor),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                    SizedBox(height: Get.height / 50),

                    //Suppiement Pay
                    Text(Details_texts.Supplement_Pay, style: TextStyle(fontWeight: FontWeight.w700, fontSize: Get.width / 22)),
                    SizedBox(height: Get.height / 50),
                    SizedBox(
                      height: Get.width / 10,
                      child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: Supplement_pay.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 8,
                                height: 8,
                                child: CircleAvatar(backgroundColor: AppColor.subcolor),
                              ),
                              SizedBox(width: Get.width / 23),
                              Expanded(
                                child: Text(Supplement_pay[index], style: TextStyle(fontSize: 16, color: AppColor.subcolor),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                    SizedBox(height: Get.height / 50),

                    //Education Level Requird
                    Text(Details_texts.Educational_Level_Required, style: TextStyle(fontWeight: FontWeight.w700, fontSize: Get.width / 22)),
                    SizedBox(height: Get.height / 50),
                    SizedBox(
                      height: Get.width / 15,
                      child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: Education_level_Required.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 8,
                                height: 8,
                                child: CircleAvatar(backgroundColor: AppColor.subcolor),
                              ),
                              SizedBox(width: Get.width / 23),
                              Expanded(
                                child: Text(Education_level_Required[index], style: TextStyle(fontSize: 16, color: AppColor.subcolor)),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                    SizedBox(height: Get.height / 50),

                    //Added Advantage Skills
                    Text(Details_texts.Added_Advantage_Skills, style: TextStyle(fontWeight: FontWeight.w700, fontSize: Get.width / 22)),
                    SizedBox(height: Get.height / 50),
                    SizedBox(
                      height: Get.width / 10,
                      child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: Added_Advantage_Skills.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 8,
                                height: 8,
                                child: CircleAvatar(backgroundColor: AppColor.subcolor),
                              ),
                              SizedBox(width: Get.width / 23),
                              Expanded(
                                child: Text(Added_Advantage_Skills[index], style: TextStyle(fontSize: 16, color: AppColor.subcolor)),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                    SizedBox(height: Get.height / 50),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
