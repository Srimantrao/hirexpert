// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:hirexpert/view/screen/Candidate/message/Message_sent.dart';
import 'package:hirexpert/view/utils/app_color.dart';

import '../../../utils/app_String.dart';

class Message extends StatefulWidget {
  const Message({super.key});

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: Get.height / 10,
        backgroundColor: AppColor.Full_body_color,
        elevation: 0,
        surfaceTintColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title: const Text(
          Message_text.Hedding,
          style: TextStyle(
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          const Icon(Icons.notifications),
          SizedBox(width: Get.width / 50),
        ],
      ),
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(
          color: AppColor.Full_body_color,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Get.width / 20,
          ),
          child: ListView.builder(
            itemCount: 1,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: (){
                  Get.to(()=>const Message_sent());
                },
                child: Container(
                  height: Get.height / 10,
                  width: Get.width,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: AppColor.select_check_color,
                      ),
                    ),
                  ),
                  child: Row(
                    children: [
                      Row(
                        children: [
                          const CircleAvatar(radius: 30),
                          SizedBox(width: Get.width / 30),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                Message_text.Sagar_Patil,
                                style: TextStyle(
                                  fontSize: Get.width / 20,
                                ),
                              ),
                              Text(
                                Message_text.Lorem,
                                style: TextStyle(
                                  color: AppColor.subcolor,
                                ),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
