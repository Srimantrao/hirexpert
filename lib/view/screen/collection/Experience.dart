import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hirexpert/view/utils/app_color.dart';

import '../../utils/aap_image.dart';

class Experience extends StatefulWidget {
  const Experience({super.key});

  @override
  State<Experience> createState() => _ExperienceState();
}

class _ExperienceState extends State<Experience> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(
          color: AppColor.Full_body_color,
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
          ],
        ),
      ),
    );
  }
}
