// ignore_for_file: unnecessary_null_comparison, non_constant_identifier_names, file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hirexpert/view/utils/common/Selection/showbottomsheet/showbottomsheet_common.dart';
import '../../../app_String.dart';
import '../../../app_color.dart';
import '../../../app_icon.dart';

class ShowContainer extends StatelessWidget {
  final String Selecttext;

  const ShowContainer({super.key, required this.Selecttext});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height / 17,
      width: Get.width,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: AppColor.Bottam_color,
          ),
        ),
      ),
      child: ValueListenableBuilder(
        valueListenable: isState,
        builder: (BuildContext context, value, Widget? child) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              (value) != null
                  ? Text(
                      Selecttext,
                      style: TextStyle(
                        fontSize: Get.width / 23,
                      ),
                    )
                  : Text(
                      Location_text.Select,
                      style: TextStyle(
                        fontSize: Get.width / 23,
                      ),
                    ),
              SvgPicture.asset(
                AppIcons.down,
                color: AppColor.Bottam_color,
              ),
            ],
          );
        },
      ),
    );
  }
}
