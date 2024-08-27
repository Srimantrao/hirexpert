
// ignore_for_file: camel_case_types, prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hirexpert/view/utils/app_color.dart';
import 'package:hirexpert/view/utils/app_icon.dart';
import '../../../screen/Employer/Menu/My_Job/Selection.dart';

class Company_button extends StatefulWidget {
  const Company_button({super.key});

  @override
  State<Company_button> createState() => _Company_buttonState();
}

class _Company_buttonState extends State<Company_button> {

  int SelectIndex = 0;

  List<Widget> item = [
    Selection(),
  ];

  Widget ItemSelect(int index){
    return item[index];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: Get.height/15,
        width: Get.width,
        decoration: BoxDecoration(
          color: AppColor.Full_body_color,
        ),
        //
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: (){
                setState(() {
                   SelectIndex = 0;
                });
              },
                child: (SelectIndex == 0)
                    ? SvgPicture.asset(AppIcons.open_job, height: Get.height / 32, width: Get.width / 32)
                    : SvgPicture.asset(AppIcons.Jobs, height: Get.height / 32, width: Get.width / 32),
            ),
            SvgPicture.asset(AppIcons.Profile, height: Get.height / 32, width: Get.width / 32),
            SvgPicture.asset(AppIcons.Search, height: Get.height / 32, width: Get.width / 32),
            SvgPicture.asset(AppIcons.Messages, height: Get.height / 32, width: Get.width / 32),
          ],
        ),
      ),
      body: ItemSelect(SelectIndex),
    );
  }
}
