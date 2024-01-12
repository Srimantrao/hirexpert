// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../../../../controller/DropdownController/SpecializationController.dart';
import '../../app_String.dart';
import '../../app_color.dart';
import '../../app_icon.dart';

class Function_area extends StatelessWidget {
  const Function_area({super.key});

  @override
  Widget build(BuildContext context) {
    final speciailChang = Provider.of<SpecializationController_popup>(
      context,
      listen: false,
    );
    return Consumer<SpecializationController_popup>(
      builder: (BuildContext context, value, Widget? child) {
        return InkWell(
          onTap: () {
            speciailChang.Showingdrop();
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    title: Container(
                      height: Get.height / 18,
                      width: Get.width,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: AppColor.Bottam_color,
                          ),
                        ),
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(width: Get.width / 50),
                            Text(
                              Specialization_text.Select_area,
                              style: TextStyle(
                                fontSize: Get.width / 24,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Get.back();
                                speciailChang.Showingdrop();
                              },
                              child: SvgPicture.asset(AppIcons.cancel),
                            ),
                          ],
                        ),
                      ),
                    ),
                    backgroundColor: AppColor.Full_body_color,
                    elevation: 0,
                    content: Container(
                      height: Get.height / 3,
                      width: Get.width,
                      decoration: BoxDecoration(
                        color: AppColor.Full_body_color,
                      ),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                              child: Text(
                                Specialization_text.Accounts_Finance,
                                style: TextStyle(
                                  fontSize: Get.width / 26,
                                ),
                              ),
                              onTap: () {
                                speciailChang.Function_SelectOne();
                              },
                            ),
                            SizedBox(height: Get.height / 60),
                            InkWell(
                              onTap: () {
                                speciailChang.Function_SelectTwo();
                              },
                              child: Text(
                                Specialization_text.Bpo,
                                style: TextStyle(
                                  fontSize: Get.width / 26,
                                ),
                              ),
                            ),
                            SizedBox(height: Get.height / 60),
                            InkWell(
                              onTap: () {
                                speciailChang.Function_SelectThrre();
                              },
                              child: Text(
                                Specialization_text.Database_Engineer,
                                style: TextStyle(
                                  fontSize: Get.width / 26,
                                ),
                              ),
                            ),
                            SizedBox(height: Get.height / 60),
                            InkWell(
                              onTap: () {
                                speciailChang.Function_SelectFouth();
                              },
                              child: Text(
                                Specialization_text.Designing_UIUX,
                                style: TextStyle(
                                  fontSize: Get.width / 26,
                                ),
                              ),
                            ),
                            SizedBox(height: Get.height / 60),
                            InkWell(
                              onTap: () {
                                speciailChang.Function_SelectFifth();
                              },
                              child: Text(
                                Specialization_text.Devops_Engineering,
                                style: TextStyle(
                                  fontSize: Get.width / 26,
                                ),
                              ),
                            ),
                            SizedBox(height: Get.height / 60),
                            InkWell(
                              onTap: () {
                                speciailChang.Function_SelectSixth();
                              },
                              child: Text(
                                Specialization_text.ReactNative_Devloper,
                                style: TextStyle(
                                  fontSize: Get.width / 26,
                                ),
                              ),
                            ),
                            SizedBox(height: Get.height / 60),
                            InkWell(
                              onTap: () {
                                speciailChang.Function_SelectSeven();
                              },
                              child: Text(
                                Specialization_text.Flutter_Devloper,
                                style: TextStyle(
                                  fontSize: Get.width / 26,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: Get.height / 60,
                            ),
                            InkWell(
                              onTap: () {
                                speciailChang.Function_SelectEigth();
                              },
                              child: Text(
                                Specialization_text.Collection,
                                style: TextStyle(
                                  fontSize: Get.width / 26,
                                ),
                              ),
                            ),
                            SizedBox(height: Get.height / 60),
                            InkWell(
                              onTap: () {
                                speciailChang.Function_Selectnigth();
                              },
                              child: Text(
                                Specialization_text.Content,
                                style: TextStyle(
                                  fontSize: Get.width / 26,
                                ),
                              ),
                            ),
                            SizedBox(height: Get.height / 60),
                            InkWell(
                              onTap: () {
                                speciailChang.Function_SelectThen();
                              },
                              child: Text(
                                Specialization_text.Web_Devloper,
                                style: TextStyle(
                                  fontSize: Get.width / 26,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                });
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      (speciailChang.SelectIndex == 0)
                          ? Specialization_text.Select_area
                          : speciailChang.throwdrop,
                      style: TextStyle(
                        fontSize: Get.width / 25,
                      ),
                    ),
                    (speciailChang.showdrop)
                        ? SvgPicture.asset(AppIcons.Right)
                        : SvgPicture.asset(
                            AppIcons.down,
                            color: AppColor.Bottam_color,
                          ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class Interest extends StatelessWidget {
  const Interest({super.key});

  @override
  Widget build(BuildContext context) {
    final speciailChang = Provider.of<SpecializationController_Interest>(
      context,
      listen: false,
    );
    return Consumer<SpecializationController_Interest>(
      builder: (BuildContext context, SpecializationController_Interest value,
          Widget? child) {
        return InkWell(
          onTap: () {
            speciailChang.Showingdrop();
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    title: Container(
                      height: Get.height / 18,
                      width: Get.width,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: AppColor.Bottam_color,
                          ),
                        ),
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(width: Get.width / 50),
                            Text(
                              Specialization_text.Select_area,
                              style: TextStyle(
                                fontSize: Get.width / 24,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Get.back();
                                speciailChang.Showingdrop();
                              },
                              child: SvgPicture.asset(AppIcons.cancel),
                            ),
                          ],
                        ),
                      ),
                    ),
                    backgroundColor: AppColor.Full_body_color,
                    elevation: 0,
                    content: Container(
                      height: Get.height / 3,
                      width: Get.width,
                      decoration: BoxDecoration(
                        color: AppColor.Full_body_color,
                      ),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                              child: Text(
                                Specialization_text.Frontend,
                                style: TextStyle(
                                  fontSize: Get.width / 26,
                                ),
                              ),
                              onTap: () {
                                speciailChang.Skillset_Selectone();
                              },
                            ),
                            SizedBox(height: Get.height / 60),
                            InkWell(
                              child: Text(
                                Specialization_text.Backend,
                                style: TextStyle(
                                  fontSize: Get.width / 26,
                                ),
                              ),
                              onTap: () {
                                speciailChang.Skillset_Secondone();
                              },
                            ),
                            SizedBox(height: Get.height / 60),
                            InkWell(
                              child: Text(
                                Specialization_text.Software,
                                style: TextStyle(
                                  fontSize: Get.width / 26,
                                ),
                              ),
                              onTap: () {
                                speciailChang.Skillset_Thrdone();
                              },
                            ),
                            SizedBox(height: Get.height / 60),
                            InkWell(
                              child: Text(
                                Specialization_text.eCommerce,
                                style: TextStyle(
                                  fontSize: Get.width / 26,
                                ),
                              ),
                              onTap: () {
                                speciailChang.Skillset_Fouth();
                              },
                            ),
                            SizedBox(height: Get.height / 60),
                          ],
                        ),
                      ),
                    ),
                  );
                });
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      (speciailChang.SelectIndex == 0)
                          ? Specialization_text.interest
                          : speciailChang.throwdrop,
                      style: TextStyle(
                        fontSize: Get.width / 25,
                      ),
                    ),
                    (speciailChang.showdrop)
                        ? SvgPicture.asset(AppIcons.Right)
                        : SvgPicture.asset(
                            AppIcons.down,
                            color: AppColor.Bottam_color,
                          ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class Skillset extends StatelessWidget {
  const Skillset({super.key});

  @override
  Widget build(BuildContext context) {
    final speciailChang = Provider.of<SpecializationController_Skillset>(
      context,
      listen: false,
    );
    return Consumer<SpecializationController_Skillset>(
      builder: (BuildContext context, value, Widget? child) {
        return InkWell(
          onTap: () {
            speciailChang.Showingdrop();
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    title: Container(
                      height: Get.height / 18,
                      width: Get.width,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: AppColor.Bottam_color,
                          ),
                        ),
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(width: Get.width / 50),
                            Text(
                              Specialization_text.Select_Skillset,
                              style: TextStyle(
                                fontSize: Get.width / 24,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Get.back();
                                speciailChang.Showingdrop();
                              },
                              child: SvgPicture.asset(AppIcons.cancel),
                            ),
                          ],
                        ),
                      ),
                    ),
                    backgroundColor: AppColor.Full_body_color,
                    elevation: 0,
                    content: Container(
                      height: Get.height / 3,
                      width: Get.width,
                      decoration: BoxDecoration(
                        color: AppColor.Full_body_color,
                      ),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                              child: Text(
                                Specialization_text.Angular_TS,
                                style: TextStyle(
                                  fontSize: Get.width / 26,
                                ),
                              ),
                              onTap: () {
                                speciailChang.SkillsetSecond_Selectone();
                              },
                            ),
                            SizedBox(height: Get.height / 60),
                            InkWell(
                              child: Text(
                                Specialization_text.Angular,
                                style: TextStyle(
                                  fontSize: Get.width / 26,
                                ),
                              ),
                              onTap: () {
                                speciailChang.SkillsetSecond_Secondone();
                              },
                            ),
                            SizedBox(height: Get.height / 60),
                            InkWell(
                              child: Text(
                                Specialization_text.Bootstrap,
                                style: TextStyle(
                                  fontSize: Get.width / 26,
                                ),
                              ),
                              onTap: () {
                                speciailChang.SkillsetSecond_Thrdone();
                              },
                            ),
                            SizedBox(height: Get.height / 60),
                            InkWell(
                              child: Text(
                                Specialization_text.JQuery,
                                style: TextStyle(
                                  fontSize: Get.width / 26,
                                ),
                              ),
                              onTap: () {
                                speciailChang.SkillsetSecond_Fouth();
                              },
                            ),
                            SizedBox(height: Get.height / 60),
                            InkWell(
                              child: Text(
                                Specialization_text.Designing_UIUX,
                                style: TextStyle(
                                  fontSize: Get.width / 26,
                                ),
                              ),
                              onTap: () {
                                speciailChang.SkillsetSecond_Fifth();
                              },
                            ),
                            SizedBox(height: Get.height / 60),
                            InkWell(
                              child: Text(
                                Specialization_text.Bpo,
                                style: TextStyle(
                                  fontSize: Get.width / 26,
                                ),
                              ),
                              onTap: () {
                                speciailChang.SkillsetSecond_Sixth();
                              },
                            ),
                            SizedBox(height: Get.height / 60),
                          ],
                        ),
                      ),
                    ),
                  );
                });
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      (speciailChang.SelectIndex == 0)
                          ? Specialization_text.Select_Skillset
                          : speciailChang.throwdrop,
                      style: TextStyle(
                        fontSize: Get.width / 25,
                      ),
                    ),
                    (speciailChang.showdrop)
                        ? SvgPicture.asset(AppIcons.Right)
                        : SvgPicture.asset(
                            AppIcons.down,
                            color: AppColor.Bottam_color,
                          ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
