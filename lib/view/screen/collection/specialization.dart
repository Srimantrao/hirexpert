// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hirexpert/view/screen/collection/Education.dart';
import 'package:hirexpert/view/utils/aap_image.dart';
import 'package:hirexpert/view/utils/app_String.dart';
import 'package:hirexpert/view/utils/app_color.dart';
import 'package:hirexpert/view/utils/app_icon.dart';
import 'package:hirexpert/view/utils/common/Container/Option.dart';
import 'package:provider/provider.dart';
import '../../../controller/CollectionController/Collectiondepartment.dart';
import '../../../controller/DropdownController/Specialization_con.dart';
import '../../../controller/DropdownController/Specialization_con.dart';
import '../../../controller/DropdownController/Specialization_con.dart';
import '../../utils/common/Textfild/Inputfild.dart';

class Specialization extends StatefulWidget {
  final String text;
  final Color color;
  final Color textcolor;

  const Specialization({
    super.key,
    required this.text,
    required this.color,
    required this.textcolor,
  });

  @override
  State<Specialization> createState() => _SpecializationState();
}

class _SpecializationState extends State<Specialization> {
  TextEditingController collection = TextEditingController();
  Collectiondepartment controller = Get.put(Collectiondepartment());
  bool vis = true;

  @override
  Widget build(BuildContext context) {
    final Special = Provider.of<SpecializationController>(
      context,
      listen: false,
    );

    final change = Provider.of<Collectionpart>(
      context,
      listen: false,
    );
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(
          color: AppColor.Full_body_color,
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: Get.width / 50,
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                  Visibility(
                    visible: vis,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          Specialization_text.area,
                          style: TextStyle(
                            fontSize: Get.width / 22,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: AppColor.Bottam_color,
                              ),
                            ),
                          ),
                          child: Consumer<SpecializationController>(
                            builder: (
                              BuildContext context,
                              value,
                              Widget? child,
                            ) {
                              return DropdownButton<String>(
                                icon: SvgPicture.asset(AppIcons.down),
                                underline: const SizedBox(),
                                isExpanded: true,
                                value: Special.Functional_area,
                                items:
                                    Special.Functional_item.map((String item) {
                                  return DropdownMenuItem<String>(
                                    value: item,
                                    child: Text(item),
                                  );
                                }).toList(),
                                onChanged: (value) {
                                  Special.Functional(value!);
                                },
                              );
                            },
                          ),
                        ),
                        SizedBox(height: Get.height / 50),
                        Text(
                          Specialization_text.interest,
                          style: TextStyle(
                            fontSize: Get.width / 22,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: AppColor.Bottam_color,
                              ),
                            ),
                          ),
                          child: Consumer<SpecializationController>(
                            builder: (
                              BuildContext context,
                              value,
                              Widget? child,
                            ) {
                              return DropdownButton<String>(
                                underline: const SizedBox(),
                                icon: SvgPicture.asset(AppIcons.down),
                                isExpanded: true,
                                value: Special.Select_Speciailzation,
                                items: Special.Speciailzation_item.map(
                                  (
                                    String newitem,
                                  ) {
                                    return DropdownMenuItem<String>(
                                      value: newitem,
                                      child: Text(newitem),
                                    );
                                  },
                                ).toList(),
                                onChanged: (value) {
                                  Special.Speciailzation(value!);
                                },
                              );
                            },
                          ),
                        ),
                        SizedBox(height: Get.height / 50),
                        Text(
                          Specialization_text.Skillset,
                          style: TextStyle(
                            fontSize: Get.width / 22,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: AppColor.Bottam_color,
                              ),
                            ),
                          ),
                          child: Consumer<SpecializationController>(
                            builder: (
                              BuildContext context,
                              value,
                              Widget? child,
                            ) {
                              return DropdownButton<String>(
                                underline: const SizedBox(),
                                icon: SvgPicture.asset(AppIcons.down),
                                isExpanded: true,
                                value: Special.Skillset,
                                items: Special.Skillset_item.map(
                                  (
                                    String newitem,
                                  ) {
                                    return DropdownMenuItem<String>(
                                      value: newitem,
                                      child: Text(newitem),
                                    );
                                  },
                                ).toList(),
                                onChanged: (value) {
                                  Special.Skillset_fun(value!);
                                },
                              );
                            },
                          ),
                        ),
                        SizedBox(height: Get.height / 50),
                      ],
                    ),
                  ),
                  //Textfild Container
                  Consumer<Collectionpart>(
                    builder: (BuildContext context, value, Widget? child) {
                      return (vis)
                          ? InkWell(
                              onTap: () {
                                vis = !vis;
                                setState(() {});
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    EditProfile_text.Secondary,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: Get.width / 22,
                                    ),
                                  ),
                                  SizedBox(height: Get.height / 60),
                                  Container(
                                    height: Get.height / 25,
                                    width: Get.width,
                                    decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                        color: AppColor.Bottam_color,
                                      )),
                                    ),
                                    child: Text(
                                      EditProfile_text.Enter_Secondary,
                                      style: TextStyle(
                                        color: AppColor.subcolor,
                                        fontSize: Get.width / 26,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: Get.height / 50),
                                  Row(
                                    children: [
                                      (controller.isVal_one.value)
                                          ? Collec(
                                              text: widget.text,
                                              color: widget.color,
                                              textcolor: widget.textcolor,
                                            )
                                          : const SizedBox(),
                                      SizedBox(width: Get.width / 90),
                                      (controller.isVal_second.value)
                                          ? Collec(
                                              text: Collection_text.Javacoding,
                                              color: widget.color,
                                              textcolor: widget.textcolor,
                                            )
                                          : const SizedBox(),
                                      SizedBox(width: Get.width / 90),
                                      (controller.isVal_thrd.value)
                                          ? Collec(
                                              text: Collection_text.Javabasics,
                                              color: widget.color,
                                              textcolor: widget.textcolor,
                                            )
                                          : const SizedBox(),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          : Inputfild(
                              suffixIcon: (controller.isVal_one.value ||
                                      controller.isVal_second.value ||
                                      controller.isVal_thrd.value ||
                                      controller.isVal_fourth.value ||
                                      controller.isVal_fifth.value ||
                                      controller.isVal_sixth.value ||
                                      controller.isVal_seventh.value ||
                                      controller.isVal_Egthe.value ||
                                      controller.isVal_nine.value)
                                  ? Padding(
                                      padding: const EdgeInsets.all(15),
                                      child: InkWell(
                                        onTap: () {
                                          vis = !vis;
                                          setState(() {});
                                        },
                                        child: SvgPicture.asset(AppIcons.Check),
                                      ),
                                    )
                                  : const SizedBox(),
                              onTap: () {
                                change.ismoving();
                              },
                              labal: EditProfile_text.Secondary,
                              hint: EditProfile_text.Enter_Secondary,
                              controller: collection,
                            );
                    },
                  ),
                  SizedBox(height: Get.height / 40),
                  Consumer<Collectionpart>(
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
                  (vis)
                      ? SizedBox(height: Get.height / 15)
                      : SizedBox(height: Get.height / 2.35),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SvgPicture.asset(AppIcons.Backarrow),
                      SizedBox(width: Get.width / 30),
                      SvgPicture.asset(AppIcons.Rectangle),
                      SizedBox(width: Get.width / 30),
                      InkWell(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        onTap: () {
                          Get.to(() => const Education());
                        },
                        child: SvgPicture.asset(AppIcons.Go),
                      ),
                    ],
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
