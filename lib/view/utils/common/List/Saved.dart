// ignore_for_file: file_names, camel_case_types, non_constant_identifier_names, prefer_const_constructors, must_be_immutable, invalid_use_of_protected_member

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hirexpert/controller/API_handler/Candidate/Menu/Home/Sarching_Saving_API.dart';
import 'package:hirexpert/view/utils/app_loder.dart';
import '../../../../modal/Job/jobSearch_list.dart';
import '../../app_String.dart';
import '../../app_color.dart';
import '../../app_icon.dart';

class Seved_List extends StatelessWidget {
  final SarchingSavingApi Saving_Apis = Get.put(SarchingSavingApi());

  Seved_List({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Obx(() {
      if (Saving_Apis.favourlist.isloding.value) {
        return Center(
          child: Image.asset(AppLoder.infinityloder_without_background),
        );
      } else if (Saving_Apis.favourlist.data.value['data'] == null) {
        return const Center(
          child: Text(API_Error.null_data),
        );
      } else {
        return ListView.builder(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          itemCount: saveshowjob.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: size.height / 3.8,
              width: size.width,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: AppColor.Bottam_color,
                  ),
                  bottom: BorderSide(
                    color: Colors.transparent,
                  ),
                ),
                color: AppColor.Full_body_color,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: size.width / 40,
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(15),
                          child: Image.network(
                            Saving_Apis.favourlist.data.value[index]['ComLogo'],
                          ),
                        ),
                      ),
                      SizedBox(width: size.width / 50),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    Saving_Apis.favourlist.data.value[index]['JobTitle'],
                                    style: TextStyle(
                                      color: AppColor.subcolor,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            width: Get.width / 2,
                            child: Text(
                              Saving_Apis.favourlist.data.value[index]['TechName'],
                              style: TextStyle(
                                fontSize: size.width / 26,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Text(
                            Saving_Apis.favourlist.data.value[index]['ComName'],
                            style: TextStyle(
                              fontSize: size.width / 26,
                              fontWeight: FontWeight.w400,
                              color: AppColor.Button_color,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: size.width / 7),
                      SvgPicture.asset(AppIcons.bookmark),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: size.width / 3.2,
                            height: size.height / 25,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                size.width / 60,
                              ),
                              color: AppColor.ditalis_conatiner,
                            ),
                            child: Center(
                              child: Text(
                                Saving_Apis.favourlist.data.value[index]['JobType'],
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: size.width / 30,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: size.width / 40),
                          Container(
                            width: size.width / 7,
                            height: size.height / 25,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                size.width / 60,
                              ),
                              color: AppColor.ditalis_conatiner,
                            ),
                            child: Center(
                              child: Text(
                                Saving_Apis.favourlist.data.value[index]['Location'],
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: size.width / 30,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: size.width / 40),
                          Container(
                            width: size.width / 5,
                            height: size.height / 25,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                size.width / 60,
                              ),
                              color: AppColor.ditalis_conatiner,
                            ),
                            child: Center(
                              child: Text(
                                Saving_Apis.favourlist.data.value[index]['JobType'],
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: size.width / 30,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: size.height / 80),
                      Row(
                        children: [
                          Container(
                            width: size.width / 5,
                            height: size.height / 25,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                size.width / 60,
                              ),
                              color: AppColor.ditalis_conatiner,
                            ),
                            child: Center(
                              child: Text(
                                Saving_Apis.favourlist.data.value[index]
                                    ['Experience'],
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: size.width / 35,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: size.width / 40),
                          Container(
                            width: size.width / 2.5,
                            height: size.height / 25,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                size.width / 60,
                              ),
                              color: AppColor.ditalis_conatiner,
                            ),
                            child: Center(
                              child: Text(
                                Saving_Apis.favourlist.data.value[index]['Salary'],
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: size.width / 30,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: size.width / 40),
                          Container(
                            width: size.width / 5,
                            height: size.height / 22,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                size.width / 60,
                              ),
                              color: AppColor.ditalis_conatiner,
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: Get.width / 30),
                              child: Center(
                                child: Text(
                                  Saving_Apis.favourlist.data.value[index]['WorkSet'],
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: size.width / 33,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: size.width / 40),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: size.width / 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        Saving_Apis.favourlist.data.value[index]['FormatDt'],
                        style: TextStyle(
                          color: AppColor.subcolor,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            );
          },
        );
      }
    });
  }
}
