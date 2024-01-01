// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hirexpert/view/utils/app_color.dart';

import '../../utils/aap_image.dart';
import '../../utils/app_String.dart';
import '../../utils/common/Textfild/Inputfild.dart';

class Collection extends StatefulWidget {
  const Collection({super.key});

  @override
  State<Collection> createState() => _CollectionState();
}

class _CollectionState extends State<Collection> {
  TextEditingController mobile = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        decoration: BoxDecoration(
          color: AppColor.Full_body_color,
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: Get.height / 50,
            ),
            child: Column(
              children: [
                SizedBox(height: Get.height / 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(AppImage.profile, scale: 4),
                  ],
                ),
                SizedBox(height: Get.height / 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "HI,",
                      style: TextStyle(
                        fontSize: Get.width / 18,
                      ),
                    ),
                    Text(
                      "HI,",
                      style: TextStyle(
                        fontSize: Get.width / 18,
                      ),
                    ),
                    Text(
                      "HI,",
                      style: TextStyle(
                        fontSize: Get.width / 18,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: Get.height / 20),
                Inputfild(
                  labal: EditProfile_text.Secondary,
                  hint: EditProfile_text.Enter_Secondary,
                  controller: mobile,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
