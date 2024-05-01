// ignore_for_file: file_names, camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../../../modal/Job/Search_list.dart';
import '../../../../../utils/app_String.dart';
import '../../../../../utils/app_color.dart';
import '../../../../../utils/app_icon.dart';
import '../../../../../utils/common/Container/Option.dart';
import '../../../../../utils/common/List/jobSearch.dart';

class Details_Hired extends StatefulWidget {
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

  const Details_Hired({
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
  State<Details_Hired> createState() => _Details_HiredState();
}

class _Details_HiredState extends State<Details_Hired> {
  bool isSeved = false;

  @override
  Widget build(BuildContext context) {
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
            My_Jobs_Screen.Hired,
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
                    pinned: false,
                    collapsedHeight: size.height / 3.5,
                    automaticallyImplyLeading: false,
                    flexibleSpace: SizedBox(
                      height: size.height / 3.5,
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
                          isSeved = !isSeved;
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
                          Details_texts.Offered,
                          style: TextStyle(
                            fontSize: Get.width / 26,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: Get.height / 60),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  Details_texts.Offered_CTC,
                                  style: TextStyle(
                                    color: AppColor.subcolor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  Details_texts.Per_Monthly,
                                  style: TextStyle(
                                    color: AppColor.subcolor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: Get.height / 80),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  Details_texts.Jobs_Type,
                                  style: TextStyle(
                                    color: AppColor.subcolor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  Details_texts.FullTime,
                                  style: TextStyle(
                                    color: AppColor.subcolor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: Get.height / 600),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  Details_texts.Offer_Letter,
                                  style: TextStyle(
                                    color: AppColor.subcolor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    Details_texts.Click_Here,
                                    style: TextStyle(
                                      color: AppColor.Button_color,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: Get.height / 600),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  Details_texts.Notes,
                                  style: TextStyle(
                                    color: AppColor.subcolor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  Details_texts.Test_Description,
                                  style: TextStyle(
                                    color: AppColor.subcolor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: Get.height / 80),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  Details_texts.Status,
                                  style: TextStyle(
                                    color: AppColor.subcolor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  Details_texts.Accepted,
                                  style: TextStyle(
                                    color: AppColor.Button_color,
                                  ),
                                ),
                              ],
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
        ));
  }
}