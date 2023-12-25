import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../app_String.dart';
import '../../app_color.dart';
import '../../app_icon.dart';

class Jobrow extends StatelessWidget {
  final String icon;
  final String name;
  final Widget? child;
  final void Function()? onTap;

  const Jobrow(
      {super.key,
      required this.icon,
      required this.name,
      this.onTap,
      this.child});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.transparent,
      focusColor: Colors.transparent,
      onTap: onTap,
      child: Container(
        width: Get.width,
        height: Get.height / 9,
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: AppColor.Menu_Container_color,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: Get.width / 8,
                  height: Get.height / 17,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      Get.width / 50,
                    ),
                    color: AppColor.Menu_Container_color,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: SvgPicture.asset(icon),
                  ),
                ),
                SizedBox(width: Get.width / 30),
                Text(
                  name,
                  style: TextStyle(
                    fontSize: Get.width / 21,
                  ),
                ),
                SizedBox(width: Get.width / 50),
                SizedBox(child: child),
              ],
            ),
            const Icon(
              Icons.navigate_next_outlined,
              size: 30,
            ),
          ],
        ),
      ),
    );
  }
}
