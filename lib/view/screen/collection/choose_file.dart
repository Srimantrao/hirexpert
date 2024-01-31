import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hirexpert/view/utils/app_color.dart';
import '../../utils/aap_image.dart';
import '../../utils/app_String.dart';
import '../../utils/app_icon.dart';

class Choose extends StatefulWidget {
  const Choose({super.key});

  @override
  State<Choose> createState() => _ChooseState();
}

class _ChooseState extends State<Choose> {
  @override
  Widget build(BuildContext context) {
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
            child: Column(
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
                    maxLines: null,
                    expands: true,
                    decoration: InputDecoration(
                      fillColor: AppColor.Full_body_color,
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: AppColor.Bottam_color,
                      )),
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
                DottedBorder(
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
                        child: RichText(
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
                      ),
                    ),
                  ),
                ),
                SizedBox(height: Get.height/25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
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
                    InkWell(
                      onTap: () {
                        Get.to(() => const Choose());
                      },
                      child: Row(
                        children: [
                          Text(
                            Navigator_text.Next,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: Get.width / 23,
                              color: AppColor.Button_color,
                            ),
                          ),
                          SizedBox(width: Get.width / 70),
                          SvgPicture.asset(
                            AppIcons.Go,
                            color: AppColor.Button_color,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
