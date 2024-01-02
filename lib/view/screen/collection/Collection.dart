// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hirexpert/view/screen/option/option.dart';
import 'package:hirexpert/view/utils/app_color.dart';
import 'package:hirexpert/view/utils/app_icon.dart';
import 'package:provider/provider.dart';

import '../../../controller/CollectionController/Collectiondepartment.dart';
import '../../utils/aap_image.dart';
import '../../utils/app_String.dart';
import '../../utils/common/Container/Option.dart';
import '../../utils/common/Textfild/Inputfild.dart';

class Collection extends StatefulWidget {
  const Collection({super.key});

  @override
  State<Collection> createState() => _CollectionState();
}

class _CollectionState extends State<Collection> {
  TextEditingController collection = TextEditingController();
  Collectiondepartment controller = Get.put(Collectiondepartment());

  bool istrue = false;

  @override
  Widget build(BuildContext context) {
    final change = Provider.of<Collectionpart>(context, listen: false);
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        decoration: BoxDecoration(
          color: AppColor.Full_body_color,
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: Get.height / 50,
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  SizedBox(height: Get.height / 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(AppImage.profile, scale: 4),
                    ],
                  ),
                  SizedBox(height: Get.height / 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "HI,",
                        style: TextStyle(
                          fontSize: Get.width / 18,
                        ),
                      ),
                      Text(
                        "HI,",
                        style: TextStyle(
                          fontSize: Get.width / 18,
                        ),
                      ),
                      Text(
                        "HI,",
                        style: TextStyle(
                          fontSize: Get.width / 18,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: Get.height / 20),
                  Consumer(
                    builder: (BuildContext context, value, Widget? child) {
                      return Inputfild(
                        suffixIcon: (change.istrue)
                            ? Padding(
                                padding: const EdgeInsets.all(15),
                                child: SvgPicture.asset(AppIcons.Check),
                              )
                            : const SizedBox(),
                        onTap: () {
                          change.ismoving();
                          setState(() {});
                        },
                        labal: EditProfile_text.Secondary,
                        hint: EditProfile_text.Enter_Secondary,
                        controller: collection,
                      );
                    },
                  ),
                  SizedBox(height: Get.height / 40),
                  Consumer(
                    builder: (BuildContext context, value, Widget? child) {
                      return (change.istrue)
                          ? Column(
                              children: [
                                Obx(
                                  () => Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          controller.isValing_one();
                                        },
                                        child: Collec(
                                          text: Collection_text.Javaprograming,
                                          color: (controller.isVal_one.value)
                                              ? AppColor.Button_color
                                              : AppColor.Bottam_color,
                                          textcolor:
                                              (controller.isVal_one.value)
                                                  ? AppColor.Full_body_color
                                                  : AppColor.black_all,
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          controller.isValing_second();
                                        },
                                        child: Collec(
                                          text: Collection_text.Javacoding,
                                          color: (controller.isVal_second.value)
                                              ? AppColor.Button_color
                                              : AppColor.Bottam_color,
                                          textcolor:
                                              (controller.isVal_second.value)
                                                  ? AppColor.Full_body_color
                                                  : AppColor.black_all,
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          controller.isValing_thrd();
                                        },
                                        child: Collec(
                                          text: Collection_text.Javabasics,
                                          color: (controller.isVal_thrd.value)
                                              ? AppColor.Button_color
                                              : AppColor.Bottam_color,
                                          textcolor:
                                              (controller.isVal_thrd.value)
                                                  ? AppColor.Full_body_color
                                                  : AppColor.black_all,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: Get.height / 80),
                                Obx(
                                  () => Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      InkWell(
                                        child: Collec(
                                          text: Collection_text
                                              .AdvancedJavaprogramming,
                                          color: (controller.isVal_fourth.value)
                                              ? AppColor.Button_color
                                              : AppColor.Bottam_color,
                                          textcolor:
                                              (controller.isVal_fourth.value)
                                                  ? AppColor.Full_body_color
                                                  : AppColor.black_all,
                                        ),
                                        onTap: () {
                                          controller.isValing_fourth();
                                        },
                                      ),
                                      InkWell(
                                        onTap: () {
                                          controller.isValing_fifth();
                                        },
                                        child: Collec(
                                          text: Collection_text.Javatutorial,
                                          color: (controller.isVal_fifth.value)
                                              ? AppColor.Button_color
                                              : AppColor.Bottam_color,
                                          textcolor:
                                              (controller.isVal_fifth.value)
                                                  ? AppColor.Full_body_color
                                                  : AppColor.black_all,
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          controller.isValing_sixth();
                                        },
                                        child: Collec(
                                          text:
                                              Collection_text.Javaforbeginners,
                                          color: (controller.isVal_sixth.value)
                                              ? AppColor.Button_color
                                              : AppColor.Bottam_color,
                                          textcolor:
                                              (controller.isVal_sixth.value)
                                                  ? AppColor.Full_body_color
                                                  : AppColor.black_all,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: Get.height / 80),
                                Obx(
                                  () => Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          controller.isValing_seventh();
                                        },
                                        child: Collec(
                                          text:
                                              Collection_text.Javatipsandtricks,
                                          color:
                                              (controller.isVal_seventh.value)
                                                  ? AppColor.Button_color
                                                  : AppColor.Bottam_color,
                                          textcolor:
                                              (controller.isVal_seventh.value)
                                                  ? AppColor.Full_body_color
                                                  : AppColor.black_all,
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          controller.isValing_Egthe();
                                        },
                                        child: Collec(
                                          text: Collection_text.Javadevelopment,
                                          color: (controller.isVal_Egthe.value)
                                              ? AppColor.Button_color
                                              : AppColor.Bottam_color,
                                          textcolor:
                                              (controller.isVal_Egthe.value)
                                                  ? AppColor.Full_body_color
                                                  : AppColor.black_all,
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          controller.isValing_nine();
                                        },
                                        child: Collec(
                                          text: Collection_text.LearnJava,
                                          color: (controller.isVal_nine.value)
                                              ? AppColor.Button_color
                                              : AppColor.Bottam_color,
                                          textcolor:
                                              (controller.isVal_nine.value)
                                                  ? AppColor.Full_body_color
                                                  : AppColor.black_all,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )
                          : const SizedBox();
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
