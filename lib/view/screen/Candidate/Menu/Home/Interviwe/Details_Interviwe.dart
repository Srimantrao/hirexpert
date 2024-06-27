// ignore_for_file: camel_case_types, file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hirexpert/controller/User_Controller/Candidate_Controller/DatailsController/Details_Interviwe.dart';
import 'package:provider/provider.dart';
import '../../../../../../modal/Dropdowns/drops.dart';
import '../../../../../../modal/Job/Search_list.dart';
import '../../../../../utils/app_String.dart';
import '../../../../../utils/app_color.dart';
import '../../../../../utils/app_icon.dart';
import '../../../../../utils/common/Buttons/ShortButton.dart';
import '../../../../../utils/common/Container/Option.dart';
import '../../../../../utils/common/List/jobSearch.dart';

class Details_Interviwe extends StatelessWidget {
  final String Icon;
  final Color Color_container;
  final String Job_Tital;
  final String Language;
  final String Commpany;
  final String Working;
  final String Location;
  final String Job_time;
  final String Exp;
  final String lake;
  final String Hybrid;
  final String stats;

  const Details_Interviwe(
      {super.key,
      required this.Icon,
      required this.Color_container,
      required this.Job_Tital,
      required this.Language,
      required this.Commpany,
      required this.Working,
      required this.Location,
      required this.Job_time,
      required this.Exp,
      required this.lake,
      required this.Hybrid,
      required this.stats});

  @override
  Widget build(BuildContext context) {
    final Interviwe = Provider.of<DetailsInterviwe>(context, listen: false);
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: Get.height / 15,
        backgroundColor: AppColor.Full_body_color,
        surfaceTintColor: Colors.transparent,
        scrolledUnderElevation: 0,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: const Text(
          My_Jobs_Screen.Interview,
          style: TextStyle(
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          SizedBox(width: Get.width / 50),
        ],
      ),
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(
          color: AppColor.Full_body_color,
        ),
        child: SafeArea(
          child: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return [
                Consumer<DetailsInterviwe>(
                  builder: (BuildContext context, value, Widget? child) {
                    return SliverAppBar(
                      elevation: 0,
                      backgroundColor: AppColor.Full_body_color,
                      forceMaterialTransparency: true,
                      pinned: false,
                      collapsedHeight: size.height / 3.5,
                      automaticallyImplyLeading: false,
                      flexibleSpace: SizedBox(
                        height: size.height / 3.5,
                        child: JobSearch(
                          Icon: Icon,
                          Color_container: Color_container,
                          Job_Tital: Job_Tital,
                          Language: Language,
                          Commpany: Commpany,
                          Working: Working,
                          Location: Location,
                          Job_time: Job_time,
                          Exp: Exp,
                          lake: lake,
                          Hybrid: Hybrid,
                          stats: stats,
                          saveonTap: () {
                            Interviwe.Interviwe_Select();
                          },
                          savechild: (Interviwe.isSeved)
                              ? SvgPicture.asset(AppIcons.bookmark)
                              : SvgPicture.asset(AppIcons.save),
                          top: BorderSide(
                            color: AppColor.Full_body_color,
                          ),
                          bottam: BorderSide(
                            color: AppColor.Bottam_color,
                          ),
                        ),
                      ),
                    );
                  },
                )
              ];
            },
            body: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: Get.width / 30,
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: Get.width / 50,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: Get.height / 60),
                      Text(
                        Details_texts.Second_Interview,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: Get.width / 22,
                        ),
                      ),
                      SizedBox(height: Get.height / 60),
                      SvgPicture.asset(AppIcons.interviwe_png),
                      SizedBox(height: Get.height / 80),
                      Text(
                        Details_texts.interviwe_time,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: Get.width / 22,
                        ),
                      ),
                      SizedBox(height: Get.height / 60),
                      Text(
                        Details_texts.Message,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: Get.width / 22,
                        ),
                      ),
                      Text(
                        Details_texts.Second_link,
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: Get.width / 26,
                          color: AppColor.Button_color,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      SizedBox(height: Get.height / 60),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    backgroundColor: AppColor.Full_body_color,
                                    elevation: 0,
                                    content: Container(
                                      height: Get.height / 5,
                                      width: Get.width,
                                      decoration: BoxDecoration(
                                        color: AppColor.Full_body_color,
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SvgPicture.asset(
                                              AppIcons.AlertDialog),
                                          SizedBox(height: Get.height / 50),
                                          Text(
                                            Details_texts.Decline_Interview,
                                            style: TextStyle(
                                              fontSize: Get.width / 22,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          SizedBox(height: Get.height / 80),
                                          Text(
                                            Details_texts.Are_you,
                                            style: TextStyle(
                                              fontSize: Get.width / 25,
                                              color: AppColor.subcolor,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    actions: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          OnButtons_short(
                                            onTap: () {
                                              Get.back();
                                            },
                                            width: Get.width / 3,
                                            btn_name: Details_texts.Cancle,
                                            Border_color: AppColor.Error_color,
                                            btn_color: AppColor.Error_color,
                                            text_color:
                                                AppColor.Full_body_color,
                                          ),
                                          OnButtons_short(
                                            width: Get.width / 3,
                                            btn_name: Details_texts.Decline,
                                            Border_color: AppColor.Button_color,
                                            btn_color: AppColor.Button_color,
                                            text_color:
                                                AppColor.Full_body_color,
                                          ),
                                        ],
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                            child: Collec(
                              text: Details_texts.Decline,
                              color: AppColor.Error_color,
                              textcolor: AppColor.Full_body_color,
                            ),
                          ),
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
                                              color:
                                                  AppColor.select_check_color,
                                            ),
                                          ),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            const SizedBox(),
                                            Text(
                                              Details_texts.Re_arranges,
                                              style: TextStyle(
                                                fontSize: Get.width / 24,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            GestureDetector(
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
                                        height: Get.height / 4,
                                        width: Get.width,
                                        decoration: BoxDecoration(
                                          color: AppColor.Full_body_color,
                                        ),
                                        child: StatefulBuilder(
                                          builder: (BuildContext context,
                                              void Function(void Function())
                                                  setState) {
                                            return Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                RichText(
                                                  text: TextSpan(
                                                    children: [
                                                      TextSpan(
                                                        text: Details_texts.HI,
                                                        style: TextStyle(
                                                          color:
                                                              AppColor.subcolor,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontSize:
                                                              Get.width / 27,
                                                          fontFamily:
                                                              GoogleFonts
                                                                      .poppins()
                                                                  .fontFamily,
                                                        ),
                                                      ),
                                                      TextSpan(
                                                        text:
                                                            "Khushraaj M.G Soni ",
                                                        style: TextStyle(
                                                          color:
                                                              AppColor.subcolor,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontSize:
                                                              Get.width / 27,
                                                          fontFamily:
                                                              GoogleFonts
                                                                      .poppins()
                                                                  .fontFamily,
                                                        ),
                                                      ),
                                                      TextSpan(
                                                        text: Details_texts
                                                            .when_would,
                                                        style: TextStyle(
                                                          color:
                                                              AppColor.subcolor,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontSize:
                                                              Get.width / 27,
                                                          fontFamily:
                                                              GoogleFonts
                                                                      .poppins()
                                                                  .fontFamily,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                    height: Get.height / 50),
                                                Container(
                                                    height: Get.height / 20,
                                                    width: Get.width,
                                                    decoration: BoxDecoration(
                                                      border: Border.all(
                                                        color: AppColor
                                                            .select_check_color,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                        Get.width / 60,
                                                      ),
                                                    ),
                                                    child: Consumer<
                                                        DetailsInterviwe>(
                                                      builder:
                                                          (BuildContext context,
                                                              value,
                                                              Widget? child) {
                                                        return Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            SizedBox(
                                                              width: Get.width /
                                                                  1.5,
                                                              child:
                                                                  DropdownButton<
                                                                      String>(
                                                                underline:
                                                                    const SizedBox(),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                  Get.width /
                                                                      20,
                                                                ),
                                                                style:
                                                                    TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize:
                                                                      Get.width /
                                                                          30,
                                                                  color: AppColor
                                                                      .black_all,
                                                                ),
                                                                value: Interviwe
                                                                    .face,
                                                                items: Mettings
                                                                    .map((String
                                                                        value) {
                                                                  return DropdownMenuItem<
                                                                      String>(
                                                                    value:
                                                                        value,
                                                                    child: Text(
                                                                        value),
                                                                  );
                                                                }).toList(),
                                                                onChanged: (String?
                                                                    newValue) {
                                                                  if (newValue !=
                                                                      null) {
                                                                    Interviwe
                                                                        .face_Select(
                                                                            newValue);
                                                                  }
                                                                },
                                                                isExpanded:
                                                                    true,
                                                              ),
                                                            ),
                                                          ],
                                                        );
                                                      },
                                                    )),
                                                SizedBox(
                                                  height: Get.height / 50,
                                                ),
                                                Text(
                                                  Details_texts.Date_Time,
                                                  style: TextStyle(
                                                    fontSize: Get.width / 25,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                                Container(
                                                  height: Get.height / 20,
                                                  width: Get.width,
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                      color: AppColor
                                                          .select_check_color,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      Get.width / 60,
                                                    ),
                                                  ),
                                                  child: const TextField(
                                                    decoration: InputDecoration(
                                                      focusedBorder:
                                                          InputBorder.none,
                                                      enabledBorder:
                                                          InputBorder.none,
                                                    ),
                                                    keyboardType:
                                                        TextInputType.number,
                                                  ),
                                                )
                                              ],
                                            );
                                          },
                                        ),
                                      ),
                                      actions: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            OnButtons_short(
                                              onTap: () {
                                                Get.back();
                                              },
                                              width: Get.width / 3,
                                              btn_name: Details_texts.Cancle,
                                              Border_color:
                                                  AppColor.Error_color,
                                              btn_color: AppColor.Error_color,
                                              text_color:
                                                  AppColor.Full_body_color,
                                            ),
                                            OnButtons_short(
                                              width: Get.width / 3,
                                              btn_name:
                                                  Details_texts.Yes_re_arrange,
                                              Border_color:
                                                  AppColor.Button_color,
                                              btn_color: AppColor.Button_color,
                                              text_color:
                                                  AppColor.Full_body_color,
                                            ),
                                          ],
                                        )
                                      ],
                                    );
                                  });
                            },
                            child: Collec(
                              text: Details_texts.Re_arranges,
                              color: AppColor.success_color,
                              textcolor: AppColor.Full_body_color,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    backgroundColor: AppColor.Full_body_color,
                                    elevation: 0,
                                    content: Container(
                                      height: Get.height / 5,
                                      width: Get.width,
                                      decoration: BoxDecoration(
                                        color: AppColor.Full_body_color,
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SvgPicture.asset(
                                              AppIcons.AlertDialog),
                                          SizedBox(height: Get.height / 50),
                                          Text(
                                            Details_texts.Accept_Interview,
                                            style: TextStyle(
                                              fontSize: Get.width / 22,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          SizedBox(height: Get.height / 80),
                                          Text(
                                            Details_texts.Are_you_sure,
                                            style: TextStyle(
                                              fontSize: Get.width / 25,
                                              color: AppColor.subcolor,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    actions: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          OnButtons_short(
                                            onTap: () {
                                              Get.back();
                                            },
                                            width: Get.width / 3,
                                            btn_name: Details_texts.Cancle,
                                            Border_color: AppColor.Error_color,
                                            btn_color: AppColor.Error_color,
                                            text_color:
                                                AppColor.Full_body_color,
                                          ),
                                          OnButtons_short(
                                            onTap: () {
                                              showDialog(
                                                context: context,
                                                builder:
                                                    (BuildContext context) {
                                                  return AlertDialog(
                                                    elevation: 0,
                                                    backgroundColor: AppColor
                                                        .Full_body_color,
                                                    content: Container(
                                                      width: Get.width,
                                                      height: Get.height / 5,
                                                      decoration: BoxDecoration(
                                                        color: AppColor
                                                            .Full_body_color,
                                                      ),
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          SvgPicture.asset(
                                                            AppIcons.select,
                                                            height: 60,
                                                            width: 60,
                                                          ),
                                                          SizedBox(
                                                              height:
                                                                  Get.height /
                                                                      50),
                                                          Text(
                                                            Details_texts
                                                                .Success,
                                                            style: TextStyle(
                                                              fontSize:
                                                                  Get.width /
                                                                      22,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                            ),
                                                          ),
                                                          SizedBox(
                                                              height:
                                                                  Get.height /
                                                                      50),
                                                          Text(
                                                            Details_texts
                                                                .Job_Interview,
                                                            style: TextStyle(
                                                              color: AppColor
                                                                  .subcolor,
                                                              fontSize:
                                                                  Get.width /
                                                                      25,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    actions: [
                                                      OnButtons_short(
                                                        onTap: () {
                                                          Get.back();
                                                        },
                                                        btn_name:
                                                            Details_texts.Ok,
                                                        Border_color: AppColor
                                                            .Button_color,
                                                        btn_color: AppColor
                                                            .Button_color,
                                                        text_color: AppColor
                                                            .Full_body_color,
                                                      ),
                                                    ],
                                                  );
                                                },
                                              );
                                            },
                                            width: Get.width / 3,
                                            btn_name: Details_texts.Accept,
                                            Border_color: AppColor.Button_color,
                                            btn_color: AppColor.Button_color,
                                            text_color:
                                                AppColor.Full_body_color,
                                          ),
                                        ],
                                      )
                                    ],
                                  );
                                },
                              );
                            },
                            child: Collec(
                              text: Details_texts.Accept,
                              color: AppColor.Button_color,
                              textcolor: AppColor.Full_body_color,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: Get.height / 60),
                      Text(
                        Details_texts.Job_Description,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: Get.width / 22,
                        ),
                      ),
                      SizedBox(height: Get.height / 60),
                      SizedBox(
                        height: Get.height / 3.5,
                        child: ListView.builder(
                          itemCount: Description_list.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Text(
                              Description_list[index],
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: Get.width / 25,
                                color: AppColor.subcolor,
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(height: Get.height / 60),
                      Text(
                        Details_texts.Secondary_Skillset,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: Get.width / 22,
                        ),
                      ),
                      Column(
                        children: [
                          SizedBox(height: Get.height / 80),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Collec(
                                text: Details_texts.Marketing,
                                color: AppColor.Button_color,
                                textcolor: AppColor.Full_body_color,
                              ),
                              Collec(
                                text: Details_texts.Field_Sales,
                                color: AppColor.Button_color,
                                textcolor: AppColor.Full_body_color,
                              ),
                              Collec(
                                text: Details_texts.Sales,
                                color: AppColor.Button_color,
                                textcolor: AppColor.Full_body_color,
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: Get.height / 60),
                      Text(
                        Details_texts.Benefits_Offered,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: Get.width / 22,
                        ),
                      ),
                      SizedBox(height: Get.height / 50),
                      SizedBox(
                        height: Get.height / 45,
                        child: ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: Benefits_Offered.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 8,
                                  height: 8,
                                  child: CircleAvatar(
                                    backgroundColor: AppColor.subcolor,
                                  ),
                                ),
                                SizedBox(width: Get.width / 23),
                                Expanded(
                                  child: Text(
                                    Benefits_Offered[index],
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: AppColor.subcolor,
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                      SizedBox(height: Get.height / 50),
                      Text(
                        Details_texts.Supplement_Pay,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: Get.width / 22,
                        ),
                      ),
                      SizedBox(height: Get.height / 50),
                      SizedBox(
                        height: Get.width / 10,
                        child: ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: Supplement_pay.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 8,
                                  height: 8,
                                  child: CircleAvatar(
                                    backgroundColor: AppColor.subcolor,
                                  ),
                                ),
                                SizedBox(width: Get.width / 23),
                                Expanded(
                                  child: Text(
                                    Supplement_pay[index],
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: AppColor.subcolor,
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                      SizedBox(height: Get.height / 50),
                      Text(
                        Details_texts.Educational_Level_Required,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: Get.width / 22,
                        ),
                      ),
                      SizedBox(height: Get.height / 50),
                      SizedBox(
                        height: Get.width / 15,
                        child: ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: Education_level_Required.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 8,
                                  height: 8,
                                  child: CircleAvatar(
                                    backgroundColor: AppColor.subcolor,
                                  ),
                                ),
                                SizedBox(width: Get.width / 23),
                                Expanded(
                                  child: Text(
                                    Education_level_Required[index],
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: AppColor.subcolor,
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                      SizedBox(height: Get.height / 50),
                      Text(
                        Details_texts.Added_Advantage_Skills,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: Get.width / 22,
                        ),
                      ),
                      SizedBox(height: Get.height / 50),
                      SizedBox(
                        height: Get.width / 10,
                        child: ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: Added_Advantage_Skills.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 8,
                                  height: 8,
                                  child: CircleAvatar(
                                    backgroundColor: AppColor.subcolor,
                                  ),
                                ),
                                SizedBox(width: Get.width / 23),
                                Expanded(
                                  child: Text(
                                    Added_Advantage_Skills[index],
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: AppColor.subcolor,
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
