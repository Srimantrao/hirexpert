// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hirexpert/view/screen/collection/Collection.dart';
import 'package:hirexpert/view/screen/collection/Education.dart';
import 'package:hirexpert/view/utils/aap_image.dart';
import 'package:hirexpert/view/utils/app_String.dart';
import 'package:hirexpert/view/utils/app_color.dart';
import 'package:hirexpert/view/utils/app_icon.dart';
import 'package:hirexpert/view/utils/common/Container/Option.dart';
import 'package:provider/provider.dart';
import '../../../controller/CollectionController/Collectiondepartment.dart';
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
  @override
  Widget build(BuildContext context) {
    final Special = Provider.of<SpecializationController>(
      context,
      listen: false,
    );

    final Coll = Provider.of<Collectionpart>(
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
                          items: Special.Functional_item.map((String item) {
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
                  Text(
                    EditProfile_text.Secondary,
                    style: TextStyle(
                      fontSize: Get.width / 22,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(
                        () => const Collection(),
                        duration: const Duration(milliseconds: 500),
                        transition: Transition.downToUp,
                      );
                    },
                    child: Container(
                      width: Get.width,
                      height: Get.height / 17,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: AppColor.Bottam_color),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            EditProfile_text.Enter_Secondary,
                            style: TextStyle(
                              color: AppColor.subcolor,
                              fontSize: Get.width / 25,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: Get.height / 50),
                  Consumer<Collectionpart>(
                    builder: (
                      BuildContext context,
                      value,
                      Widget? child,
                    ) {
                      if (Coll.istrue) {
                        return Collec(
                          text: widget.text,
                          color: widget.color,
                          textcolor: widget.textcolor,
                        );
                      } else {
                        const SizedBox();
                      }
                      return const SizedBox();
                    },
                  ),
                  SizedBox(height: Get.height / 10),
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
