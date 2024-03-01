// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hirexpert/modal/Job/jobSearch_list.dart';
import 'package:hirexpert/view/utils/app_color.dart';
import 'package:hirexpert/view/utils/common/Buttons/wideButtons.dart';
import 'package:hirexpert/view/utils/common/List/jobSearch.dart';

import '../../../../../modal/Job/Search_list.dart';
import '../../../../utils/app_String.dart';
import '../../../../utils/app_icon.dart';

class Details extends StatefulWidget {
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

  const Details({
    super.key,
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
    required this.stats,
  });

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {

  bool isSeved = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: Get.height / 15,
        backgroundColor: AppColor.Full_body_color,
        surfaceTintColor: Colors.transparent,
        scrolledUnderElevation: 0,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: const Text(
          My_Jobs_Screen.Saved,
          style: TextStyle(
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          const Icon(Icons.notifications),
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
                SliverAppBar(
                  elevation: 0,
                  backgroundColor: AppColor.Full_body_color,
                  forceMaterialTransparency: true,
                  pinned: true,
                  collapsedHeight: Get.height / 3.5,
                  automaticallyImplyLeading: false,
                  flexibleSpace: SizedBox(
                    height: Get.height / 3.5,
                    child: JobSearch(
                      Icon: widget.Icon,
                      Color_container: widget.Color_container,
                      Job_Tital: widget.Job_Tital,
                      Language: widget.Language,
                      Commpany: widget.Commpany,
                      Working: widget.Working,
                      Location: widget.Location,
                      Job_time: widget.Job_time,
                      Exp: widget.Exp,
                      lake: widget.lake,
                      Hybrid: widget.Hybrid,
                      stats: widget.stats,
                      saveonTap: () {
                        isSeved =!isSeved;
                        setState(() {});
                      },
                      savechild: (isSeved)
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
                ),
              ];
            },
            body: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: Get.width / 30,
              ),
              child: Stack(
                children: [
                  SingleChildScrollView(
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
                            Details_texts.Requirements,
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: Get.width / 22,
                            ),
                          ),
                          SizedBox(height: Get.height / 60),
                          SizedBox(
                            height: Get.width / 1,
                            child: ListView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: Requirements_list.length,
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
                                        Requirements_list[index],
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
                            Details_texts.Skills,
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: Get.width / 22,
                            ),
                          ),
                          SizedBox(height: Get.height / 50),
                          SizedBox(
                            height: Get.width / 1,
                            child: ListView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: Skills_list.length,
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
                                        Skills_list[index],
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
                          SizedBox(height: Get.height / 10),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 730,
                    left: 5,
                    right: 5,
                    bottom: 10,
                    child: OnButtons(
                      onTap: () {
                        appliedjob.add(showjob);
                      },
                      Button_Color: AppColor.Button_color,
                      btn_name: Details_texts.Apply_Now,
                    ),
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
