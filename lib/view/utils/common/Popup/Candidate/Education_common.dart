// ignore_for_file: file_names, non_constant_identifier_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hirexpert/controller/User_Controller/Candidate_Controller/DropdownController/EducationController.dart';
import 'package:provider/provider.dart';
import '../../../app_String.dart';
import '../../../app_color.dart';
import '../../../app_icon.dart';

class Education_Comm extends StatelessWidget {
  const Education_Comm({super.key});

  @override
  Widget build(BuildContext context) {
    final Education = Provider.of<Education_Controller>(
      context,
      listen: false,
    );
    return Consumer<Education_Controller>(
      builder: (BuildContext context, value, Widget? child) {
        return InkWell(
          onTap: () {
            Education.Poppup_true();
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  backgroundColor: AppColor.Full_body_color,
                  elevation: 0,
                  title: Container(
                    height: Get.height / 25,
                    width: Get.width,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: AppColor.Bottam_color,
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(),
                        Text(
                          Specialization_text.Education_Level,
                          style: TextStyle(
                            fontSize: Get.width / 28,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Education.Poppup_false();
                          },
                          child: SvgPicture.asset(AppIcons.cancel),
                        ),
                      ],
                    ),
                  ),
                  content: Container(
                    height: Get.height / 5,
                    width: Get.width,
                    decoration: BoxDecoration(
                      color: AppColor.Full_body_color,
                    ),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            child: Text(
                              Specialization_text.BCA,
                              style: TextStyle(
                                fontSize: Get.width / 26,
                              ),
                            ),
                            onTap: () {
                              Education.Education_one();
                            },
                          ),
                          InkWell(
                            onTap: () {
                              Education.Education_two();
                            },
                            child: Text(
                              Specialization_text.BBA,
                              style: TextStyle(
                                fontSize: Get.width / 26,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          },
          child: Container(
            width: Get.width,
            height: Get.height / 20,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: AppColor.Bottam_color,
                ),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    (Education.Realvalue == 0)
                        ? Text(
                            Specialization_text.Education,
                            style: TextStyle(
                              fontSize: Get.width / 25,
                            ),
                          )
                        : Text(Education.showvalue),
                    (Education.shodrop)
                        ? SvgPicture.asset(
                            AppIcons.Right,
                            color: AppColor.Bottam_color,
                          )
                        : SvgPicture.asset(
                            AppIcons.down,
                            color: AppColor.Bottam_color,
                          ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
