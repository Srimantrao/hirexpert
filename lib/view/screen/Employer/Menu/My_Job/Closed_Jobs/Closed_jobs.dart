
// ignore_for_file: file_names, camel_case_types, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hirexpert/view/screen/Employer/Menu/My_Job/Live_jobs/Live_Jobs_Ditails.dart';
import 'package:hirexpert/view/utils/app_color.dart';

import '../../../../../utils/app_icon.dart';

class Closed_jobs extends StatelessWidget {
  const Closed_jobs({super.key});

  @override
  Widget build(BuildContext context) {
    final size =  MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(color: AppColor.Full_body_color),
        child: ListView.builder(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: (){
                // Get.to(()=>LiveJobsDitails());
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
                                Text('JobTitle',style: TextStyle(color: AppColor.subcolor)),
                                SizedBox(width: Get.width / 2, child: Text('TechName', style: TextStyle(fontSize: size.width / 26, fontWeight: FontWeight.w600))),
                                Text('ComName', style: TextStyle(fontSize: size.width / 26, fontWeight: FontWeight.w400, color: AppColor.Button_color)),
                              ],
                            ),
                          ],
                        ),
                        GestureDetector(
                          onTap: (){
                            // Get.to(()=> LiveJobsDitails());
                          },
                          child: SvgPicture.asset(AppIcons.Editing),
                        ),
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
                              child: Text('JobType', style: TextStyle(fontWeight: FontWeight.w600, fontSize: size.width / 30),
                              ),
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
                        ), SizedBox(width: Get.width / 50), SizedBox(
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
                                child: Text('WorkSet', style: TextStyle(fontWeight: FontWeight.w600, fontSize: size.width / 33,)),
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
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
