// ignore_for_file: camel_case_types, file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hirexpert/view/utils/app_color.dart';
import 'package:provider/provider.dart';

import '../../../../../controller/CheckMarkController/Notification_Controller.dart';
import '../../../../utils/app_String.dart';
import '../../../../utils/common/Buttons/ShortButton.dart';
import '../../../../utils/common/Row/CheckMark.dart';

class Notification_setting extends StatefulWidget {
  const Notification_setting({super.key});

  @override
  State<Notification_setting> createState() => _Notification_settingState();
}

class _Notification_settingState extends State<Notification_setting> {
  @override
  Widget build(BuildContext context) {
    final Notifi = Provider.of<Notification_Controller>(
      context,
      listen: false,
    );
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(Get.height / 15),
        child: AppBar(
          backgroundColor: AppColor.Full_body_color,
          automaticallyImplyLeading: false,
          title: Container(
            height: Get.height / 20,
            width: Get.width,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: AppColor.Buttom_color,
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: (){
                    Get.back();
                  },
                  child: const Icon(
                    Icons.navigate_before,
                    size: 35,
                  ),
                ),
                Text(
                  Notification_text.Hedding,
                  style: TextStyle(
                    fontSize: Get.width / 20,
                  ),
                ),
                const SizedBox(),
              ],
            ),
          ),
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
            child: Consumer<Notification_Controller>(
              builder: (BuildContext context, value, Widget? child) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: Get.height / 70),
                    Text(
                      Notification_text.subheding,
                      style: TextStyle(
                        fontSize: Get.width / 24,
                        color: AppColor.subcolor,
                      ),
                    ),
                    SizedBox(height: Get.height / 50),

                    //Update me once per week
                    CheckMark(
                      rowText: Notification_text.Update_me_once_per_week,
                      valueType: Notifi.Update_me_once_per_week,
                      onChanged: (val) {
                        Notifi.Update_me_once_per_week_fun(val);
                      },
                    ),

                    //Update me once per week
                    CheckMark(
                      rowText: Notification_text.Update_me_every_2_weeks,
                      valueType: Notifi.Update_me_every_2_weeks,
                      onChanged: (val) {
                        Notifi.Update_me_every_2_weeks_fun(val);
                      },
                    ),

                    //Update me once a month
                    CheckMark(
                      rowText: Notification_text.Update_me_once_a_month,
                      valueType: Notifi.Update_me_once_a_month,
                      onChanged: (val) {
                        Notifi.Update_me_once_a_month_fun(val);
                      },
                    ),

                    //I'd prefer no job match notifications
                    CheckMark(
                      rowText: Notification_text
                          .Id_prefer_no_job_match_notifications,
                      valueType: Notifi.Id_prefer_no_job_match_notifications,
                      onChanged: (val) {
                        Notifi.Id_prefer_no_job_match_notifications_fun(val);
                      },
                    ),

                    //Update me immediately when new job available
                    CheckMark(
                      rowText: Notification_text
                          .Update_me_immediately_when_new_job_available,
                      valueType:
                          Notifi.Update_me_immediately_when_new_job_available,
                      onChanged: (val) {
                        Notifi.Update_me_immediately_when_new_job_available_fun(
                            val);
                      },
                    ),

                    //SubHedding Seconed
                    SizedBox(height: Get.height / 50),
                    Text(
                      Notification_text.suhdding_2,
                      style: TextStyle(
                        fontSize: Get.width / 24,
                        color: AppColor.subcolor,
                      ),
                    ),
                    SizedBox(height: Get.height / 50),

                    //Yes
                    CheckMark(
                      rowText: Notification_text.Yes,
                      valueType: Notifi.Employers_yes,
                      onChanged: (val) {
                        Notifi.Employers_yes_fun(val);
                      },
                    ),

                    //No
                    CheckMark(
                      rowText: Notification_text.no,
                      valueType: Notifi.Employers_no,
                      onChanged: (val) {
                        Notifi.Resources_no_fun(val);
                      },
                    ),

                    //SubHedding Seconed
                    SizedBox(height: Get.height / 50),
                    Text(
                      Notification_text.suhdding_3,
                      style: TextStyle(
                        fontSize: Get.width / 24,
                        color: AppColor.subcolor,
                      ),
                    ),
                    SizedBox(height: Get.height / 50),

                    //Yes
                    CheckMark(
                      rowText: Notification_text.Yes,
                      valueType: Notifi.Resources_yes,
                      onChanged: (val) {
                        Notifi.Resources_yes_fun(val);
                      },
                    ),

                    //No
                    CheckMark(
                      rowText: Notification_text.no,
                      valueType: Notifi.Employers_no,
                      onChanged: (val) {
                        Notifi.Resources_no_fun(val);
                      },
                    ),

                    //Buttons
                    SizedBox(height: Get.height / 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        OnButtons_short(
                          btn_name: Notification_text.Reset,
                          Border_color: AppColor.Buttom_color,
                          btn_color: AppColor.Textfild_color,
                          text_color: AppColor.subcolor,
                        ),
                        OnButtons_short(
                          btn_name: Notification_text.Save,
                          Border_color: AppColor.Button_color,
                          btn_color: AppColor.Button_color,
                          text_color: AppColor.Full_body_color,
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
