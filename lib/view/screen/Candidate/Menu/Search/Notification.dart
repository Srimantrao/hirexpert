// ignore_for_file: file_names, camel_case_types, non_constant_identifier_names, unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hirexpert/controller/API_handler/Candidate/Menu/Search/Notification_Hendal.dart';
import 'package:hirexpert/view/utils/app_color.dart';

import '../../../../utils/app_String.dart';
import '../../../../utils/app_loder.dart';

class Notification_Screen extends StatelessWidget {
  final NotificationHendal noti = Get.put(NotificationHendal());

  Notification_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.Full_body_color,
        elevation: 0,
        automaticallyImplyLeading: false,
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: const Icon(Icons.navigate_before_outlined),
        ),
        title: Text(
          Notification_text.titel,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: Get.width / 25,
          ),
        ),
        shape: UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppColor.Buttom_color,
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
          padding: EdgeInsets.symmetric(
            horizontal: Get.width / 30,
          ),
          child: Obx(
            () {
              if (noti.Notifica.isLoding.value) {
                return Center(
                  child: Image.asset(AppLoder.infinityloder_without_background),
                );
              } else if (noti.Notifica.Notification_data == null ||
                  noti.Notifica.Notification_data['data'] == null) {
                return const Center(
                  child: Text(API_Error.null_data),
                );
              } else {
                return ListView.builder(
                  itemCount: noti.Notifica.Notification_data['data'].length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: EdgeInsets.symmetric(vertical: Get.height / 90),
                      height: Get.height / 10,
                      width: Get.width,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: AppColor.Buttom_color,
                          ),
                        ),
                        color: AppColor.Full_body_color,
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                width: Get.width / 7,
                                height: Get.height / 15,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(Get.width / 30),
                                  border: Border.all(
                                    color: AppColor.Buttom_color,
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    noti.Notifica.Notification_data['data']
                                        [index]['NotificationId'],
                                  ),
                                ),
                              ),
                              SizedBox(width: Get.width / 50),
                              SizedBox(
                                width: Get.width / 1.35,
                                child: Text(
                                  noti.Notifica.Notification_data['data'][index]
                                      ['NotifyTitle'],
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: Get.width / 28,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: Get.height / 120),
                        ],
                      ),
                    );
                  },
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
