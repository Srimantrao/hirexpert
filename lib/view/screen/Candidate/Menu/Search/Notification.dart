// ignore_for_file: file_names, camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hirexpert/controller/API_Cobtroller/Candidate/Collction/Login/login_API_controller.dart';
import 'package:hirexpert/controller/API_Cobtroller/Candidate/Menu/Notification/Notification_API_Controller.dart';
import 'package:hirexpert/view/utils/app_color.dart';

import '../../../../utils/app_String.dart';

class Notification_Screen extends StatefulWidget {
  const Notification_Screen({super.key});

  @override
  State<Notification_Screen> createState() => _Notification_ScreenState();
}

class _Notification_ScreenState extends State<Notification_Screen> {
  OptionApiController login = Get.put(OptionApiController());
  NotificationApiController Notifica = Get.put(NotificationApiController());

  @override
  void initState() {
    Future.microtask(() async {
      if (login.option_data['status'] == true) {
        Notifica.NotificationApiController_fuction(
          Tokan: login.option_data['data']['LoginToken'],
        );
      }
    });
    super.initState();
  }

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
            child: const Icon(Icons.navigate_before_outlined)),
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
            child: Obx(() {
              if (Notifica.isLoding.value) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (Notifica.Notification_data == null) {
                return const Center(
                  child: Text(API_Error.null_data),
                );
              } else {
                return ListView.builder(
                  itemCount: Notifica.Notification_data['data'].length,
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
                                  child: Text(Notifica.Notification_data['data']
                                      [index]['NotificationId']),
                                ),
                              ),
                              SizedBox(width: Get.width / 50),
                              SizedBox(
                                width: Get.width / 1.35,
                                child: Text(
                                  Notifica.Notification_data['data'][index]
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
            })),
      ),
    );
  }
}
