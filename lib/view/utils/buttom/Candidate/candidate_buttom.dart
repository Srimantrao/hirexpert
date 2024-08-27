// ignore_for_file: camel_case_types, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:hirexpert/view/utils/app_color.dart';
import 'package:hirexpert/view/utils/app_icon.dart';
import 'package:provider/provider.dart';

import '../../../../controller/User_Controller/Candidate_Controller/BottamController/MenuNavigationController.dart';


class Candidate_Bottam extends StatelessWidget {
  Candidate_Bottam({super.key});

  @override
  Widget build(BuildContext context) {
    final nav = Provider.of<MenuNavigationController>(context, listen: false);
    return Scaffold(
      bottomNavigationBar: Container(
        width: Get.width,
        height: Get.height / 15,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Get.width / 15),
            topRight: Radius.circular(Get.width / 15),
          ),
          color: AppColor.Buttom_color,
        ),
        child: Consumer<MenuNavigationController>(
          builder: (BuildContext context, value, Widget? child) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  highlightColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  onTap: () {
                    nav.SelectIndex_one();
                  },
                  child: (nav.Selectindex == 0)
                      ? SvgPicture.asset(AppIcons.open_job, height: Get.height / 32, width: Get.width / 32)
                      : SvgPicture.asset(AppIcons.Jobs, height: Get.height / 32, width: Get.width / 32),
                ),
                InkWell(
                  highlightColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  onTap: () {
                    nav.SelectIndex_two();
                  },
                  child: (nav.Selectindex == 1)
                      ? SvgPicture.asset(AppIcons.Search_job, height: Get.height / 32, width: Get.width / 32)
                      : SvgPicture.asset(AppIcons.Search, height: Get.height / 32, width: Get.width / 32),
                ),
                InkWell(
                  onTap: () {
                    nav.SelectIndex_three();
                  },
                  child: (nav.Selectindex == 2)
                      ? SvgPicture.asset(AppIcons.profile_open, height: Get.height / 32, width: Get.width / 32)
                      : SvgPicture.asset(AppIcons.Profile, height: Get.height / 32, width: Get.width / 32),
                ),
                InkWell(
                  onTap: () {
                    nav.SelectIndex_four();
                  },
                  child: (nav.Selectindex == 3)
                      ? SvgPicture.asset(AppIcons.Messages_Open, height: Get.height / 32, width: Get.width / 32)
                      : SvgPicture.asset(AppIcons.Messages, height: Get.height / 32, width: Get.width / 32),
                ),
              ],
            );
          },
        ),
      ),
      body: Consumer<MenuNavigationController>(
        builder: (BuildContext context, value, Widget? child) {
          return nav.Selectitem(nav.Selectindex);
        },
      ),
    );
  }
}
