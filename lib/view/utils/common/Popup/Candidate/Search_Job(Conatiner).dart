// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hirexpert/modal/Dropdowns/drops.dart';
import 'package:hirexpert/view/utils/common/Buttons/wideButtons.dart';
import 'package:provider/provider.dart';
import '../../../../../controller/Candidate_Controller/ButtonsController/SearchJobController.dart';
import '../../../app_String.dart';
import '../../../app_color.dart';
import '../../../app_icon.dart';


class Searching extends StatefulWidget {
  final String OnString;
  const Searching({super.key, required this.OnString});

  @override
  State<Searching> createState() => _SearchingState();
}

class _SearchingState extends State<Searching> {
  @override
  Widget build(BuildContext context) {
    final Buttonschang = Provider.of<SearchJobController>(
      context,
      listen: false,
    );
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: Get.width / 50,
      ),
      child: Consumer<SearchJobController>(
        builder: (BuildContext context, value, Widget? child) {
          return Column(
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Buttonschang.SelectButtons_fun();
                    },
                    child: Container(
                      width: Get.width / 4,
                      height: Get.height / 20,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: (Buttonschang.SelectButtons)
                              ? AppColor.Button_color
                              : AppColor.subcolor,
                        ),
                        borderRadius: BorderRadius.circular(
                          Get.width / 50,
                        ),
                        color: (Buttonschang.SelectButtons)
                            ? AppColor.Button_color
                            : AppColor.Buttom_color,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            color: (Buttonschang.SelectButtons)
                                ? AppColor.Full_body_color
                                : AppColor.subcolor,
                          ),
                          SizedBox(width: Get.width / 100),
                          Text(
                            widget.OnString,
                            style: TextStyle(
                              color: (Buttonschang.SelectButtons)
                                  ? AppColor.Full_body_color
                                  : AppColor.black_all,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: Get.width / 50),
                  InkWell(
                    onTap: () {
                      Buttonschang.Filtters_fun();
                    },
                    child: Container(
                      width: Get.width / 4,
                      height: Get.height / 20,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: (Buttonschang.Filtters)
                              ? AppColor.Button_color
                              : AppColor.subcolor,
                        ),
                        borderRadius: BorderRadius.circular(
                          Get.width / 50,
                        ),
                        color: (Buttonschang.Filtters)
                            ? AppColor.Button_color
                            : AppColor.Buttom_color,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.filter_alt_outlined,
                            color: (Buttonschang.Filtters)
                                ? AppColor.Full_body_color
                                : AppColor.subcolor,
                          ),
                          SizedBox(width: Get.width / 100),
                          Text(
                            Searchjob_text.Filtter,
                            style: TextStyle(
                              color: (Buttonschang.Filtters)
                                  ? AppColor.Full_body_color
                                  : AppColor.black_all,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: Get.height / 80),

              //Dropdown
              Visibility(
                visible: Buttonschang.Filtters,
                child: Column(
                  children: [
                    Row(
                      children: [
                        //Experience
                        InkWell(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  backgroundColor: AppColor.Full_body_color,
                                  elevation: 0,
                                  title: Container(
                                    height: Get.height / 20,
                                    width: Get.width,
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                          color: AppColor.Buttom_color,
                                        ),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const SizedBox(),
                                        Text(
                                          Searchjob_text.Experience,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: Get.width / 24,
                                          ),
                                        ),
                                        InkWell(
                                          highlightColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          onTap: () {
                                            Get.back();
                                          },
                                          child: SvgPicture.asset(
                                            AppIcons.cancel,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  content: Container(
                                    height: Get.height / 3,
                                    width: Get.width,
                                    decoration: BoxDecoration(
                                      color: AppColor.Full_body_color,
                                    ),
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.vertical,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            Searchjob_text.Fresher,
                                            style: TextStyle(
                                              fontSize: Get.width / 24,
                                            ),
                                          ),
                                          SizedBox(height: Get.height / 50),
                                          Text(
                                            Searchjob_text.Year1,
                                            style: TextStyle(
                                              fontSize: Get.width / 24,
                                            ),
                                          ),
                                          SizedBox(height: Get.height / 50),
                                          Text(
                                            Searchjob_text.Year2,
                                            style: TextStyle(
                                              fontSize: Get.width / 24,
                                            ),
                                          ),
                                          SizedBox(height: Get.height / 50),
                                          Text(
                                            Searchjob_text.Year3,
                                            style: TextStyle(
                                              fontSize: Get.width / 24,
                                            ),
                                          ),
                                          SizedBox(height: Get.height / 50),
                                          Text(
                                            Searchjob_text.Year4,
                                            style: TextStyle(
                                              fontSize: Get.width / 24,
                                            ),
                                          ),
                                          SizedBox(height: Get.height / 50),
                                          Text(
                                            Searchjob_text.Year5,
                                            style: TextStyle(
                                              fontSize: Get.width / 24,
                                            ),
                                          ),
                                          SizedBox(height: Get.height / 50),
                                          Text(
                                            Searchjob_text.Year6,
                                            style: TextStyle(
                                              fontSize: Get.width / 24,
                                            ),
                                          ),
                                          SizedBox(height: Get.height / 50),
                                          Text(
                                            Searchjob_text.Year7,
                                            style: TextStyle(
                                              fontSize: Get.width / 24,
                                            ),
                                          ),
                                          SizedBox(height: Get.height / 50),
                                          Text(
                                            Searchjob_text.Year8,
                                            style: TextStyle(
                                              fontSize: Get.width / 24,
                                            ),
                                          ),
                                          SizedBox(height: Get.height / 50),
                                          Text(
                                            Searchjob_text.Year9,
                                            style: TextStyle(
                                              fontSize: Get.width / 24,
                                            ),
                                          ),
                                          SizedBox(height: Get.height / 50),
                                          Text(
                                            Searchjob_text.Year10,
                                            style: TextStyle(
                                              fontSize: Get.width / 24,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          child: Container(
                            width: Get.width / 2.5,
                            height: Get.height / 20,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: AppColor.subcolor,
                              ),
                              borderRadius:
                                  BorderRadius.circular(Get.width / 50),
                              color: AppColor.Buttom_color,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const SizedBox(),
                                const Text(Searchjob_text.Experience),
                                SvgPicture.asset(
                                  AppIcons.down,
                                  color: AppColor.subcolor,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: Get.width / 50),

                        //Education
                        InkWell(
                          focusColor: Colors.transparent,
                          splashColor: Colors.transparent,
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Container(
                                    height: Get.height / 20,
                                    width: Get.width,
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                          color: AppColor.Buttom_color,
                                        ),
                                      ),
                                      color: AppColor.Full_body_color,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const SizedBox(),
                                        Text(
                                          Searchjob_text.Education,
                                          style: TextStyle(
                                            fontSize: Get.width / 24,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {
                                            Get.back();
                                          },
                                          child: SvgPicture.asset(
                                            AppIcons.cancel,
                                          ),
                                        ),
                                      ],
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            Searchjob_text.BBA,
                                            style: TextStyle(
                                              fontSize: Get.width / 25,
                                            ),
                                          ),
                                          SizedBox(height: Get.height / 50),
                                          Text(
                                            Searchjob_text.BCA,
                                            style: TextStyle(
                                              fontSize: Get.width / 25,
                                            ),
                                          ),
                                          SizedBox(height: Get.height / 50),
                                          Text(
                                            Searchjob_text.BE,
                                            style: TextStyle(
                                              fontSize: Get.width / 25,
                                            ),
                                          ),
                                          SizedBox(height: Get.height / 50),
                                          Text(
                                            Searchjob_text.B_Com,
                                            style: TextStyle(
                                              fontSize: Get.width / 25,
                                            ),
                                          ),
                                          SizedBox(height: Get.height / 50),
                                          Text(
                                            Searchjob_text.M_Com,
                                            style: TextStyle(
                                              fontSize: Get.width / 25,
                                            ),
                                          ),
                                          SizedBox(height: Get.height / 50),
                                          Text(
                                            Searchjob_text.M_Tech,
                                            style: TextStyle(
                                              fontSize: Get.width / 25,
                                            ),
                                          ),
                                          SizedBox(height: Get.height / 50),
                                          Text(
                                            Searchjob_text.B_Tech,
                                            style: TextStyle(
                                              fontSize: Get.width / 25,
                                            ),
                                          ),
                                          SizedBox(height: Get.height / 50),
                                          Text(
                                            Searchjob_text.MBA,
                                            style: TextStyle(
                                              fontSize: Get.width / 25,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          child: Container(
                            width: Get.width / 2.8,
                            height: Get.height / 20,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: AppColor.subcolor,
                              ),
                              borderRadius:
                                  BorderRadius.circular(Get.width / 50),
                              color: AppColor.Buttom_color,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const SizedBox(),
                                const Text(Searchjob_text.Education),
                                SvgPicture.asset(
                                  AppIcons.down,
                                  color: AppColor.subcolor,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: Get.height / 90),
                    Row(
                      children: [
                        //CTC
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    backgroundColor: AppColor.Full_body_color,
                                    elevation: 0,
                                    title: Container(
                                      height: Get.height / 20,
                                      width: Get.width,
                                      decoration: BoxDecoration(
                                        border: Border(
                                          bottom: BorderSide(
                                            color: AppColor.Buttom_color,
                                          ),
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const SizedBox(),
                                          Text(
                                            Searchjob_text.CTC,
                                            style: TextStyle(
                                              fontSize: Get.width / 24,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () {
                                                Get.back();
                                              },
                                              child: SvgPicture.asset(
                                                  AppIcons.cancel))
                                        ],
                                      ),
                                    ),
                                    content: Container(
                                      height: Get.height / 4,
                                      width: Get.width,
                                      decoration: BoxDecoration(
                                        color: AppColor.Full_body_color,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          SizedBox(
                                            width: Get.width / 3.5,
                                            child: CupertinoPicker(
                                              diameterRatio: 12,
                                              selectionOverlay: Container(
                                                height: Get.height / 15,
                                                width: Get.width,
                                                decoration: BoxDecoration(
                                                  border: Border(
                                                    top: BorderSide(
                                                      color:
                                                          AppColor.Buttom_color,
                                                    ),
                                                    bottom: BorderSide(
                                                      color:
                                                          AppColor.Buttom_color,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              itemExtent: 30,
                                              onSelectedItemChanged:
                                                  (int value) {},
                                              children: List.generate(
                                                Lakh_list.length,
                                                (index) => Center(
                                                  child: Text(
                                                    Lakh_list[index],
                                                    style: TextStyle(
                                                      fontSize: Get.width / 24,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: Get.width / 3.5,
                                            child: CupertinoPicker(
                                              diameterRatio: 12,
                                              selectionOverlay: Container(
                                                height: Get.height / 15,
                                                width: Get.width,
                                                decoration: BoxDecoration(
                                                  border: Border(
                                                    top: BorderSide(
                                                      color:
                                                          AppColor.Buttom_color,
                                                    ),
                                                    bottom: BorderSide(
                                                      color:
                                                          AppColor.Buttom_color,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              itemExtent: 30,
                                              onSelectedItemChanged:
                                                  (int value) {},
                                              children: List.generate(
                                                Thousand_list.length,
                                                (index) => Center(
                                                  child: Text(
                                                    Thousand_list[index],
                                                    style: TextStyle(
                                                      fontSize: Get.width / 24,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    actions: [
                                      InkWell(
                                        onTap: () {
                                          Get.back();
                                        },
                                        child: OnButtons(
                                          Button_Color: AppColor.Button_color,
                                          btn_name: Searchjob_text.Save,
                                        ),
                                      )
                                    ],
                                  );
                                });
                          },
                          child: Container(
                            width: Get.width / 4,
                            height: Get.height / 20,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: AppColor.subcolor,
                              ),
                              borderRadius:
                                  BorderRadius.circular(Get.width / 50),
                              color: AppColor.Buttom_color,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const SizedBox(),
                                const Text(Searchjob_text.CTC),
                                SvgPicture.asset(
                                  AppIcons.down,
                                  color: AppColor.subcolor,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: Get.width / 50),

                        //Job Type
                        InkWell(
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    backgroundColor: AppColor.Full_body_color,
                                    elevation: 0,
                                    title: Container(
                                      height: Get.height / 20,
                                      width: Get.width,
                                      decoration: BoxDecoration(
                                        border: Border(
                                          bottom: BorderSide(
                                            color: AppColor.Buttom_color,
                                          ),
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const SizedBox(),
                                          Text(
                                            Searchjob_text.Job_Type,
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: Get.width / 24,
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () {
                                              Get.back();
                                            },
                                            child: SvgPicture.asset(
                                                AppIcons.cancel),
                                          ),
                                        ],
                                      ),
                                    ),
                                    content: Container(
                                      height: Get.height / 5,
                                      width: Get.width,
                                      decoration: BoxDecoration(
                                        color: AppColor.Full_body_color,
                                      ),
                                      child: SingleChildScrollView(
                                        scrollDirection: Axis.vertical,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              Searchjob_text.Part_Time,
                                              style: TextStyle(
                                                fontSize: Get.width / 24,
                                              ),
                                            ),
                                            SizedBox(height: Get.height / 50),
                                            Text(
                                              Searchjob_text.Full_Time,
                                              style: TextStyle(
                                                fontSize: Get.width / 24,
                                              ),
                                            ),
                                            SizedBox(height: Get.height / 50),
                                            Text(
                                              Searchjob_text.Internship,
                                              style: TextStyle(
                                                fontSize: Get.width / 24,
                                              ),
                                            ),
                                            SizedBox(height: Get.height / 50),
                                            Text(
                                              Searchjob_text.Contract,
                                              style: TextStyle(
                                                fontSize: Get.width / 24,
                                              ),
                                            ),
                                            SizedBox(height: Get.height / 50),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                });
                          },
                          child: Container(
                            width: Get.width / 3,
                            height: Get.height / 20,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: AppColor.subcolor,
                              ),
                              borderRadius:
                                  BorderRadius.circular(Get.width / 50),
                              color: AppColor.Buttom_color,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const SizedBox(),
                                const Text(Searchjob_text.Job_Type),
                                SvgPicture.asset(
                                  AppIcons.down,
                                  color: AppColor.subcolor,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: Get.height / 90),
                    Column(
                      children: [
                        Row(
                          children: [
                            //Work Setup
                            InkWell(
                              onTap: () {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        elevation: 0,
                                        backgroundColor:
                                            AppColor.Full_body_color,
                                        title: Container(
                                          height: Get.height / 20,
                                          width: Get.width,
                                          decoration: BoxDecoration(
                                            border: Border(
                                              bottom: BorderSide(
                                                color: AppColor.Buttom_color,
                                              ),
                                            ),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              const SizedBox(),
                                              Text(
                                                Searchjob_text.Work_Setup,
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: Get.width / 24,
                                                ),
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  Get.back();
                                                },
                                                child: SvgPicture.asset(
                                                    AppIcons.cancel),
                                              ),
                                            ],
                                          ),
                                        ),
                                        content: Container(
                                          height: Get.height / 5,
                                          width: Get.width,
                                          decoration: BoxDecoration(
                                            color: AppColor.Full_body_color,
                                          ),
                                          child: SingleChildScrollView(
                                            scrollDirection: Axis.vertical,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  Searchjob_text.Remote_Work,
                                                  style: TextStyle(
                                                    fontSize: Get.width / 24,
                                                  ),
                                                ),
                                                SizedBox(height: Get.height / 50),
                                                Text(
                                                  Searchjob_text.In_Office,
                                                  style: TextStyle(
                                                    fontSize: Get.width / 24,
                                                  ),
                                                ),
                                                SizedBox(height: Get.height / 50),
                                                Text(
                                                  Searchjob_text.Hybrid,
                                                  style: TextStyle(
                                                    fontSize: Get.width / 24,
                                                  ),
                                                ),
                                                SizedBox(height: Get.height / 50),
                                                Text(
                                                  Searchjob_text.Any,
                                                  style: TextStyle(
                                                    fontSize: Get.width / 24,
                                                  ),
                                                ),
                                                SizedBox(height: Get.height / 50),
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    });
                              },
                              child: Container(
                                width: Get.width / 2.9,
                                height: Get.height / 20,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: AppColor.subcolor,
                                  ),
                                  borderRadius: BorderRadius.circular(
                                    Get.width / 50,
                                  ),
                                  color: AppColor.Buttom_color,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    const SizedBox(),
                                    const Text(Searchjob_text.Work_Setup),
                                    SvgPicture.asset(
                                      AppIcons.down,
                                      color: AppColor.subcolor,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
