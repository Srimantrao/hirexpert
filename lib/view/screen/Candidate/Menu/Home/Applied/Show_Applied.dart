// ignore_for_file: camel_case_types, file_names, prefer_const_constructors_in_immutables, prefer_const_constructors, non_constant_identifier_names, invalid_use_of_protected_member

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hirexpert/controller/API_handler/Candidate/Menu/Home/Appling_API_handler.dart';
import 'package:hirexpert/view/utils/app_loder.dart';
import '../../../../../utils/app_String.dart';
import '../../../../../utils/app_color.dart';
import '../../../../../utils/app_icon.dart';
import 'Details_Applid.dart';

class Show_Applied extends StatelessWidget {
  final ApplingApiHandler Appling = Get.put(ApplingApiHandler());

  Show_Applied({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: size.height / 10,
        backgroundColor: AppColor.Full_body_color,
        elevation: 0,
        automaticallyImplyLeading: false,
        surfaceTintColor: AppColor.Full_body_color,
        title: Text(My_Jobs_Screen.Applied, style: TextStyle(fontWeight: FontWeight.w700)),
        actions: [Icon(Icons.notifications), SizedBox(width: size.width / 50)],
      ),
      body: Obx(() {
          if (Appling.Detailing.isLoding.value) {
            return Scaffold(
              body: Container(
                height: Get.height,
                width: Get.width,
                decoration: BoxDecoration(color: AppColor.Full_body_color),
                child: Center(child: Image.asset(AppLoder.infinityloder_without_background)),
              ),
            );
          } else if (Appling.Detailing.Details_data.value['data'] == null) {
            return Scaffold(
              body: Container(
                height: Get.height,
                width: Get.width,
                decoration: BoxDecoration(color: AppColor.Full_body_color),
                child: Center(
                  child: Text("Your Data is Empty !", style: TextStyle(fontSize: Get.width / 25)),
                ),
              ),
            );
          } else {
            return Container(
              height: size.height,
              width: size.width,
              decoration: BoxDecoration(
                color: AppColor.Full_body_color,
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width / 30),
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  itemCount: Appling.Detailing.Details_data['data'].length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        Get.to(
                          () => Details_Appild(
                            Icon: Appling.Detailing.Details_data.value['data']["ProfileImage"],
                            Job_Tital: Appling.Detailing.Details_data.value['data']["JobTitle"],
                            Language: Appling.Detailing.Details_data.value['data']["TechName"],
                            Commpany: Appling.Detailing.Details_data.value['data']["ComName"],
                            Working: Appling.Detailing.Details_data.value['data']["JobShift"],
                            Location: Appling.Detailing.Details_data.value['data']["hireEmp"],
                            Job_time: Appling.Detailing.Details_data.value['data']["JobType"],
                            Exp: Appling.Detailing.Details_data.value['data']["MinExperience"],
                            lake: Appling.Detailing.Details_data.value['data']["days"],
                            Hybrid: Appling.Detailing.Details_data.value['data']["WorkSet"],
                            stats: Appling.Detailing.Details_data.value['data']["FormatDt"],
                          ),
                        );
                      },
                      child: Container(
                        height: size.height / 3.5,
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
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: size.width / 40),
                                  child: Container(
                                    width: size.width / 5.5,
                                    height: size.height / 12,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(size.width / 30),
                                      color: AppColor.Full_body_color,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(15),
                                      child: Image.network(Appling.Detailing.Details_data.value['data']["ProfileImage"]),
                                    ),
                                  ),
                                ),
                                SizedBox(width: size.width / 50),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Row(
                                          children: [
                                            Text(Appling.Detailing.Details_data.value['data']["JobTitle"], style: TextStyle(color: AppColor.subcolor)),
                                          ],
                                        ),
                                      ],
                                    ),
                                   SizedBox(
                                     width: Get.width/2.5,
                                     child: Column(
                                       children: [
                                         Text(Appling.Detailing.Details_data.value['data']["TechName"], style: TextStyle(fontSize: size.width / 23, fontWeight: FontWeight.w600)),
                                         Text(Appling.Detailing.Details_data.value['data']["ComName"], style: TextStyle(fontSize: size.width / 26, fontWeight: FontWeight.w400, color: AppColor.Button_color)),
                                       ],
                                     ),
                                   )
                                  ],
                                ),
                                SizedBox(width: size.width / 4),
                                SvgPicture.asset(AppIcons.bookmark),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      width: size.width / 3.2,
                                      height: size.height / 25,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(size.width / 60),
                                        color: AppColor.ditalis_conatiner,
                                      ),
                                      child: Center(
                                        child: Text(Appling.Detailing.Details_data.value['data']["JobShift"], style: TextStyle(fontWeight: FontWeight.w600, fontSize: size.width / 30)),
                                      ),
                                    ),
                                    SizedBox(width: size.width / 40),
                                    Container(
                                      width: size.width / 7,
                                      height: size.height / 25,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(size.width / 60),
                                        color: AppColor.ditalis_conatiner,
                                      ),
                                      child: Center(
                                        child: Text(
                                          textAlign: TextAlign.center,
                                          Appling.Detailing.Details_data.value['data']["MinExperience"],
                                          style: TextStyle(fontWeight: FontWeight.w600, fontSize: size.width / 30),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: size.width / 40),
                                    Container(
                                      width: size.width / 5,
                                      height: size.height / 25,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(size.width / 60),
                                        color: AppColor.ditalis_conatiner,
                                      ),
                                      child: Center(
                                        child: Text(
                                          Appling.Detailing.Details_data.value['data']["JobType"],
                                          style: TextStyle(fontWeight: FontWeight.w600, fontSize: size.width / 30),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: size.height / 80),
                                Row(
                                  children: [
                                    Container(
                                      width: size.width / 5,
                                      height: size.height / 25,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(size.width / 60),
                                        color: AppColor.ditalis_conatiner,
                                      ),
                                      child: Center(
                                        child: Text(
                                          Appling.Detailing.Details_data.value['data']["WorkWeek"],
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: size.width / 35,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: size.width / 40),
                                    Container(
                                      width: size.width / 2.5,
                                      height: size.height / 25,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(size.width / 60),
                                        color: AppColor.ditalis_conatiner,
                                      ),
                                      child: Center(
                                        child: Text(Appling.Detailing.Details_data.value['data']["days"], style: TextStyle(fontWeight: FontWeight.w600, fontSize: size.width / 30),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: size.width / 40),
                                    Container(
                                      width: size.width / 5,
                                      height: size.height / 25,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(size.width / 60),
                                        color: AppColor.ditalis_conatiner,
                                      ),
                                      child: Center(
                                        child: Text(Appling.Detailing.Details_data.value['data']["WorkSet"], style: TextStyle(fontWeight: FontWeight.w600, fontSize: size.width / 30),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: size.width / 40),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: size.width / 50),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(Appling.Detailing.Details_data.value['data']["FormatDt"], style: TextStyle(color: AppColor.subcolor)),
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
        },
      ),
    );
  }
}
