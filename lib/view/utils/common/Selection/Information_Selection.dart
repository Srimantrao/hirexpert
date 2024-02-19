// ignore_for_file: camel_case_types, file_names, non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hirexpert/view/utils/common/Buttons/wideButtons.dart';
import '../../app_String.dart';
import '../../app_color.dart';
import '../../app_icon.dart';

class Infromation_Selection extends StatefulWidget {
  final String? name;
  final String Hadline;
  final String Selectedtext;
  final List<Widget>? children;
  final void Function(int index)? onSelectedItemChanged;

  const Infromation_Selection({
    super.key,
    this.name,
    required this.Hadline,
    required this.Selectedtext,
    this.children,
    this.onSelectedItemChanged,
  });

  @override
  State<Infromation_Selection> createState() => _Infromation_SelectionState();
}

class _Infromation_SelectionState extends State<Infromation_Selection> {
  bool Selectd = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        (Selectd)
            ? const SizedBox()
            : Text(
                widget.name ?? "",
                style: TextStyle(
                  fontSize: Get.width / 24,
                  color: AppColor.select_check_color,
                ),
              ),
        InkWell(
          onTap: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  backgroundColor: AppColor.Full_body_color,
                  elevation: 0,
                  title: Container(
                    height: Get.height / 20,
                    width: Get.width,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: AppColor.Bottam_color,
                        ),
                      ),
                    ),
                    child: Container(
                      height: Get.height / 20,
                      width: Get.width,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: AppColor.Buttom_color,
                          ),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(),
                          Text(
                            widget.Hadline,
                            style: TextStyle(
                              fontSize: Get.width / 23,
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
                    ),
                  ),
                  content: Container(
                    height: Get.height / 5,
                    width: Get.width,
                    decoration: BoxDecoration(
                      color: AppColor.Full_body_color,
                    ),
                    child: CupertinoPicker(
                      selectionOverlay: Container(
                        height: Get.height / 15,
                        width: Get.width,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: AppColor.select_check_color,
                            ),
                            top: BorderSide(
                              color: AppColor.select_check_color,
                            ),
                          ),
                        ),
                      ),
                      itemExtent: 30,
                      onSelectedItemChanged: widget.onSelectedItemChanged,
                      children: widget.children ?? [],
                    ),
                  ),
                  actions: [
                    InkWell(
                      child: OnButtons(
                        Button_Color: AppColor.Button_color,
                        btn_name: Profile_Text.Save,
                      ),
                      onTap: () {
                        Get.back();
                      },
                    ),
                  ],
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
                  color: AppColor.select_check_color,
                ),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                (Selectd)
                    ? Text(
                        Profile_Text.Passing_Year,
                        style: TextStyle(
                          fontSize: Get.width / 25,
                          color: AppColor.black_all,
                        ),
                      )
                    : Text(
                        widget.Selectedtext,
                        style: TextStyle(
                          fontSize: Get.width / 25,
                          color: AppColor.black_all,
                        ),
                      ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
