// ignore_for_file: camel_case_types, non_constant_identifier_names, file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hirexpert/controller/API_handler/Candidate/Menu/Home/Appling_API_handler.dart';
import 'package:hirexpert/controller/User_Controller/Candidate_Controller/DatailsController/Details_Appild.dart';
import 'package:provider/provider.dart';

import '../../../../../../modal/Job/Search_list.dart';
import '../../../../../utils/app_String.dart';
import '../../../../../utils/app_color.dart';
import '../../../../../utils/app_icon.dart';
import '../../../../../utils/common/Container/Option.dart';
import '../../../../../utils/common/List/jobSearch.dart';

class Details_Appild extends StatelessWidget {
  final ApplingApiHandler Appling = Get.put(ApplingApiHandler());
  final String Icon;
  final Color? Color_container;
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

  Details_Appild({
    super.key,
    required this.Icon,
    this.Color_container,
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
  Widget build(BuildContext context) {
    final Applid = Provider.of<DetailsAppild>(context, listen: false);
    final size = MediaQuery.of(context).size;
    return Scaffold(
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
                Consumer<DetailsAppild>(
                  builder: (BuildContext context, value, Widget? child) {
                    return SliverAppBar(
                      elevation: 0,
                      backgroundColor: AppColor.Full_body_color,
                      forceMaterialTransparency: true,
                      pinned: true,
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
                            Applid.Details_Appild();
                          },
                          savechild: (Applid.isSeved)
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
                        Details_texts.Job_Description,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: Get.width / 22,
                        ),
                      ),
                      SizedBox(height: Get.height / 60),
                      SizedBox(
                        height: Get.height / 0.52,
                        child: ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: 1,
                          itemBuilder: (BuildContext context, int index) {
                            return Html(
                              data: Appling.Detailing.Details_data['data']
                                  ['JobAbout'],
                              style: {
                                'p': Style(
                                  fontSize: FontSize(Get.width / 27),
                                ),
                                'strong': Style(
                                  fontSize: FontSize(Get.width / 22),
                                ),
                                'li': Style(
                                  fontSize: FontSize(Get.width / 27),
                                )
                              },
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

                      //Benefits Offered
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

                      //Suppiement Pay
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

                      //Education Level Requird
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

                      //Added Advantage Skills
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
                      SizedBox(height: Get.height / 50),
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