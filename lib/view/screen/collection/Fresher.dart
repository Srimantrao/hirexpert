// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'package:hirexpert/view/utils/app_color.dart';
import 'package:hirexpert/view/utils/app_icon.dart';
import '../../../modal/Dropdowns/drops.dart';
import '../../utils/aap_image.dart';
import '../../utils/app_String.dart';
import '../../utils/common/Buttons/wideButtons.dart';
import '../../utils/common/Dropdown/fresher_comm.dart';

class Fresher extends StatefulWidget {
  const Fresher({super.key});

  @override
  State<Fresher> createState() => _FresherState();
}

class _FresherState extends State<Fresher> {
  //Visble //Swcich
  bool Visible = false;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(
          color: AppColor.Full_body_color,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Get.width / 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: Get.height / 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(AppImage.profile, scale: 5),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("HI", style: TextStyle(fontSize: Get.width / 25)),
                  Text("HI", style: TextStyle(fontSize: Get.width / 25)),
                  Text("HI", style: TextStyle(fontSize: Get.width / 25)),
                ],
              ),
              SizedBox(height: Get.height / 20),

              //Fresher
              Container(
                height: Get.height / 25,
                width: Get.width,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: AppColor.Bottam_color),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      Experience_text.IM,
                      style: TextStyle(
                        fontSize: Get.width / 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(6),
                      child: FlutterSwitch(
                        activeColor: AppColor.Button_color,
                        padding: 2,
                        width: Get.width / 9,
                        value: Visible,
                        onToggle: (newvalue) {
                          Visible = !Visible;
                          setState(() {});
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: Get.height / 50),

              //Experience
              Visibility(
                visible: Visible,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      Experience_text.experience,
                      style: TextStyle(
                        color: AppColor.subcolor,
                        fontSize: Get.width / 25,
                      ),
                    ),
                    const Experience(),
                  ],
                ),
              ),
              SizedBox(height: Get.height / 50),

              //Per Anum
              Text(
                Experience_text.current,
                style: TextStyle(
                  color: AppColor.subcolor,
                  fontSize: Get.width / 25,
                ),
              ),
              Container(
                height: Get.height / 20,
                width: Get.width,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: AppColor.Bottam_color,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
