// ignore_for_file: file_names, camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hirexpert/view/utils/appUrl.dart';
import 'package:hirexpert/view/utils/app_color.dart';
import 'package:hirexpert/view/utils/app_icon.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import '../../../../utils/app_String.dart';

class Message_sent extends StatelessWidget {
  final channel = WebSocketChannel.connect(Uri.parse(AppUrl.WebSocket));
  TextEditingController sendmessage = TextEditingController();

  Message_sent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: Get.width / 50,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(),
            Container(
              height: Get.height / 15,
              width: Get.width / 1.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  Get.width / 60,
                ),
                color: AppColor.Textfild_color,
              ),
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  controller: sendmessage,
                  decoration: InputDecoration(
                    hintText: Message_text.hint_text,
                    hintStyle: TextStyle(
                      color: AppColor.subcolor,
                    ),
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(11),
                      child: SvgPicture.asset(
                        AppIcons.Write,
                      ),
                    ),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                if (sendmessage.text.isNotEmpty) {
                  channel.sink.add(sendmessage.text);
                }
              },
              child: Container(
                height: Get.height / 15,
                width: Get.width / 6,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    Get.width / 60,
                  ),
                  color: AppColor.Button_color,
                ),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: SvgPicture.asset(AppIcons.Send),
                ),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        toolbarHeight: Get.height / 10,
        backgroundColor: AppColor.Full_body_color,
        elevation: 0,
        surfaceTintColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Icon(Icons.navigate_before_outlined, size: 30),
            Text(
              Message_text.Hedding,
              style: TextStyle(
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
        actions: [
          Icon(Icons.notifications),
          SizedBox(width: Get.width / 50),
        ],
      ),
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(
          color: AppColor.Full_body_color,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: Get.width / 30),
            child: StreamBuilder(
              stream: channel.stream,
              builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      height: Get.height / 18,
                      width: Get.width / 3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Get.width / 60),
                        color: AppColor.Button_color,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Center(
                          child: Text(
                            textAlign: TextAlign.center,
                            snapshot.hasData ? '${snapshot.data}' : "",
                            style: TextStyle(
                              color: AppColor.Full_body_color,
                            ),
                          ),
                        ),
                      ),
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
