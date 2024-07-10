// ignore_for_file: file_names, non_constant_identifier_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hirexpert/controller/API_handler/Candidate/collection/Eduction.dart';
import 'package:hirexpert/controller/User_Controller/Candidate_Controller/DropdownController/EducationController.dart';
import 'package:hirexpert/view/utils/common/showpop/showdialog.dart';
import 'package:provider/provider.dart';
import '../../../app_String.dart';
import '../../../app_color.dart';
import '../../../app_icon.dart';

class Education_Comm extends StatelessWidget {
  final Eduction_hedal Eduction = Get.put(Eduction_hedal());

  Education_Comm({super.key});

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
            Showdialog.showdialod(
              height: Get.height / 3,
              context: context,
              colamWidget: SizedBox(
                  height: Get.height / 3,
                  child: Obx(() {
                    if (Eduction.Dedree.isLoding.value) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    } else if (Eduction.Dedree.Degree_data['data'] == null ||
                        Eduction.Dedree.Degree_data == null) {
                      return const Center(
                        child: Text(API_Error.null_data),
                      );
                    } else {
                      return ListView.builder(
                        itemCount: Eduction.Dedree.Degree_data['data'].length,
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Education.Select_Fuction(
                                    Eduction.Dedree.Degree_data['data'][index]
                                        ['Name'],
                                  );
                                },
                                child: Text(
                                  Eduction.Dedree.Degree_data['data'][index]
                                      ['Name'],
                                  style: TextStyle(fontSize: Get.width / 27),
                                ),
                              ),
                              SizedBox(height: Get.height / 50),
                            ],
                          );
                        },
                      );
                    }
                  })),
              hedingtext: Specialization_text.Education_Level,
              onTabs: () {
                Get.back();
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
                    (Education.Select_click)
                        ? Text(
                            Education.Select_String,
                            style: TextStyle(
                              fontSize: Get.width / 27,
                            ),
                          )
                        : Text(
                            Specialization_text.Education,
                            style: TextStyle(
                              fontSize: Get.width / 25,
                            ),
                          ),
                    (Education.Select_click)
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
