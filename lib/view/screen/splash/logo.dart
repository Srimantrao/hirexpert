import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hirexpert/view/utils/app_GIF.dart';
import 'package:hirexpert/view/utils/app_color.dart';
import 'package:hirexpert/view/utils/app_icon.dart';

import '../option/option.dart';

class Logo extends StatefulWidget {
  const Logo({super.key});

  @override
  State<Logo> createState() => _LogoState();
}

class _LogoState extends State<Logo> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Get.to(
          () => const Option(),
        );
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        decoration: BoxDecoration(
          color: AppColor.Full_body_color,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(),
            TweenAnimationBuilder(
              tween: Tween<double>(
                begin: 0,
                end: 1,
              ),
              duration: const Duration(
                seconds: 3,
              ),
              builder: (
                BuildContext context,
                double value,
                Widget? child,
              ) {
                return Opacity(
                  opacity: value,
                  child: Image.asset(
                    AppIcons.logo,
                    scale: 4,
                  ),
                );
              },
            ),
            Column(
              children: [
                Image.asset(
                  App_GIF.Loding,
                  height: Get.width / 10,
                  width: Get.width / 10,
                ),
                SizedBox(
                  height: Get.height / 50,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
