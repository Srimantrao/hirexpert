// ignore_for_file: non_constant_identifier_names

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hirexpert/view/utils/app_String.dart';
import 'package:hirexpert/view/utils/app_color.dart';
import 'package:hirexpert/view/utils/app_icon.dart';
import 'package:intl/intl.dart';

class Message extends StatefulWidget {
  const Message({super.key});

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
  List<Map<String, String>> messages = [];
  StreamController<List<Map<String, String>>> Messagecontroller = StreamController<List<Map<String, String>>>.broadcast();
  TextEditingController textController = TextEditingController();

  void sendMessage(String text) {
    if (text.isNotEmpty) {
      final timestamp = DateFormat('hh:mm a').format(DateTime.now());
      messages.add({'text': text, 'timestamp': timestamp});
      Messagecontroller.sink.add(messages);
      textController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: Get.height / 10,
        backgroundColor: AppColor.Full_body_color,
        elevation: 0,
        surfaceTintColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title: Text(Message_text.Hedding, style: TextStyle(fontWeight: FontWeight.w700)),
        actions: [Icon(Icons.notifications), SizedBox(width: Get.width / 50)],
      ),
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(color: AppColor.Full_body_color),
        child: Column(
          children: [
            Expanded(
              child: StreamBuilder<List<Map<String,String>>>(
                stream: Messagecontroller.stream,
                initialData: messages,
                builder: (BuildContext context, AsyncSnapshot<List<Map<String, String>>> snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                      reverse: true,
                      itemCount: snapshot.data!.length,
                      itemBuilder: (BuildContext context, int index) {
                        final reverseIndex = snapshot.data!.length - 1 - index;
                        final chatMessage = snapshot.data![reverseIndex]['text']!;
                        final timeStamp = snapshot.data![reverseIndex]['timestamp']!;
                        return Align(
                          alignment: Alignment.centerRight,
                          child: ListTile(
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: AppColor.Button_color,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(chatMessage, style: TextStyle(fontSize: 16, color: AppColor.Full_body_color)),
                                      SizedBox(height: 5),
                                      Text(timeStamp,style: TextStyle(fontSize: Get.width/50,color: AppColor.subcolor)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  } else {
                    return Center(child: CircularProgressIndicator());
                  }
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Get.width / 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          controller: textController,
                          decoration: InputDecoration(
                            prefixIcon: Padding(
                              padding: EdgeInsets.all(14),
                              child: SvgPicture.asset(AppIcons.Write),
                            ),
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            hintText: "Enter your message...",
                          ),
                          onSubmitted: sendMessage,
                        ),
                      ),
                      SizedBox(width: Get.width / 10),
                      Container(
                        width: Get.width / 6,
                        height: Get.height / 16,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(Get.width / 50),
                          color: AppColor.Button_color,
                        ),
                        child: IconButton(
                          icon: Icon(Icons.send, color: AppColor.Full_body_color),
                          onPressed: () {
                            sendMessage(textController.text);
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: Get.height/50),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
