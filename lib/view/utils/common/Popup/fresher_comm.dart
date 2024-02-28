// ignore_for_file: non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import '../../../../controller/Candidate_Controller/DropdownController/FresherController.dart';
import '../../../../modal/Dropdowns/drops.dart';
import '../../app_String.dart';
import '../../app_color.dart';
import '../../app_icon.dart';
import '../Buttons/wideButtons.dart';

//Experience
class Experience extends StatelessWidget {
  const Experience({super.key});

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
                        Experience.Selectnect1_true();
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
                    height: Get.height / 4,
                    width: Get.width,
                    decoration: BoxDecoration(
                      color: AppColor.Full_body_color,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: Get.height / 4,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: Get.width / 3.5,
                                child: CupertinoPicker(
                                  diameterRatio: 12,
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
                                    (index) => Center(
                                      child: Text(
                                        Years[index],
                                        style: TextStyle(
                                          fontSize: Get.width / 23,
                                        ),
                                      ),
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
                                width: Get.width / 3.5,
                                child: CupertinoPicker(
                                  diameterRatio: 12,
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
                                    (index) => Center(
                                      child: Text(
                                        Month[index],
                                        style: TextStyle(
                                          fontSize: Get.width / 23,
                                        ),
                                      ),
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

//Salary
class Salary extends StatelessWidget {
  const Salary({super.key});

  @override
  Widget build(BuildContext context) {
    final Salary = Provider.of<FreherController>(context, listen: false);
    return Consumer<FreherController>(
      builder: (BuildContext context, value, Widget? child) {
        return InkWell(
          onTap: () {
            Salary.Selectdroping_true();
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(),
                      Text(
                        Experience_text.E_Salary,
                        style: TextStyle(
                          fontSize: Get.width / 22,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Salary.Selectdroping_false();
                          Get.back();
                        },
                        child: SvgPicture.asset(AppIcons.cancel),
                      ),
                    ],
                  ),
                  backgroundColor: AppColor.Full_body_color,
                  elevation: 0,
                  actions: [
                    InkWell(
                      onTap: () {
                        Get.back();
                        Salary.Selectnect_true();
                        Salary.Selectdroping_false();
                      },
                      child: OnButtons(
                        Button_Color: AppColor.Button_color,
                        btn_name: Experience_text.Save,
                      ),
                    ),
                  ],
                  content: Container(
                    height: Get.height / 4,
                    width: Get.width,
                    decoration: BoxDecoration(
                      color: AppColor.Full_body_color,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: Get.width / 4,
                          child: CupertinoPicker(
                            diameterRatio: 12,
                            selectionOverlay: Container(
                              height: Get.height / 15,
                              width: Get.width,
                              decoration: BoxDecoration(
                                border: Border(
                                  top: BorderSide(
                                    color: AppColor.Bottam_color,
                                  ),
                                  bottom: BorderSide(
                                    color: AppColor.Bottam_color,
                                  ),
                                ),
                              ),
                            ),
                            itemExtent: 30,
                            onSelectedItemChanged: (index) {
                              Salary.onSelectedItemChanged_Lakh(index);
                            },
                            children: List.generate(
                              Lakh_list.length,
                              (index) => Center(
                                child: Text(
                                  Lakh_list[index],
                                  style: TextStyle(
                                    fontSize: Get.width / 23,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: Get.width / 3,
                          child: CupertinoPicker(
                            diameterRatio: 12,
                            selectionOverlay: Container(
                              height: Get.height / 15,
                              width: Get.width,
                              decoration: BoxDecoration(
                                border: Border(
                                  top: BorderSide(
                                    color: AppColor.Bottam_color,
                                  ),
                                  bottom: BorderSide(
                                    color: AppColor.Bottam_color,
                                  ),
                                ),
                              ),
                            ),
                            itemExtent: 30,
                            onSelectedItemChanged: (index) {
                              Salary.onSelectedItemChanged_Thousand(index);
                            },
                            children: List.generate(
                              Thousand_list.length,
                              (index) => Center(
                                child: Text(
                                  Thousand_list[index],
                                  style: TextStyle(fontSize: Get.width / 23),
                                ),
                              ),
                            ),
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
                      Salary.Lakh,
                      style: TextStyle(fontSize: Get.width / 25),
                    ),
                    SizedBox(width: Get.width / 25),
                    const Text("|"),
                    SizedBox(width: Get.width / 25),
                    Text(
                      Salary.Thousand,
                      style: TextStyle(fontSize: Get.width / 25),
                    ),
                  ],
                ),
                (Salary.droping)
                    ? SvgPicture.asset(
                        AppIcons.Right,
                        color: AppColor.subcolor,
                      )
                    : SvgPicture.asset(
                        AppIcons.down,
                        color: AppColor.subcolor,
                      ),
              ],
            ),
          ),
        );
      },
    );
  }
}

//CTC
class CTC extends StatelessWidget {
  const CTC({super.key});

  @override
  Widget build(BuildContext context) {
    final CTC = Provider.of<FreherController>(context, listen: false);
    return Consumer<FreherController>(
      builder: (BuildContext context, value, Widget? child) {
        return InkWell(
          onTap: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  actions: [
                    InkWell(
                      onTap: () {
                        Get.back();
                        CTC.Selectnect2_true();
                      },
                      child: OnButtons(
                        Button_Color: AppColor.Button_color,
                        btn_name: Experience_text.Save,
                      ),
                    ),
                  ],
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(),
                      Text(
                        Experience_text.E_Salary,
                        style: TextStyle(
                          fontSize: Get.width / 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: SvgPicture.asset(AppIcons.cancel),
                      ),
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: Get.width / 4,
                          child: CupertinoPicker(
                            diameterRatio: 12,
                            selectionOverlay: Container(
                              height: Get.height / 20,
                              width: Get.width,
                              decoration: BoxDecoration(
                                border: Border(
                                  top: BorderSide(
                                    color: AppColor.Bottam_color,
                                  ),
                                  bottom: BorderSide(
                                    color: AppColor.Bottam_color,
                                  ),
                                ),
                              ),
                            ),
                            itemExtent: 30,
                            children: List.generate(
                              Lakh_list.length,
                              (index) => Center(
                                child: Text(
                                  Lakh_list[index],
                                  style: TextStyle(fontSize: Get.width / 23),
                                ),
                              ),
                            ),
                            onSelectedItemChanged: (index) {
                              CTC.onSelectedItemChanged_Lakh_CTC(index);
                            },
                          ),
                        ),
                        SizedBox(
                          width: Get.width / 3,
                          child: CupertinoPicker(
                            diameterRatio: 12,
                            selectionOverlay: Container(
                              height: Get.height / 20,
                              width: Get.width,
                              decoration: BoxDecoration(
                                border: Border(
                                  top: BorderSide(
                                    color: AppColor.Bottam_color,
                                  ),
                                  bottom: BorderSide(
                                    color: AppColor.Bottam_color,
                                  ),
                                ),
                              ),
                            ),
                            itemExtent: 30,
                            children: List.generate(
                              Thousand_list.length,
                              (index) => Center(
                                child: Text(
                                  Thousand_list[index],
                                  style: TextStyle(fontSize: Get.width / 23),
                                ),
                              ),
                            ),
                            onSelectedItemChanged: (index) {
                              CTC.onSelectedItemChanged_Thousand_CTC(index);
                            },
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
            height: Get.height / 17,
            width: Get.width,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: AppColor.Bottam_color),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      CTC.CTC_Lakh,
                      style: TextStyle(fontSize: Get.width / 25),
                    ),
                    SizedBox(width: Get.width / 25),
                    const Text("|"),
                    SizedBox(width: Get.width / 25),
                    Text(
                      CTC.CTC_Thousand,
                      style: TextStyle(fontSize: Get.width / 25),
                    ),
                  ],
                ),
                SvgPicture.asset(
                  AppIcons.down,
                  color: AppColor.subcolor,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
