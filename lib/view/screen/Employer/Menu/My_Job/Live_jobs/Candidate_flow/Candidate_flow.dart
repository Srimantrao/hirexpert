// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:hirexpert/view/utils/app_String.dart';
import 'package:hirexpert/view/utils/app_color.dart';
import 'package:hirexpert/view/utils/app_icon.dart';

class CandidateFlow extends StatefulWidget {
  const CandidateFlow({super.key});

  @override
  State<CandidateFlow> createState() => _CandidateFlowState();
}

class _CandidateFlowState extends State<CandidateFlow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.Full_body_color,
      body: SafeArea(
        child: Container(
          height: Get.height,
          width: Get.width,
          decoration: BoxDecoration(color: AppColor.Full_body_color),
          child: NestedScrollView(
            headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  elevation: 0,
                  backgroundColor: AppColor.Full_body_color,
                  forceMaterialTransparency: true,
                  pinned: false,
                  collapsedHeight: Get.height / 10,
                  automaticallyImplyLeading: false,
                  flexibleSpace: Padding(
                    padding: EdgeInsets.symmetric(horizontal: Get.width / 20),
                    child: Container(
                      height: Get.height / 10,
                      width: Get.width,
                      decoration: BoxDecoration(color: AppColor.Full_body_color),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(My_Jobes_text.My_Jobs, style: TextStyle(fontSize: Get.height / 40, fontWeight: FontWeight.w600)),
                          Row(
                            children: [
                              Container(
                                height: Get.height / 20,
                                width: Get.width / 3.8,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(Get.width / 50),
                                  color: AppColor.Button_color,
                                ),
                                child: Center(
                                  child: Text(My_Jobes_text.Post_Jobs, style: TextStyle(fontSize: Get.width / 27, color: AppColor.Full_body_color)),
                                ),
                              ),
                              SizedBox(width: Get.width / 50),
                              Icon(Icons.notifications_none_sharp, color: AppColor.select_check_color, size: 30),
                              SizedBox(width: Get.width / 50),
                              Icon(Icons.monitor_weight_outlined, color: AppColor.select_check_color, size: 30),
                              SizedBox(width: Get.width / 50),
                              PopupMenuButton(
                                  color: AppColor.Full_body_color,
                                  onSelected: (value) {
                                    print(value);
                                  },
                                  itemBuilder: (BuildContext context) =>
                                      <PopupMenuEntry>[
                                        PopupMenuItem(value: 1, child: Text('All')),
                                        PopupMenuItem(value: 2, child: Text('Last 7 Days')),
                                        PopupMenuItem(value: 3, child: Text('Last 30 Days')),
                                        PopupMenuItem(value: 3, child: Text('Last 6 Months')),
                                        PopupMenuItem(value: 3, child: Text('Last 1 Year')),
                                      ],
                                  child: SvgPicture.asset(AppIcons.dots)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ];
            },
            body: Container(
              height: Get.height,
              width: Get.width,
              decoration: BoxDecoration(color: AppColor.Full_body_color),
              child: DefaultTabController(
                length: 7,
                child: Column(
                  children: [
                    TabBar(
                      dividerColor: AppColor.Full_body_color,
                      indicatorColor: AppColor.subcolor,
                      physics: BouncingScrollPhysics(),
                      indicatorSize: TabBarIndicatorSize.label,
                      tabAlignment: TabAlignment.start,
                      isScrollable: true,
                      labelColor: AppColor.Full_body_color,
                      unselectedLabelColor: AppColor.subcolor,
                      indicatorPadding: EdgeInsets.symmetric(vertical: Get.height / 550),
                      indicator: BoxDecoration(
                        border: Border.all(color: AppColor.Button_color),
                        borderRadius: BorderRadius.circular(Get.width / 35),
                        color: AppColor.Button_color,
                      ),
                      tabs: [
                        Tab(
                          child: Container(
                            height: Get.height / 15,
                            width: Get.width / 3,
                            decoration: BoxDecoration(
                              border: Border.all(color: AppColor.subcolor),
                              borderRadius: BorderRadius.circular(Get.width / 35),
                            ),
                            child: Center(
                              child: Text('${Candidate_flow_text.Not_Actioned} (0)', textAlign: TextAlign.center),
                            ),
                          ),
                        ),
                        Tab(
                          child: Container(
                            height: Get.height / 15,
                            width: Get.width / 3,
                            decoration: BoxDecoration(
                              border: Border.all(color: AppColor.subcolor),
                              borderRadius: BorderRadius.circular(Get.width / 35),
                            ),
                            child: Center(
                              child: Text('${Candidate_flow_text.Favourite} (0)', textAlign: TextAlign.center),
                            ),
                          ),
                        ),
                        Tab(
                          child: Container(
                            height: Get.height / 15,
                            width: Get.width / 3,
                            decoration: BoxDecoration(
                              border: Border.all(color: AppColor.subcolor),
                              borderRadius: BorderRadius.circular(Get.width / 35),
                            ),
                            child: Center(
                              child: Text('${Candidate_flow_text.First_Interview} (0)', textAlign: TextAlign.center),
                            ),
                          ),
                        ),
                        Tab(
                          child: Container(
                            height: Get.height / 15,
                            width: Get.width / 3,
                            decoration: BoxDecoration(
                              border: Border.all(color: AppColor.subcolor),
                              borderRadius: BorderRadius.circular(Get.width / 35),
                            ),
                            child: Center(
                              child: Text('${Candidate_flow_text.Second_Interview} (0)', textAlign: TextAlign.center),
                            ),
                          ),
                        ),
                        Tab(
                          child: Container(
                            height: Get.height / 15,
                            width: Get.width / 3,
                            decoration: BoxDecoration(
                                border: Border.all(color: AppColor.subcolor),
                                borderRadius: BorderRadius.circular(Get.width / 35),
                            ),
                            child: Center(
                              child: Text('${Candidate_flow_text.Offers} (0)', textAlign: TextAlign.center),
                            ),
                          ),
                        ),
                        Tab(
                          child: Container(
                            height: Get.height / 15,
                            width: Get.width / 3,
                            decoration: BoxDecoration(
                              border: Border.all(color: AppColor.subcolor),
                              borderRadius: BorderRadius.circular(Get.width / 35),
                            ),
                            child: Center(
                              child: Text('${Candidate_flow_text.Hired} (0)', textAlign: TextAlign.center),
                            ),
                          ),
                        ),
                        Tab(
                          child: Container(
                            height: Get.height / 15,
                            width: Get.width / 3,
                            decoration: BoxDecoration(
                              border: Border.all(color: AppColor.subcolor),
                              borderRadius: BorderRadius.circular(Get.width / 35),
                            ),
                            child: Center(
                              child: Text('${Candidate_flow_text.Declined} (0)', textAlign: TextAlign.center),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: Get.height / 50),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: Get.width / 20),
                        child: TabBarView(
                          children: [
                            Container(
                              height: Get.height,
                              width: Get.width,
                              decoration: BoxDecoration(color: AppColor.Full_body_color),
                              child: ListView.builder(
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                itemCount: 20,
                                itemBuilder: (BuildContext context, int index) {
                                  return Container(
                                    height: Get.height / 3.8,
                                    width: Get.width,
                                    decoration: BoxDecoration(
                                      border: Border(
                                        top: BorderSide(color: AppColor.Bottam_color),
                                        bottom: BorderSide(color: Colors.transparent),
                                      ),
                                      color: AppColor.Full_body_color,
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.symmetric(vertical: Get.width / 40),
                                                  child: SvgPicture.asset(AppIcons.Layer_1),
                                                ),
                                                SizedBox(width: Get.width / 50),
                                                Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text('JobTitle', style: TextStyle(color: AppColor.subcolor)),
                                                    SizedBox(width: Get.width / 2,child: Text('TechName', style: TextStyle(fontSize: Get.width / 26,fontWeight: FontWeight.w600))),
                                                    Text('ComName', style: TextStyle(fontSize: Get.width / 26, fontWeight: FontWeight.w400,color: AppColor.Button_color)),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                // Get.to(()=> LiveJobsDitails());
                                              },
                                              child: SvgPicture.asset(AppIcons.Editing),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: Get.height / 50),
                                        Wrap(
                                          runSpacing: Get.height / 90,
                                          children: [
                                            SizedBox(
                                              height: Get.height / 30,
                                              width: Get.width / 5,
                                              child: Container(
                                                width: Get.width / 3.2,
                                                height: Get.height / 25,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(Get.width / 60),
                                                  color: AppColor.ditalis_conatiner,
                                                ),
                                                child: Center(
                                                  child: Text('JobType', style: TextStyle(fontWeight: FontWeight.w600, fontSize: Get.width / 30)),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: Get.width / 50),
                                            SizedBox(
                                              height: Get.height / 30,
                                              width: Get.width / 5,
                                              child: Container(
                                                width: Get.width / 7,
                                                height: Get.height / 25,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(Get.width / 60),
                                                  color: AppColor.ditalis_conatiner,
                                                ),
                                                child: Center(
                                                  child: Text('Location', style: TextStyle(fontWeight: FontWeight.w600, fontSize: Get.width / 30)),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: Get.width / 50),
                                            SizedBox(
                                              height: Get.height / 30,
                                              width: Get.width / 5,
                                              child: Container(
                                                width: Get.width / 5,
                                                height: Get.height / 25,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(Get.width / 60),
                                                  color: AppColor.ditalis_conatiner,
                                                ),
                                                child: Center(
                                                  child: Text('JobType', style: TextStyle(fontWeight: FontWeight.w600, fontSize: Get.width / 30)),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: Get.width / 50),
                                            SizedBox(
                                              height: Get.height / 30,
                                              width: Get.width / 5,
                                              child: Container(
                                                width: Get.width / 5,
                                                height: Get.height / 25,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(Get.width / 60),
                                                  color: AppColor.ditalis_conatiner,
                                                ),
                                                child: Center(
                                                  child: Text('Experience', style: TextStyle(fontWeight: FontWeight.w600, fontSize: Get.width / 35)),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: Get.width / 50),
                                            SizedBox(
                                              height: Get.height / 30,
                                              width: Get.width / 5,
                                              child: Container(
                                                width: Get.width / 2.5,
                                                height: Get.height / 25,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(Get.width / 60),
                                                  color: AppColor.ditalis_conatiner,
                                                ),
                                                child: Center(
                                                  child: Text('Salary', style: TextStyle(fontWeight: FontWeight.w600, fontSize: Get.width / 30)),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: Get.width / 50),
                                            SizedBox(
                                              height: Get.height / 30,
                                              width: Get.width / 5,
                                              child: Container(
                                                width: Get.width / 5,
                                                height: Get.height / 22,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(Get.width / 60),
                                                  color: AppColor.ditalis_conatiner,
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.symmetric(horizontal: Get.width / 30),
                                                  child: Center(
                                                    child: Text('WorkSet', style: TextStyle(fontWeight: FontWeight.w600, fontSize: Get.width / 33,)),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: Get.width / 50),
                                        Row(mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            Text('FormatDt',style: TextStyle(color: AppColor.subcolor)),
                                          ],
                                        )
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ),
                            Container(
                              height: Get.height,
                              width: Get.width,
                              decoration: BoxDecoration(color: AppColor.Full_body_color),
                              child: ListView.builder(
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                itemCount: 2,
                                itemBuilder: (BuildContext context, int index) {
                                  return Container(
                                    height: Get.height / 3.8,
                                    width: Get.width,
                                    decoration: BoxDecoration(
                                      border: Border(
                                        top: BorderSide(color: AppColor.Bottam_color),
                                        bottom: BorderSide(color: Colors.transparent),
                                      ),
                                      color: AppColor.Full_body_color,
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.symmetric(vertical: Get.width / 40),
                                                  child: SvgPicture.asset(AppIcons.Layer_1),
                                                ),
                                                SizedBox(width: Get.width / 50),
                                                Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text('JobTitle', style: TextStyle(color: AppColor.subcolor)),
                                                    SizedBox(width: Get.width / 2,child: Text('TechName', style: TextStyle(fontSize: Get.width / 26,fontWeight: FontWeight.w600))),
                                                    Text('ComName', style: TextStyle(fontSize: Get.width / 26, fontWeight: FontWeight.w400,color: AppColor.Button_color)),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                // Get.to(()=> LiveJobsDitails());
                                              },
                                              child: SvgPicture.asset(AppIcons.Editing),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: Get.height / 50),
                                        Wrap(
                                          runSpacing: Get.height / 90,
                                          children: [
                                            SizedBox(
                                              height: Get.height / 30,
                                              width: Get.width / 5,
                                              child: Container(
                                                width: Get.width / 3.2,
                                                height: Get.height / 25,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(Get.width / 60),
                                                  color: AppColor.ditalis_conatiner,
                                                ),
                                                child: Center(
                                                  child: Text('JobType', style: TextStyle(fontWeight: FontWeight.w600, fontSize: Get.width / 30)),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: Get.width / 50),
                                            SizedBox(
                                              height: Get.height / 30,
                                              width: Get.width / 5,
                                              child: Container(
                                                width: Get.width / 7,
                                                height: Get.height / 25,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(Get.width / 60),
                                                  color: AppColor.ditalis_conatiner,
                                                ),
                                                child: Center(
                                                  child: Text('Location', style: TextStyle(fontWeight: FontWeight.w600, fontSize: Get.width / 30)),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: Get.width / 50),
                                            SizedBox(
                                              height: Get.height / 30,
                                              width: Get.width / 5,
                                              child: Container(
                                                width: Get.width / 5,
                                                height: Get.height / 25,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(Get.width / 60),
                                                  color: AppColor.ditalis_conatiner,
                                                ),
                                                child: Center(
                                                  child: Text('JobType', style: TextStyle(fontWeight: FontWeight.w600, fontSize: Get.width / 30)),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: Get.width / 50),
                                            SizedBox(
                                              height: Get.height / 30,
                                              width: Get.width / 5,
                                              child: Container(
                                                width: Get.width / 5,
                                                height: Get.height / 25,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(Get.width / 60),
                                                  color: AppColor.ditalis_conatiner,
                                                ),
                                                child: Center(
                                                  child: Text('Experience', style: TextStyle(fontWeight: FontWeight.w600, fontSize: Get.width / 35)),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: Get.width / 50),
                                            SizedBox(
                                              height: Get.height / 30,
                                              width: Get.width / 5,
                                              child: Container(
                                                width: Get.width / 2.5,
                                                height: Get.height / 25,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(Get.width / 60),
                                                  color: AppColor.ditalis_conatiner,
                                                ),
                                                child: Center(
                                                  child: Text('Salary', style: TextStyle(fontWeight: FontWeight.w600, fontSize: Get.width / 30)),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: Get.width / 50),
                                            SizedBox(
                                              height: Get.height / 30,
                                              width: Get.width / 5,
                                              child: Container(
                                                width: Get.width / 5,
                                                height: Get.height / 22,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(Get.width / 60),
                                                  color: AppColor.ditalis_conatiner,
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.symmetric(horizontal: Get.width / 30),
                                                  child: Center(
                                                    child: Text('WorkSet', style: TextStyle(fontWeight: FontWeight.w600, fontSize: Get.width / 33,)),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: Get.width / 50),
                                        Row(mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            Text('FormatDt',style: TextStyle(color: AppColor.subcolor)),
                                          ],
                                        )
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ),
                            Container(
                              height: Get.height,
                              width: Get.width,
                              decoration: BoxDecoration(color: AppColor.Full_body_color),
                              child: ListView.builder(
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                itemCount: 6,
                                itemBuilder: (BuildContext context, int index) {
                                  return Container(
                                    height: Get.height / 3.8,
                                    width: Get.width,
                                    decoration: BoxDecoration(
                                      border: Border(
                                        top: BorderSide(color: AppColor.Bottam_color),
                                        bottom: BorderSide(color: Colors.transparent),
                                      ),
                                      color: AppColor.Full_body_color,
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.symmetric(vertical: Get.width / 40),
                                                  child: SvgPicture.asset(AppIcons.Layer_1),
                                                ),
                                                SizedBox(width: Get.width / 50),
                                                Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text('JobTitle', style: TextStyle(color: AppColor.subcolor)),
                                                    SizedBox(width: Get.width / 2,child: Text('TechName', style: TextStyle(fontSize: Get.width / 26,fontWeight: FontWeight.w600))),
                                                    Text('ComName', style: TextStyle(fontSize: Get.width / 26, fontWeight: FontWeight.w400,color: AppColor.Button_color)),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                // Get.to(()=> LiveJobsDitails());
                                              },
                                              child: SvgPicture.asset(AppIcons.Editing),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: Get.height / 50),
                                        Wrap(
                                          runSpacing: Get.height / 90,
                                          children: [
                                            SizedBox(
                                              height: Get.height / 30,
                                              width: Get.width / 5,
                                              child: Container(
                                                width: Get.width / 3.2,
                                                height: Get.height / 25,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(Get.width / 60),
                                                  color: AppColor.ditalis_conatiner,
                                                ),
                                                child: Center(
                                                  child: Text('JobType', style: TextStyle(fontWeight: FontWeight.w600, fontSize: Get.width / 30)),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: Get.width / 50),
                                            SizedBox(
                                              height: Get.height / 30,
                                              width: Get.width / 5,
                                              child: Container(
                                                width: Get.width / 7,
                                                height: Get.height / 25,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(Get.width / 60),
                                                  color: AppColor.ditalis_conatiner,
                                                ),
                                                child: Center(
                                                  child: Text('Location', style: TextStyle(fontWeight: FontWeight.w600, fontSize: Get.width / 30)),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: Get.width / 50),
                                            SizedBox(
                                              height: Get.height / 30,
                                              width: Get.width / 5,
                                              child: Container(
                                                width: Get.width / 5,
                                                height: Get.height / 25,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(Get.width / 60),
                                                  color: AppColor.ditalis_conatiner,
                                                ),
                                                child: Center(
                                                  child: Text('JobType', style: TextStyle(fontWeight: FontWeight.w600, fontSize: Get.width / 30)),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: Get.width / 50),
                                            SizedBox(
                                              height: Get.height / 30,
                                              width: Get.width / 5,
                                              child: Container(
                                                width: Get.width / 5,
                                                height: Get.height / 25,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(Get.width / 60),
                                                  color: AppColor.ditalis_conatiner,
                                                ),
                                                child: Center(
                                                  child: Text('Experience', style: TextStyle(fontWeight: FontWeight.w600, fontSize: Get.width / 35)),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: Get.width / 50),
                                            SizedBox(
                                              height: Get.height / 30,
                                              width: Get.width / 5,
                                              child: Container(
                                                width: Get.width / 2.5,
                                                height: Get.height / 25,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(Get.width / 60),
                                                  color: AppColor.ditalis_conatiner,
                                                ),
                                                child: Center(
                                                  child: Text('Salary', style: TextStyle(fontWeight: FontWeight.w600, fontSize: Get.width / 30)),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: Get.width / 50),
                                            SizedBox(
                                              height: Get.height / 30,
                                              width: Get.width / 5,
                                              child: Container(
                                                width: Get.width / 5,
                                                height: Get.height / 22,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(Get.width / 60),
                                                  color: AppColor.ditalis_conatiner,
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.symmetric(horizontal: Get.width / 30),
                                                  child: Center(
                                                    child: Text('WorkSet', style: TextStyle(fontWeight: FontWeight.w600, fontSize: Get.width / 33,)),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: Get.width / 50),
                                        Row(mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            Text('FormatDt',style: TextStyle(color: AppColor.subcolor)),
                                          ],
                                        )
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ),
                            Container(
                              height: Get.height,
                              width: Get.width,
                              decoration: BoxDecoration(color: AppColor.Full_body_color),
                              child: ListView.builder(
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                itemCount: 3,
                                itemBuilder: (BuildContext context, int index) {
                                  return Container(
                                    height: Get.height / 3.8,
                                    width: Get.width,
                                    decoration: BoxDecoration(
                                      border: Border(
                                        top: BorderSide(color: AppColor.Bottam_color),
                                        bottom: BorderSide(color: Colors.transparent),
                                      ),
                                      color: AppColor.Full_body_color,
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.symmetric(vertical: Get.width / 40),
                                                  child: SvgPicture.asset(AppIcons.Layer_1),
                                                ),
                                                SizedBox(width: Get.width / 50),
                                                Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text('JobTitle', style: TextStyle(color: AppColor.subcolor)),
                                                    SizedBox(width: Get.width / 2,child: Text('TechName', style: TextStyle(fontSize: Get.width / 26,fontWeight: FontWeight.w600))),
                                                    Text('ComName', style: TextStyle(fontSize: Get.width / 26, fontWeight: FontWeight.w400,color: AppColor.Button_color)),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                // Get.to(()=> LiveJobsDitails());
                                              },
                                              child: SvgPicture.asset(AppIcons.Editing),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: Get.height / 50),
                                        Wrap(
                                          runSpacing: Get.height / 90,
                                          children: [
                                            SizedBox(
                                              height: Get.height / 30,
                                              width: Get.width / 5,
                                              child: Container(
                                                width: Get.width / 3.2,
                                                height: Get.height / 25,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(Get.width / 60),
                                                  color: AppColor.ditalis_conatiner,
                                                ),
                                                child: Center(
                                                  child: Text('JobType', style: TextStyle(fontWeight: FontWeight.w600, fontSize: Get.width / 30)),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: Get.width / 50),
                                            SizedBox(
                                              height: Get.height / 30,
                                              width: Get.width / 5,
                                              child: Container(
                                                width: Get.width / 7,
                                                height: Get.height / 25,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(Get.width / 60),
                                                  color: AppColor.ditalis_conatiner,
                                                ),
                                                child: Center(
                                                  child: Text('Location', style: TextStyle(fontWeight: FontWeight.w600, fontSize: Get.width / 30)),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: Get.width / 50),
                                            SizedBox(
                                              height: Get.height / 30,
                                              width: Get.width / 5,
                                              child: Container(
                                                width: Get.width / 5,
                                                height: Get.height / 25,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(Get.width / 60),
                                                  color: AppColor.ditalis_conatiner,
                                                ),
                                                child: Center(
                                                  child: Text('JobType', style: TextStyle(fontWeight: FontWeight.w600, fontSize: Get.width / 30)),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: Get.width / 50),
                                            SizedBox(
                                              height: Get.height / 30,
                                              width: Get.width / 5,
                                              child: Container(
                                                width: Get.width / 5,
                                                height: Get.height / 25,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(Get.width / 60),
                                                  color: AppColor.ditalis_conatiner,
                                                ),
                                                child: Center(
                                                  child: Text('Experience', style: TextStyle(fontWeight: FontWeight.w600, fontSize: Get.width / 35)),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: Get.width / 50),
                                            SizedBox(
                                              height: Get.height / 30,
                                              width: Get.width / 5,
                                              child: Container(
                                                width: Get.width / 2.5,
                                                height: Get.height / 25,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(Get.width / 60),
                                                  color: AppColor.ditalis_conatiner,
                                                ),
                                                child: Center(
                                                  child: Text('Salary', style: TextStyle(fontWeight: FontWeight.w600, fontSize: Get.width / 30)),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: Get.width / 50),
                                            SizedBox(
                                              height: Get.height / 30,
                                              width: Get.width / 5,
                                              child: Container(
                                                width: Get.width / 5,
                                                height: Get.height / 22,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(Get.width / 60),
                                                  color: AppColor.ditalis_conatiner,
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.symmetric(horizontal: Get.width / 30),
                                                  child: Center(
                                                    child: Text('WorkSet', style: TextStyle(fontWeight: FontWeight.w600, fontSize: Get.width / 33,)),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: Get.width / 50),
                                        Row(mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            Text('FormatDt',style: TextStyle(color: AppColor.subcolor)),
                                          ],
                                        )
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ),
                            Container(
                              height: Get.height,
                              width: Get.width,
                              decoration: BoxDecoration(color: AppColor.Full_body_color),
                              child: ListView.builder(
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                itemCount: 10,
                                itemBuilder: (BuildContext context, int index) {
                                  return Container(
                                    height: Get.height / 3.8,
                                    width: Get.width,
                                    decoration: BoxDecoration(
                                      border: Border(
                                        top: BorderSide(color: AppColor.Bottam_color),
                                        bottom: BorderSide(color: Colors.transparent),
                                      ),
                                      color: AppColor.Full_body_color,
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.symmetric(vertical: Get.width / 40),
                                                  child: SvgPicture.asset(AppIcons.Layer_1),
                                                ),
                                                SizedBox(width: Get.width / 50),
                                                Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text('JobTitle', style: TextStyle(color: AppColor.subcolor)),
                                                    SizedBox(width: Get.width / 2,child: Text('TechName', style: TextStyle(fontSize: Get.width / 26,fontWeight: FontWeight.w600))),
                                                    Text('ComName', style: TextStyle(fontSize: Get.width / 26, fontWeight: FontWeight.w400,color: AppColor.Button_color)),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                // Get.to(()=> LiveJobsDitails());
                                              },
                                              child: SvgPicture.asset(AppIcons.Editing),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: Get.height / 50),
                                        Wrap(
                                          runSpacing: Get.height / 90,
                                          children: [
                                            SizedBox(
                                              height: Get.height / 30,
                                              width: Get.width / 5,
                                              child: Container(
                                                width: Get.width / 3.2,
                                                height: Get.height / 25,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(Get.width / 60),
                                                  color: AppColor.ditalis_conatiner,
                                                ),
                                                child: Center(
                                                  child: Text('JobType', style: TextStyle(fontWeight: FontWeight.w600, fontSize: Get.width / 30)),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: Get.width / 50),
                                            SizedBox(
                                              height: Get.height / 30,
                                              width: Get.width / 5,
                                              child: Container(
                                                width: Get.width / 7,
                                                height: Get.height / 25,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(Get.width / 60),
                                                  color: AppColor.ditalis_conatiner,
                                                ),
                                                child: Center(
                                                  child: Text('Location', style: TextStyle(fontWeight: FontWeight.w600, fontSize: Get.width / 30)),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: Get.width / 50),
                                            SizedBox(
                                              height: Get.height / 30,
                                              width: Get.width / 5,
                                              child: Container(
                                                width: Get.width / 5,
                                                height: Get.height / 25,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(Get.width / 60),
                                                  color: AppColor.ditalis_conatiner,
                                                ),
                                                child: Center(
                                                  child: Text('JobType', style: TextStyle(fontWeight: FontWeight.w600, fontSize: Get.width / 30)),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: Get.width / 50),
                                            SizedBox(
                                              height: Get.height / 30,
                                              width: Get.width / 5,
                                              child: Container(
                                                width: Get.width / 5,
                                                height: Get.height / 25,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(Get.width / 60),
                                                  color: AppColor.ditalis_conatiner,
                                                ),
                                                child: Center(
                                                  child: Text('Experience', style: TextStyle(fontWeight: FontWeight.w600, fontSize: Get.width / 35)),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: Get.width / 50),
                                            SizedBox(
                                              height: Get.height / 30,
                                              width: Get.width / 5,
                                              child: Container(
                                                width: Get.width / 2.5,
                                                height: Get.height / 25,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(Get.width / 60),
                                                  color: AppColor.ditalis_conatiner,
                                                ),
                                                child: Center(
                                                  child: Text('Salary', style: TextStyle(fontWeight: FontWeight.w600, fontSize: Get.width / 30)),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: Get.width / 50),
                                            SizedBox(
                                              height: Get.height / 30,
                                              width: Get.width / 5,
                                              child: Container(
                                                width: Get.width / 5,
                                                height: Get.height / 22,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(Get.width / 60),
                                                  color: AppColor.ditalis_conatiner,
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.symmetric(horizontal: Get.width / 30),
                                                  child: Center(
                                                    child: Text('WorkSet', style: TextStyle(fontWeight: FontWeight.w600, fontSize: Get.width / 33,)),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: Get.width / 50),
                                        Row(mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            Text('FormatDt',style: TextStyle(color: AppColor.subcolor)),
                                          ],
                                        )
                                      ],
                                    ),
                                  );
                                },
                              )),
                            Container(
                              height: Get.height,
                              width: Get.width,
                              decoration: BoxDecoration(color: AppColor.Full_body_color),
                              child: ListView.builder(
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                itemCount: 1,
                                itemBuilder: (BuildContext context, int index) {
                                  return Container(
                                    height: Get.height / 3.8,
                                    width: Get.width,
                                    decoration: BoxDecoration(
                                      border: Border(
                                        top: BorderSide(color: AppColor.Bottam_color),
                                        bottom: BorderSide(color: Colors.transparent),
                                      ),
                                      color: AppColor.Full_body_color,
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.symmetric(vertical: Get.width / 40),
                                                  child: SvgPicture.asset(AppIcons.Layer_1),
                                                ),
                                                SizedBox(width: Get.width / 50),
                                                Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text('JobTitle', style: TextStyle(color: AppColor.subcolor)),
                                                    SizedBox(width: Get.width / 2,child: Text('TechName', style: TextStyle(fontSize: Get.width / 26,fontWeight: FontWeight.w600))),
                                                    Text('ComName', style: TextStyle(fontSize: Get.width / 26, fontWeight: FontWeight.w400,color: AppColor.Button_color)),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                // Get.to(()=> LiveJobsDitails());
                                              },
                                              child: SvgPicture.asset(AppIcons.Editing),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: Get.height / 50),
                                        Wrap(
                                          runSpacing: Get.height / 90,
                                          children: [
                                            SizedBox(
                                              height: Get.height / 30,
                                              width: Get.width / 5,
                                              child: Container(
                                                width: Get.width / 3.2,
                                                height: Get.height / 25,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(Get.width / 60),
                                                  color: AppColor.ditalis_conatiner,
                                                ),
                                                child: Center(
                                                  child: Text('JobType', style: TextStyle(fontWeight: FontWeight.w600, fontSize: Get.width / 30)),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: Get.width / 50),
                                            SizedBox(
                                              height: Get.height / 30,
                                              width: Get.width / 5,
                                              child: Container(
                                                width: Get.width / 7,
                                                height: Get.height / 25,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(Get.width / 60),
                                                  color: AppColor.ditalis_conatiner,
                                                ),
                                                child: Center(
                                                  child: Text('Location', style: TextStyle(fontWeight: FontWeight.w600, fontSize: Get.width / 30)),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: Get.width / 50),
                                            SizedBox(
                                              height: Get.height / 30,
                                              width: Get.width / 5,
                                              child: Container(
                                                width: Get.width / 5,
                                                height: Get.height / 25,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(Get.width / 60),
                                                  color: AppColor.ditalis_conatiner,
                                                ),
                                                child: Center(
                                                  child: Text('JobType', style: TextStyle(fontWeight: FontWeight.w600, fontSize: Get.width / 30)),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: Get.width / 50),
                                            SizedBox(
                                              height: Get.height / 30,
                                              width: Get.width / 5,
                                              child: Container(
                                                width: Get.width / 5,
                                                height: Get.height / 25,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(Get.width / 60),
                                                  color: AppColor.ditalis_conatiner,
                                                ),
                                                child: Center(
                                                  child: Text('Experience', style: TextStyle(fontWeight: FontWeight.w600, fontSize: Get.width / 35)),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: Get.width / 50),
                                            SizedBox(
                                              height: Get.height / 30,
                                              width: Get.width / 5,
                                              child: Container(
                                                width: Get.width / 2.5,
                                                height: Get.height / 25,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(Get.width / 60),
                                                  color: AppColor.ditalis_conatiner,
                                                ),
                                                child: Center(
                                                  child: Text('Salary', style: TextStyle(fontWeight: FontWeight.w600, fontSize: Get.width / 30)),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: Get.width / 50),
                                            SizedBox(
                                              height: Get.height / 30,
                                              width: Get.width / 5,
                                              child: Container(
                                                width: Get.width / 5,
                                                height: Get.height / 22,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(Get.width / 60),
                                                  color: AppColor.ditalis_conatiner,
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.symmetric(horizontal: Get.width / 30),
                                                  child: Center(
                                                    child: Text('WorkSet', style: TextStyle(fontWeight: FontWeight.w600, fontSize: Get.width / 33,)),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: Get.width / 50),
                                        Row(mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            Text('FormatDt',style: TextStyle(color: AppColor.subcolor)),
                                          ],
                                        )
                                      ],
                                    ),
                                  );
                                },
                              ),),
                            Container(
                              height: Get.height,
                              width: Get.width,
                              decoration: BoxDecoration(color: AppColor.Full_body_color),
                              child: ListView.builder(
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                itemCount: 3,
                                itemBuilder: (BuildContext context, int index) {
                                  return Container(
                                    height: Get.height / 3.8,
                                    width: Get.width,
                                    decoration: BoxDecoration(
                                      border: Border(
                                        top: BorderSide(color: AppColor.Bottam_color),
                                        bottom: BorderSide(color: Colors.transparent),
                                      ),
                                      color: AppColor.Full_body_color,
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.symmetric(vertical: Get.width / 40),
                                                  child: SvgPicture.asset(AppIcons.Layer_1),
                                                ),
                                                SizedBox(width: Get.width / 50),
                                                Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text('JobTitle', style: TextStyle(color: AppColor.subcolor)),
                                                    SizedBox(width: Get.width / 2,child: Text('TechName', style: TextStyle(fontSize: Get.width / 26,fontWeight: FontWeight.w600))),
                                                    Text('ComName', style: TextStyle(fontSize: Get.width / 26, fontWeight: FontWeight.w400,color: AppColor.Button_color)),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                // Get.to(()=> LiveJobsDitails());
                                              },
                                              child: SvgPicture.asset(AppIcons.Editing),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: Get.height / 50),
                                        Wrap(
                                          runSpacing: Get.height / 90,
                                          children: [
                                            SizedBox(
                                              height: Get.height / 30,
                                              width: Get.width / 5,
                                              child: Container(
                                                width: Get.width / 3.2,
                                                height: Get.height / 25,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(Get.width / 60),
                                                  color: AppColor.ditalis_conatiner,
                                                ),
                                                child: Center(
                                                  child: Text('JobType', style: TextStyle(fontWeight: FontWeight.w600, fontSize: Get.width / 30)),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: Get.width / 50),
                                            SizedBox(
                                              height: Get.height / 30,
                                              width: Get.width / 5,
                                              child: Container(
                                                width: Get.width / 7,
                                                height: Get.height / 25,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(Get.width / 60),
                                                  color: AppColor.ditalis_conatiner,
                                                ),
                                                child: Center(
                                                  child: Text('Location', style: TextStyle(fontWeight: FontWeight.w600, fontSize: Get.width / 30)),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: Get.width / 50),
                                            SizedBox(
                                              height: Get.height / 30,
                                              width: Get.width / 5,
                                              child: Container(
                                                width: Get.width / 5,
                                                height: Get.height / 25,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(Get.width / 60),
                                                  color: AppColor.ditalis_conatiner,
                                                ),
                                                child: Center(
                                                  child: Text('JobType', style: TextStyle(fontWeight: FontWeight.w600, fontSize: Get.width / 30)),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: Get.width / 50),
                                            SizedBox(
                                              height: Get.height / 30,
                                              width: Get.width / 5,
                                              child: Container(
                                                width: Get.width / 5,
                                                height: Get.height / 25,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(Get.width / 60),
                                                  color: AppColor.ditalis_conatiner,
                                                ),
                                                child: Center(
                                                  child: Text('Experience', style: TextStyle(fontWeight: FontWeight.w600, fontSize: Get.width / 35)),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: Get.width / 50),
                                            SizedBox(
                                              height: Get.height / 30,
                                              width: Get.width / 5,
                                              child: Container(
                                                width: Get.width / 2.5,
                                                height: Get.height / 25,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(Get.width / 60),
                                                  color: AppColor.ditalis_conatiner,
                                                ),
                                                child: Center(
                                                  child: Text('Salary', style: TextStyle(fontWeight: FontWeight.w600, fontSize: Get.width / 30)),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: Get.width / 50),
                                            SizedBox(
                                              height: Get.height / 30,
                                              width: Get.width / 5,
                                              child: Container(
                                                width: Get.width / 5,
                                                height: Get.height / 22,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(Get.width / 60),
                                                  color: AppColor.ditalis_conatiner,
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.symmetric(horizontal: Get.width / 30),
                                                  child: Center(
                                                    child: Text('WorkSet', style: TextStyle(fontWeight: FontWeight.w600, fontSize: Get.width / 33,)),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: Get.width / 50),
                                        Row(mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            Text('FormatDt',style: TextStyle(color: AppColor.subcolor)),
                                          ],
                                        )
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
