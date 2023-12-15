import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:hirexpert/view/utils/app_String.dart';
import 'package:hirexpert/view/utils/app_color.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: Get.height / 10,
        backgroundColor: AppColor.Full_body_color,
        automaticallyImplyLeading: false,
        title: const Text(My_Jobs_Screen.My_Jobs),
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
            horizontal: Get.width / 30,
          ),
          child: Column(
            children: [
              Container(
                width: Get.width,
                height: Get.height / 9,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: AppColor.Menu_Container_color,
                    )
                  )
                ),
                child: Row(
                  children: [
                    Container(
                      width: Get.width / 6,
                      height: Get.height / 12,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          Get.width / 50,
                        ),
                        color: AppColor.Menu_Container_color,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
