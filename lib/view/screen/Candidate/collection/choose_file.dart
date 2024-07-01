// ignore_for_file: unrelated_type_equality_checks, non_constant_identifier_names

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hirexpert/view/utils/app_color.dart';
import 'package:provider/provider.dart';
import '../../../../controller/User_Controller/Candidate_Controller/ChoseFileController/ChosefileController.dart';
import '../../../utils/aap_image.dart';
import '../../../utils/app_String.dart';
import '../../../utils/app_icon.dart';
import '../../../utils/buttom/Candidate/candidate_buttom.dart';

class Choose extends StatelessWidget {
  const Choose({super.key});

  @override
  Widget build(BuildContext context) {
    final Pick = Provider.of<ChosefileController>(context, listen: false);
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(
          color: AppColor.Full_body_color,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: Get.width / 30),
            child: Consumer<ChosefileController>(
              builder: (BuildContext context, value, Widget? child) {
                return Column(
                  children: [
                    SizedBox(height: Get.height / 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(AppImage.profile, scale: 5),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("HI", style: TextStyle(fontSize: Get.width / 25)),
                        Text("HI", style: TextStyle(fontSize: Get.width / 25)),
                        Text("HI", style: TextStyle(fontSize: Get.width / 25)),
                      ],
                    ),
                    SizedBox(height: Get.height / 20),
                    Text(
                      Choose_text.tell,
                      style: TextStyle(
                        fontSize: Get.width / 23,
                        color: AppColor.subcolor,
                      ),
                    ),
                    SizedBox(height: Get.height / 60),
                    SizedBox(
                      width: Get.width,
                      height: Get.height / 3.3,
                      child: TextField(
                        onTap: () {
                          Pick.SelectWidget_one();
                        },
                        maxLines: null,
                        expands: true,
                        decoration: InputDecoration(
                          fillColor: AppColor.Full_body_color,
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: AppColor.Bottam_color,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: AppColor.Bottam_color,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: Get.height / 30),
                    Text(
                      Choose_text.resume_CV,
                      style: TextStyle(
                        fontSize: Get.width / 23,
                        color: AppColor.subcolor,
                      ),
                    ),
                    SizedBox(height: Get.height / 60),

                    //SelectFile Button
                    GestureDetector(
                      onTap: () {
                        Pick.pickefile();
                        Pick.SelectWidget_two();
                      },
                      child: DottedBorder(
                        color: AppColor.Bottam_color,
                        dashPattern: const [9, 9],
                        child: Container(
                          height: Get.height / 6,
                          width: Get.width,
                          decoration: BoxDecoration(
                            color: AppColor.Full_body_color,
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: Get.width / 15),
                            child: Center(
                              child: (Pick.files != null)
                                  ? Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SvgPicture.asset(AppIcons.PDF_Icon),
                                        SizedBox(height: Get.height / 70),
                                        Text(
                                          Pick.files!.name,
                                          style: TextStyle(
                                            fontSize: Get.width / 26,
                                          ),
                                        ),
                                      ],
                                    )
                                  : Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: Choose_text.Drop,
                                                style: TextStyle(
                                                  color: AppColor.black_all,
                                                  fontSize: Get.width / 22,
                                                ),
                                              ),
                                              TextSpan(
                                                text: Choose_text.it,
                                                style: TextStyle(
                                                  color: AppColor.Button_color,
                                                  fontSize: Get.width / 22,
                                                ),
                                              ),
                                              TextSpan(
                                                text: Choose_text.or,
                                                style: TextStyle(
                                                  color: AppColor.black_all,
                                                  fontSize: Get.width / 22,
                                                ),
                                              ),
                                              TextSpan(
                                                text: Choose_text.form,
                                                style: TextStyle(
                                                  color: AppColor.Button_color,
                                                  fontSize: Get.width / 22,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: Get.height / 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.back();
                          },
                          child: Row(
                            children: [
                              SvgPicture.asset(AppIcons.Backarrow),
                              SizedBox(width: Get.width / 70),
                              Text(
                                Navigator_text.Back,
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: Get.width / 23,
                                  color: AppColor.Button_color,
                                ),
                              )
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            if (Pick.selectwidgetone == 0 &&
                                Pick.selectwidgettwo == 1) {
                              Get.to(() => Candidate_Bottam());
                            }
                          },
                          child: Row(
                            children: [
                              Text(
                                (Pick.selectwidgetone == 0 &&
                                        Pick.selectwidgettwo == 1)
                                    ? Navigator_text.Done
                                    : Navigator_text.Next,
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: Get.width / 23,
                                  color: (Pick.selectwidgetone == 0 &&
                                          Pick.selectwidgettwo == 1)
                                      ? AppColor.Button_color
                                      : AppColor.offButton_color,
                                ),
                              ),
                              SizedBox(width: Get.width / 70),
                              SvgPicture.asset(
                                AppIcons.Go,
                                color: (Pick.selectwidgetone == 0 &&
                                        Pick.selectwidgettwo == 1)
                                    ? AppColor.Button_color
                                    : AppColor.offButton_color,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
