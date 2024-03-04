// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:hirexpert/view/utils/app_color.dart';
import 'package:hirexpert/view/utils/app_icon.dart';
import 'package:provider/provider.dart';
import '../../../../controller/Candidate_Controller/DropdownController/EducationController.dart';
import '../../../../modal/Dropdowns/drops.dart';
import '../../../utils/aap_image.dart';
import '../../../utils/app_String.dart';
import '../../../utils/common/Popup/Candidate/Education_common.dart';
import 'Fresher.dart';

class Education extends StatefulWidget {
  const Education({super.key});

  @override
  State<Education> createState() => _EducationState();
}

class _EducationState extends State<Education> {
  bool shodrop = false;
  int Realvalue = 0;
  String showvalue = "";

  bool pick = false;
  String pickyers = "2000 Year";

  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final JobTitle = Provider.of<JobTitle_Controller>(context, listen: false);
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        decoration: BoxDecoration(
          color: AppColor.Full_body_color,
        ),
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
                  Specialization_text.Education,
                  style: TextStyle(
                    fontSize: Get.width / 25,
                    color: AppColor.subcolor,
                  ),
                ),
                const Education_Comm(),
                SizedBox(height: Get.height / 50),
                Text(
                  Specialization_text.graduation,
                  style: TextStyle(
                    fontSize: Get.width / 25,
                    color: AppColor.subcolor,
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      shodrop = true;
                      pick = true;
                    });
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          elevation: 0,
                          backgroundColor: AppColor.Full_body_color,
                          title: Container(
                            height: Get.height / 20,
                            width: Get.width,
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: AppColor.select_check_color,
                                ),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const SizedBox(),
                                SizedBox(
                                  width: Get.width / 2,
                                  child: Text(
                                    Specialization_text.Education,
                                    style: TextStyle(
                                      fontSize: Get.width / 26,
                                    ),
                                  ),
                                ),
                                SvgPicture.asset(AppIcons.cancel),
                              ],
                            ),
                          ),
                          content: Container(
                            height: Get.height / 5,
                            width: Get.width,
                            decoration: BoxDecoration(
                              color: AppColor.Full_body_color,
                            ),
                            child: SizedBox(
                              child: CupertinoPicker(
                                selectionOverlay: Container(
                                  height: Get.height / 20,
                                  width: Get.width,
                                  decoration: BoxDecoration(
                                    border: Border(
                                      top: BorderSide(
                                        color: AppColor.select_check_color,
                                      ),
                                      bottom: BorderSide(
                                        color: AppColor.select_check_color,
                                      ),
                                    ),
                                  ),
                                ),
                                itemExtent: 30,
                                onSelectedItemChanged: (index) {
                                  pickyers = PickYers[index];
                                  setState(() {});
                                },
                                children: List.generate(
                                  PickYers.length,
                                  (index) => Text(
                                    PickYers[index],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: Container(
                    width: Get.width,
                    height: Get.height / 20,
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
                            (pick)
                                ? Text(
                                    pickyers,
                                    style: TextStyle(
                                      fontSize: Get.width / 25,
                                    ),
                                  )
                                : Text(
                                    Specialization_text.Education,
                                    style: TextStyle(
                                      fontSize: Get.width / 25,
                                    ),
                                  ),
                            (shodrop)
                                ? SvgPicture.asset(
                                    AppIcons.Right,
                                    color: AppColor.Bottam_color,
                                  )
                                : SvgPicture.asset(
                                    AppIcons.down,
                                    color: AppColor.Bottam_color,
                                  ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: Get.height / 50),

                //Job Title
                Text(
                  Specialization_text.Job_Title,
                  style: TextStyle(
                    fontSize: Get.width / 25,
                    color: AppColor.subcolor,
                  ),
                ),
                Consumer<JobTitle_Controller>(
                  builder: (BuildContext context, value, Widget? child) {
                    return InkWell(
                      onTap: () {
                        JobTitle.Selectindex_true();
                      },
                      child: Container(
                        height: Get.height / 25,
                        width: Get.width,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: AppColor.Bottam_color,
                            ),
                          ),
                        ),
                        child: TextField(
                          onChanged: (value) {
                            JobTitle.JobOnChang(value);
                          },
                          controller: JobTitle.JobTitalController,
                          decoration: InputDecoration(
                            hintText: Specialization_text.Job_Title,
                            hintStyle: TextStyle(
                              fontSize: Get.width / 25,
                            ),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: Get.width / 45,
                            ),
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                          ),
                        ),
                      ),
                    );
                  },
                ),
                SizedBox(height: Get.width / 50),
                Consumer<JobTitle_Controller>(
                  builder: (BuildContext context, value, Widget? child) {
                    return (JobTitle.showErroring)
                        ? Text(
                            JobTitle.showError,
                            style: TextStyle(
                              color: AppColor.Error_color,
                              fontWeight: FontWeight.w600,
                              fontSize: Get.width / 28,
                            ),
                          )
                        : const SizedBox();
                  },
                ),
                SizedBox(height: size.height / 3),
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
                          SizedBox(width: Get.width / 80),
                          Text(
                            Navigator_text.Back,
                            style: TextStyle(
                              fontSize: Get.width / 23,
                              fontWeight: FontWeight.w600,
                              color: AppColor.Button_color,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Consumer<JobTitle_Controller>(
                      builder: (BuildContext context, value, Widget? child) {
                        return InkWell(
                          onTap: () {
                            if (JobTitle.SelectIndex) {
                              Get.to(() => const Fresher());
                            }
                            JobTitle.EmptyError();
                          },
                          child: Row(
                            children: [
                              Text(
                                Navigator_text.Next,
                                style: TextStyle(
                                  fontSize: Get.width / 23,
                                  fontWeight: FontWeight.w600,
                                  color: (JobTitle.SelectIndex)
                                      ? AppColor.Button_color
                                      : AppColor.Botton_color_hide,
                                ),
                              ),
                              SizedBox(width: Get.width / 80),
                              SvgPicture.asset(
                                AppIcons.Go,
                                color: (JobTitle.SelectIndex)
                                    ? AppColor.Button_color
                                    : AppColor.Botton_color_hide,
                              ),
                            ],
                          ),
                        );
                      },
                    )
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
