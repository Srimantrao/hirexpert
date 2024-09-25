// ignore_for_file: file_names, non_constant_identifier_names, prefer_const_constructors, override_on_non_overriding_member, avoid_print, prefer_const_constructors_in_immutables, annotate_overrides, unnecessary_null_comparison, must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hirexpert/modal/Job/Search_list.dart';
import 'package:hirexpert/view/utils/app_color.dart';
import 'package:hirexpert/view/utils/app_loder.dart';
import 'package:hirexpert/view/utils/common/Buttons/wideButtons.dart';
import 'package:hirexpert/view/utils/common/List/jobSearch.dart';
import 'package:flutter_html/flutter_html.dart';
import '../../../../../../controller/Save_Controller/Candidate_state/Menu/Search/Searech_location_Save.dart';
import '../../../../../utils/app_String.dart';

class Details extends StatelessWidget {
  SearechLocationSave SavingDetails = Get.put(SearechLocationSave());
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
  final Widget? saving;
  final void Function()? saveonTap;
  final bool? save;

  Details({
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
    this.saveonTap,
    this.save,
    this.saving,
  });

  // final OptionApiController login = Get.put(OptionApiController());
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        if (SavingDetails.sumit.isApply.isLoding.value) {
          return Scaffold(
            body: Container(
              height: Get.height,
              width: Get.width,
              decoration: BoxDecoration(
                color: AppColor.Full_body_color,
              ),
              child: Center(
                child: Image.asset(AppLoder.infinityloder_without_background,scale: Get.width/250),
              ),
            ),
          );
        } else if (SavingDetails.sumit.isApply.isApplingdata['data'] == null || SavingDetails.sumit.isApply.isApplingdata == null) {
          return Scaffold(
            body: Container(
              height: Get.height,
              width: Get.width,
              decoration: BoxDecoration(
                color: AppColor.Full_body_color,
              ),
              child: Center(
                child: Image.asset(AppLoder.infinityloder_without_background),
              ),
            ),
          );
        } else {
          if (SavingDetails.sumit.isApply.isApplingdata['data']['IsApply'] == SavingDetails.sumit.valuecheck) {
            return Container(
              height: Get.height,
              width: Get.width,
              decoration: BoxDecoration(color: AppColor.Full_body_color),
              child: SafeArea(
                child: NestedScrollView(
                  headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
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
                            saveonTap: saveonTap,
                            savechild: saving,
                            top: BorderSide(color: AppColor.Full_body_color),
                            bottam: BorderSide(color: AppColor.Bottam_color),
                          ),
                        ),
                      ),
                    ];
                  },
                  body: Padding(
                    padding: EdgeInsets.symmetric(horizontal: Get.width / 30),
                    child: Stack(
                      children: [
                        SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: Get.width / 50),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: Get.height / 60),

                                //Description
                                Text(Details_texts.Job_Description, style: TextStyle(fontWeight: FontWeight.w700, fontSize: Get.width / 22)),
                                SizedBox(height: Get.height / 60),
                                SizedBox(
                                  height: Get.height / 0.52,
                                  child: ListView.builder(
                                    physics: NeverScrollableScrollPhysics(),
                                    itemCount: 1,
                                    itemBuilder: (BuildContext context, int index) {
                                      return Html(
                                        data: SavingDetails.sumit.isApply.isApplingdata['data']['JobAbout'],
                                        style: {
                                          'p': Style(fontSize: FontSize(Get.width / 27)),
                                          'strong': Style(fontSize: FontSize(Get.width / 27)),
                                          'li': Style(fontSize: FontSize(Get.width / 27))
                                        },
                                      );
                                    },
                                  ),
                                ),
                                SizedBox(height: Get.height / 50),
                                //Benefits Offered
                                Text(Details_texts.Benefits_Offered, style: TextStyle(fontWeight: FontWeight.w700, fontSize: Get.width / 22)),
                                SizedBox(height: Get.height / 50),
                                SizedBox(
                                  height: Get.height / 45,
                                  child: ListView.builder(
                                    physics: NeverScrollableScrollPhysics(),
                                    itemCount: Benefits_Offered.length,
                                    itemBuilder: (BuildContext context, int index) {
                                      return Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                            width: 8,
                                            height: 8,
                                            child: CircleAvatar(backgroundColor: AppColor.subcolor)),
                                          SizedBox(width: Get.width / 23),
                                          Expanded(
                                            child: Text(Benefits_Offered[index], style: TextStyle(fontSize: 16, color: AppColor.subcolor)),
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                ),
                                SizedBox(height: Get.height / 50),

                                //Suppiement Pay
                                Text(Details_texts.Supplement_Pay, style: TextStyle(fontWeight: FontWeight.w700, fontSize: Get.width / 22)),
                                SizedBox(height: Get.height / 50),
                                SizedBox(
                                  height: Get.width / 10,
                                  child: ListView.builder(
                                    physics: NeverScrollableScrollPhysics(),
                                    itemCount: Supplement_pay.length,
                                    itemBuilder: (BuildContext context, int index) {
                                      return Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          SizedBox(width: 8, height: 8, child: CircleAvatar(backgroundColor: AppColor.subcolor)),
                                          SizedBox(width: Get.width / 23),
                                          Expanded(child: Text(Supplement_pay[index], style: TextStyle(fontSize: 16, color: AppColor.subcolor)),
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                ),
                                SizedBox(height: Get.height / 50),

                                //Education Level Requird
                                Text(Details_texts.Educational_Level_Required, style: TextStyle(fontWeight: FontWeight.w700, fontSize: Get.width / 22)),
                                SizedBox(height: Get.height / 50),
                                SizedBox(
                                  height: Get.width / 15,
                                  child: ListView.builder(
                                    physics: NeverScrollableScrollPhysics(),
                                    itemCount: Education_level_Required.length,
                                    itemBuilder: (BuildContext context, int index) {
                                      return Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          SizedBox(width: 8, height: 8, child: CircleAvatar(backgroundColor: AppColor.subcolor)),
                                          SizedBox(width: Get.width / 23),
                                          Expanded(
                                            child: Text(Education_level_Required[index], style: TextStyle(fontSize: 16, color: AppColor.subcolor),
                                            ),
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                ),
                                SizedBox(height: Get.height / 50),

                                //Added Advantage Skills
                                Text(Details_texts.Added_Advantage_Skills, style: TextStyle(fontWeight: FontWeight.w700, fontSize: Get.width / 22)),
                                SizedBox(height: Get.height / 50),
                                SizedBox(
                                  height: Get.width / 10,
                                  child: ListView.builder(
                                    physics: NeverScrollableScrollPhysics(),
                                    itemCount: Added_Advantage_Skills.length,
                                    itemBuilder: (BuildContext context, int index) {
                                      return Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          SizedBox(width: 8, height: 8, child: CircleAvatar(backgroundColor: AppColor.subcolor)),
                                          SizedBox(width: Get.width / 23),
                                          Expanded(child: Text(Added_Advantage_Skills[index], style: TextStyle(fontSize: 16, color: AppColor.subcolor)),
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
                          child: OnButtons(Button_Color:  AppColor.success_color , btn_name: 'Applayed')
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          } else {
            return Container(
              height: Get.height,
              width: Get.width,
              decoration: BoxDecoration(color: AppColor.Full_body_color),
              child: SafeArea(
                child: NestedScrollView(
                  headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
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
                            saveonTap: saveonTap,
                            savechild: saving,
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
                    padding: EdgeInsets.symmetric(horizontal: Get.width / 30),
                    child: Stack(
                      children: [
                        SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: Get.width / 50),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: Get.height / 60),

                                //Description
                                Text(Details_texts.Job_Description, style: TextStyle(fontWeight: FontWeight.w700, fontSize: Get.width / 22)),
                                SizedBox(height: Get.height / 60),
                                SizedBox(
                                  height: Get.height / 0.52,
                                  child: ListView.builder(
                                    physics: NeverScrollableScrollPhysics(),
                                    itemCount: 1,
                                    itemBuilder: (BuildContext context, int index) {
                                      return Html(
                                        data: SavingDetails.sumit.isApply.isApplingdata['data']['JobAbout'],
                                        style: {
                                          'p': Style(fontSize: FontSize(Get.width / 27)),
                                          'strong': Style(fontSize: FontSize(Get.width / 22)),
                                          'li': Style(fontSize: FontSize(Get.width / 27))
                                        },
                                      );
                                    },
                                  ),
                                ),
                                SizedBox(height: Get.height / 50),
                                //Benefits Offered
                                Text(Details_texts.Benefits_Offered, style: TextStyle(fontWeight: FontWeight.w700, fontSize: Get.width / 22)),
                                SizedBox(height: Get.height / 50),
                                SizedBox(
                                  height: Get.height / 45,
                                  child: ListView.builder(
                                    physics: NeverScrollableScrollPhysics(),
                                    itemCount: Benefits_Offered.length,
                                    itemBuilder: (BuildContext context, int index) {
                                      return Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          SizedBox(width: 8, height: 8, child: CircleAvatar(backgroundColor: AppColor.subcolor)),
                                          SizedBox(width: Get.width / 23),
                                          Expanded(
                                            child: Text(Benefits_Offered[index], style: TextStyle(fontSize: 16, color: AppColor.subcolor)),
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                ),
                                SizedBox(height: Get.height / 50),

                                //Suppiement Pay
                                Text(Details_texts.Supplement_Pay, style: TextStyle(fontWeight: FontWeight.w700, fontSize: Get.width / 22)),
                                SizedBox(height: Get.height / 50),
                                SizedBox(
                                  height: Get.width / 10,
                                  child: ListView.builder(
                                    physics: NeverScrollableScrollPhysics(),
                                    itemCount: Supplement_pay.length,
                                    itemBuilder: (BuildContext context, int index) {
                                      return Row(crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          SizedBox(width: 8, height: 8, child: CircleAvatar(backgroundColor: AppColor.subcolor)),
                                          SizedBox(width: Get.width / 23),
                                          Expanded(child: Text(Supplement_pay[index], style: TextStyle(fontSize: 16, color: AppColor.subcolor))),
                                        ],
                                      );
                                    },
                                  ),
                                ),
                                SizedBox(height: Get.height / 50),

                                //Education Level Requird
                                Text(Details_texts.Educational_Level_Required, style: TextStyle(fontWeight: FontWeight.w700, fontSize: Get.width / 22)),
                                SizedBox(height: Get.height / 50),
                                SizedBox(
                                  height: Get.width / 15,
                                  child: ListView.builder(
                                    physics: NeverScrollableScrollPhysics(),
                                    itemCount: Education_level_Required.length,
                                    itemBuilder: (BuildContext context, int index) {
                                      return Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          SizedBox(width: 8, height: 8, child: CircleAvatar(backgroundColor: AppColor.subcolor)),
                                          SizedBox(width: Get.width / 23),
                                          Expanded(
                                            child: Text(Education_level_Required[index], style: TextStyle(fontSize: 16, color: AppColor.subcolor)),
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                ),
                                SizedBox(height: Get.height / 50),

                                //Added Advantage Skills
                                Text(Details_texts.Added_Advantage_Skills, style: TextStyle(fontWeight: FontWeight.w700, fontSize: Get.width / 22)),
                                SizedBox(height: Get.height / 50),
                                SizedBox(
                                  height: Get.width / 10,
                                  child: ListView.builder(
                                    physics: NeverScrollableScrollPhysics(),
                                    itemCount: Added_Advantage_Skills.length,
                                    itemBuilder: (BuildContext context, int index) {
                                      return Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          SizedBox(width: 8, height: 8, child: CircleAvatar(backgroundColor: AppColor.subcolor)),
                                          SizedBox(width: Get.width / 23),
                                          Expanded(
                                            child: Text(Added_Advantage_Skills[index], style: TextStyle(fontSize: 16, color: AppColor.subcolor)),
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                ),
                                SizedBox(height: Get.height / 50),
                                OnButtons(
                                  onTap: () {
                                    SavingDetails.sumit.Messes(context);
                                  },
                                  Button_Color: AppColor.Button_color,
                                  btn_name: Details_texts.Apply_Now,
                                ),
                                SizedBox(height: Get.height / 50),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          }
        }
      }),
    );
  }
}
