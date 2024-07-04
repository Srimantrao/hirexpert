// ignore_for_file: file_names, non_constant_identifier_names, prefer_const_constructors, override_on_non_overriding_member, avoid_print, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hirexpert/controller/API_Cobtroller/Candidate/Collction/Login/login_API_controller.dart';
import 'package:hirexpert/controller/API_Cobtroller/Candidate/Menu/Home/Apply_now_Controller.dart';
import 'package:hirexpert/controller/API_handler/Candidate/Menu/Home/Details_API_Hendal.dart';
import 'package:hirexpert/modal/Job/jobSearch_list.dart';
import 'package:hirexpert/view/utils/app_color.dart';
import 'package:hirexpert/view/utils/app_loder.dart';
import 'package:hirexpert/view/utils/common/Buttons/wideButtons.dart';
import 'package:hirexpert/view/utils/common/List/jobSearch.dart';
import 'package:flutter_html/flutter_html.dart';
import '../../../../utils/app_String.dart';

class Details extends StatelessWidget {
  final OptionApiController login = Get.put(OptionApiController());
  final DetailsApiHendal Details_now = Get.put(DetailsApiHendal());
  final ApplyNowController Appling = Get.put(ApplyNowController());

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
  final Widget? saving;
  final void Function()? saveonTap;
  final bool? save;

  Details({
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
    this.saveonTap,
    this.save,
    this.saving,
  });

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
        title: Text(
          My_Jobs_Screen.Saved,
          style: TextStyle(
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          SizedBox(width: Get.width / 50),
        ],
      ),
      body: Obx(
        () {
          if (Details_now.Details.isLoding.value) {
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
          } else if (Details_now.Details.Details_data['data'] == null ||
              Details_now.Details.Details_data == null) {
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
            return Container(
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

                                //Description
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
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return Html(
                                        data: Details_now.Details
                                            .Details_data['data']['JobAbout'],
                                      );
                                    },
                                  ),
                                ),
                                SizedBox(height: Get.height / 60),
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
                              // appliedjob.add(showjob);

                              Appling.ApplynowController_fuction(
                                Candidate: login.option_data['data']
                                    ['UserDetails']['CandidateId'],
                                JobId: '10',
                                Company: '19',
                                Tokan: login.option_data['data']['LoginToken'],
                              );
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
            );
          }
        },
      ),
    );
  }
}
