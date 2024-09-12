
// ignore_for_file: camel_case_types, prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hirexpert/view/screen/Employer/Menu/Candidates/Candidates.dart';
import 'package:hirexpert/view/screen/Employer/Menu/Profile/Employer_Profile.dart';
import 'package:hirexpert/view/screen/Employer/Menu/message/nameMessage.dart';
import 'package:hirexpert/view/utils/app_color.dart';
import 'package:hirexpert/view/utils/app_icon.dart';
import '../../../screen/Employer/Menu/My_Job/Selection.dart';

class Company_button extends StatefulWidget {
  const Company_button({super.key});

  @override
  State<Company_button> createState() => _Company_buttonState();
}

class _Company_buttonState extends State<Company_button> {

   ScrollController scrollController = ScrollController();
   bool _isVisible = true;

  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      if (scrollController.position.userScrollDirection == ScrollDirection.reverse) {
        if (_isVisible) setState(() => _isVisible = false);
      } else if (scrollController.position.userScrollDirection == ScrollDirection.forward) {
        if (!_isVisible) setState(() => _isVisible = true);
      }
    });
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  int SelectIndex = 0;
  List<Widget> item = [Selection(), Candidates(), EmployerProfile(), NameMessage()];
  Widget ItemSelect(int index){return item[index];}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        height: _isVisible ? 60.0 : 0.0,
        child: Container(
          height: Get.height/15,
          width: Get.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(Get.width / 15),
                topRight: Radius.circular(Get.width / 15),
              ),
              color: AppColor.Buttom_color
          ),
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
              GestureDetector(
                onTap: (){
                  setState(() {
                    SelectIndex = 1;
                  });
                },
                  child: (SelectIndex == 1)
                      ? SvgPicture.asset(AppIcons.profile_open, height: Get.height / 32, width: Get.width / 32)
                      : SvgPicture.asset(AppIcons.Profile, height: Get.height / 32, width: Get.width / 32)
              ),
              GestureDetector(
                onTap: (){
                  setState(() {
                    SelectIndex = 2;
                  });
                },
                  child: (SelectIndex == 2)
                      ? SvgPicture.asset(AppIcons.Search_job, height: Get.height / 32, width: Get.width / 32)
                      : SvgPicture.asset(AppIcons.Search, height: Get.height / 32, width: Get.width / 32)
              ),
              GestureDetector(
                onTap: (){
                  setState(() {
                    SelectIndex = 3;
                  });
                },
                  child: (SelectIndex == 3)
                      ? SvgPicture.asset(AppIcons.Messages_Open, height: Get.height / 32, width: Get.width / 32)
                      : SvgPicture.asset(AppIcons.Messages, height: Get.height / 32, width: Get.width / 32)
              ),
            ],
          ),
        ),
      ),
      body: NotificationListener<UserScrollNotification>(
        onNotification: (notification) {
          if (notification.direction == ScrollDirection.reverse) {
            if (_isVisible) setState(() => _isVisible = false);
          } else if (notification.direction == ScrollDirection.forward) {
            if (!_isVisible) setState(() => _isVisible = true);
          }
          return true;
        },
          child: ItemSelect(SelectIndex)),
    );
  }
}
