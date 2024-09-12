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
        automaticallyImplyLeading: false,
        backgroundColor: AppColor.Button_color,
        title: Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            children: [
              CircleAvatar(radius: 22),
              SizedBox(width: Get.width / 30),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(Message_text.Sagar_Patil, style: TextStyle(fontSize: Get.width / 25,color: AppColor.subcolor)),
                  Text(Message_text.Lorem, style: TextStyle(color: AppColor.Full_body_color,fontSize: Get.width / 30),
                  )
                ],
              )
            ],
          ),
        ),
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
                        final date = snapshot.data![reverseIndex]['timestamp']!;
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
                                      SizedBox(height: 10),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          Text(date,style: TextStyle(fontSize: Get.width/50,color: AppColor.subcolor)),
                                        ],
                                      ),
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
                        child: Container(
                          height: Get.height / 15,
                          width: Get.width / 1.5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(Get.width / 60),
                            color: AppColor.Textfild_color,
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: TextField(
                              onSubmitted: sendMessage,
                              controller: textController,
                              decoration: InputDecoration(
                                hintText: Message_text.hint_text,
                                hintStyle: TextStyle(color: AppColor.subcolor),
                                prefixIcon: Padding(
                                  padding: EdgeInsets.all(11),
                                  child: SvgPicture.asset(AppIcons.Write),
                                ),
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: Get.width / 20),
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
