import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:hirexpert/controller/BottamController/MenuNavigationController.dart';
import 'package:hirexpert/view/utils/app_color.dart';
import 'package:hirexpert/view/utils/app_icon.dart';
import 'package:provider/provider.dart';

class Bottam extends StatefulWidget {
  const Bottam({super.key});

  @override
  State<Bottam> createState() => _BottamState();
}

class _BottamState extends State<Bottam> {
  @override
  Widget build(BuildContext context) {
    final nav = Provider.of<MenuNavigationController>(
      context,
      listen: false,
    );
    return Scaffold(
      bottomNavigationBar: Container(
        width: Get.width,
        height: Get.height / 17,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Get.width / 15),
            topRight: Radius.circular(Get.width / 15),
          ),
          color: AppColor.Buttom_color,
        ),
        child: Consumer<MenuNavigationController>(
          builder: (BuildContext context, value, Widget? child) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  highlightColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  onTap: () {
                    nav.SelectIndex_one();
                  },
                  child: (nav.Selectindex == 0)
                      ? SvgPicture.asset(AppIcons.open_job)
                      : SvgPicture.asset(AppIcons.Jobs),
                ),
                InkWell(
                  highlightColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  onTap: () {
                    nav.SelectIndex_two();
                  },
                  child: (nav.Selectindex == 1)
                      ? SvgPicture.asset(AppIcons.Search_job)
                      : SvgPicture.asset(AppIcons.Search),
                ),
                InkWell(
                  onTap: () {
                    nav.SelectIndex_three();
                  },
                  child: (nav.Selectindex == 2)
                      ? SvgPicture.asset(AppIcons.profile_open)
                      : SvgPicture.asset(AppIcons.Profile),
                ),
                SvgPicture.asset(AppIcons.Messages),
              ],
            );
          },
        ),
      ),
      body: Consumer<MenuNavigationController>(
        builder: (BuildContext context, value, Widget? child) {
          return nav.Selectitem(nav.Selectindex);
        },
      ),
    );
  }
}
