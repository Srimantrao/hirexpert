// ignore_for_file: non_constant_identifier_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:hirexpert/view/utils/aap_image.dart';
import 'package:hirexpert/view/utils/app_color.dart';
import 'package:hirexpert/view/utils/app_icon.dart';
import 'package:provider/provider.dart';
import '../../../../controller/User_Controller/Candidate_Controller/DropdownController/SpecializationController.dart';
import '../../../utils/app_String.dart';
import '../../../utils/common/Popup/Candidate/Specialization_common.dart';
import 'Education.dart';

class Candidate_Specialization extends StatefulWidget {
  const Candidate_Specialization({super.key});

  @override
  State<Candidate_Specialization> createState() => _Candidate_SpecializationState();
}

class _Candidate_SpecializationState extends State<Candidate_Specialization> {
  @override
  Widget build(BuildContext context) {
    final Cont = Provider.of<Candidate_SpecializationController_Collection>(
      context,
      listen: false,
    );
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: Get.width / 30,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    SizedBox(height: Get.height / 50),
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

                    //Functional Area
                    Consumer<Candidate_SpecializationController_Collection>(
                      builder: (BuildContext context, value, Widget? child) {
                        return Visibility(
                          visible: Cont.visible,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                Specialization_text.area,
                                style: TextStyle(
                                  fontSize: Get.width / 25,
                                  color: AppColor.subcolor,
                                ),
                              ),
                              const Candidate_Function_area(),
                              SizedBox(height: Get.height / 50),

                              //Interest
                              Text(
                                Specialization_text.Search_text,
                                style: TextStyle(
                                  fontSize: Get.width / 25,
                                  color: AppColor.subcolor,
                                ),
                              ),
                              const Candidate_Interest(),
                              SizedBox(height: Get.height / 50),

                              //Skillset
                              Text(
                                Specialization_text.Skillset,
                                style: TextStyle(
                                  fontSize: Get.width / 25,
                                  color: AppColor.subcolor,
                                ),
                              ),
                              const Candidate_Skillset(),
                              SizedBox(height: Get.height / 50),
                            ],
                          ),
                        );
                      },
                    ),

                    //Collection
                    Consumer<Candidate_SpecializationController_Collection>(
                      builder: (BuildContext context, value, Widget? child) {
                        return Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  Specialization_text.Collection,
                                  style: TextStyle(
                                    fontSize: Get.width / 25,
                                    color: AppColor.subcolor,
                                  ),
                                ),
                              ],
                            ),
                            const Candidate_Collection(),
                          ],
                        );
                      },
                    ),
                  ],
                ),

                //Next Buttons
                Consumer<Candidate_SpecializationController_Collection>(
                  builder: (BuildContext context, value, Widget? child) {
                    return Column(
                      children: [
                        InkWell(
                          onTap: () {
                            if (Cont.colloction) {
                              Get.to(() => const Education());
                            }
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                Navigator_text.Next,
                                style: TextStyle(
                                  fontSize: Get.width / 23,
                                  fontWeight: (Cont.colloction)
                                      ? FontWeight.w700
                                      : FontWeight.w400,
                                  color: (Cont.colloction)
                                      ? AppColor.Button_color
                                      : AppColor.Botton_color_hide,
                                ),
                              ),
                              SizedBox(width: Get.width / 90),
                              SvgPicture.asset(
                                AppIcons.Go,
                                color: (Cont.colloction)
                                    ? AppColor.Button_color
                                    : AppColor.Botton_color_hide,
                              ),
                              SizedBox(height: Get.height / 15),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
