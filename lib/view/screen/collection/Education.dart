// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:hirexpert/view/utils/app_color.dart';
import 'package:provider/provider.dart';

import '../../../controller/DropdownController/Specialization_con.dart';
import '../../utils/aap_image.dart';
import '../../utils/app_String.dart';
import '../../utils/app_icon.dart';

class Education extends StatefulWidget {
  const Education({super.key});

  @override
  State<Education> createState() => _EducationState();
}

class _EducationState extends State<Education> {
  @override
  Widget build(BuildContext context) {
    final Special = Provider.of<SpecializationController>(
      context,
      listen: false,
    );
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        decoration: BoxDecoration(
          color: AppColor.Full_body_color,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Get.width / 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
              Text(
                Specialization_text.Education,
                style: TextStyle(
                  fontSize: Get.width / 22,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: AppColor.Bottam_color,
                    ),
                  ),
                ),
                child: Consumer<SpecializationController>(
                  builder: (
                    BuildContext context,
                    value,
                    Widget? child,
                  ) {
                    return DropdownButton<String>(
                      icon: SvgPicture.asset(AppIcons.down),
                      underline: const SizedBox(),
                      isExpanded: true,
                      value: Special.Education_drop,
                      items: Special.Education_item.map((String item) {
                        return DropdownMenuItem<String>(
                          value: item,
                          child: Text(item),
                        );
                      }).toList(),
                      onChanged: (value) {
                        Special.Education_fun(value!);
                      },
                    );
                  },
                ),
              ),
              SizedBox(height: Get.height / 50),
              Text(
                Specialization_text.graduation,
                style: TextStyle(
                  fontSize: Get.width / 22,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: AppColor.Bottam_color,
                    ),
                  ),
                ),
                child: Consumer<SpecializationController>(
                  builder: (
                    BuildContext context,
                    value,
                    Widget? child,
                  ) {
                    return DropdownButton<String>(
                      icon: SvgPicture.asset(AppIcons.down),
                      underline: const SizedBox(),
                      isExpanded: true,
                      value: Special.Education_drop,
                      items: Special.Education_item.map((String item) {
                        return DropdownMenuItem<String>(
                          value: item,
                          child: Text(item),
                        );
                      }).toList(),
                      onChanged: (value) {
                        Special.Education_fun(value!);
                      },
                    );
                  },
                ),
              ),
              SizedBox(height: Get.height / 2.5),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: (){
                      Get.back();
                    },
                    overlayColor: const MaterialStatePropertyAll(
                      Colors.transparent,
                    ),
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    child: SvgPicture.asset(AppIcons.Backarrow),
                  ),
                  SizedBox(width: Get.width / 30),
                  SvgPicture.asset(AppIcons.Rectangle),
                  SizedBox(width: Get.width / 30),
                  SvgPicture.asset(AppIcons.Go),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
