
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hirexpert/view/utils/app_color.dart';

class Addteams extends StatefulWidget {
  const Addteams({super.key});

  @override
  State<Addteams> createState() => _AddteamsState();
}

class _AddteamsState extends State<Addteams> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(color: AppColor.Full_body_color),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: Get.height/50),
            Text("Team Members", style: TextStyle(fontSize: Get.height / 45, fontWeight: FontWeight.w600)),
          ],
        )
      ),
    );
  }
}
