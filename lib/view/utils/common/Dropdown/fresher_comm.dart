// ignore_for_file: non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import '../../../../controller/DropdownController/FresherController.dart';
import '../../../../modal/Dropdowns/drops.dart';
import '../../app_String.dart';
import '../../app_color.dart';
import '../../app_icon.dart';
import '../Buttons/wideButtons.dart';

class Experience extends StatefulWidget {
  const Experience({super.key});

  @override
  State<Experience> createState() => _ExperienceState();
}

class _ExperienceState extends State<Experience> {
  @override
  Widget build(BuildContext context) {
    final Experience = Provider.of<FreherController>(
      context,
      listen: false,
    );
    return Consumer<FreherController>(
      builder: (BuildContext context, value, Widget? child) {
        return InkWell(
          onTap: () {
            Experience.Selectdrop_true();
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  actions: [
                    InkWell(
                      child: OnButtons(
                        Button_Color: AppColor.Button_color,
                        btn_name: Experience_text.Save,
                      ),
                      onTap: () {
                        Experience.Selectdrop_true();
                        Get.back();
                      },
                    )
                  ],
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(),
                      Text(
                        Experience_text.of_Experience,
                        style: TextStyle(
                          fontSize: Get.width / 22,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Get.back();
                          Experience.Selectdrop_true();
                        },
                        child: SvgPicture.asset(AppIcons.cancel),
                      )
                    ],
                  ),
                  backgroundColor: AppColor.Full_body_color,
                  elevation: 0,
                  content: Container(
                    height: Get.height / 5,
                    width: Get.width,
                    decoration: BoxDecoration(
                      color: AppColor.Full_body_color,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: Get.height / 5,
                          child: Row(
                            children: [
                              SizedBox(
                                width: Get.width / 3,
                                child: CupertinoPicker(
                                  selectionOverlay: Container(
                                    height: Get.height / 20,
                                    width: Get.width,
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                          color: AppColor.Bottam_color,
                                        ),
                                        top: BorderSide(
                                          color: AppColor.Bottam_color,
                                        ),
                                      ),
                                    ),
                                  ),
                                  itemExtent: 30,
                                  children: List.generate(
                                    Years.length,
                                    (index) => Text(
                                      Years[index],
                                    ),
                                  ),
                                  onSelectedItemChanged: (index) {
                                    Experience.onSelectedItemChanged_Years(
                                      index,
                                    );
                                  },
                                ),
                              ),
                              SizedBox(
                                width: Get.width / 3,
                                child: CupertinoPicker(
                                  scrollController: FixedExtentScrollController(
                                    initialItem: 0,
                                  ),
                                  selectionOverlay: Container(
                                    height: Get.height / 25,
                                    width: Get.width,
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                          color: AppColor.Bottam_color,
                                        ),
                                        top: BorderSide(
                                          color: AppColor.Bottam_color,
                                        ),
                                      ),
                                    ),
                                  ),
                                  itemExtent: 30,
                                  children: List.generate(
                                    Month.length,
                                    (index) => Text(
                                      Month[index],
                                    ),
                                  ),
                                  onSelectedItemChanged: (index) {
                                    Experience.onSelectedItemChanged_Month(
                                      index,
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
          child: Container(
            height: Get.height / 20,
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
                Row(
                  children: [
                    Text(
                      Experience.Select_Years,
                      style: TextStyle(fontSize: Get.width / 25),
                    ),
                    SizedBox(width: Get.width / 25),
                    const Text("|"),
                    SizedBox(width: Get.width / 25),
                    Text(
                      Experience.Select_Month,
                      style: TextStyle(fontSize: Get.width / 25),
                    ),
                  ],
                ),
                (Experience.Selectdrop)
                    ? SvgPicture.asset(AppIcons.Right)
                    : SvgPicture.asset(
                        AppIcons.down,
                        color: AppColor.Bottam_color,
                      ),
              ],
            ),
          ),
        );
      },
    );
  }
}
