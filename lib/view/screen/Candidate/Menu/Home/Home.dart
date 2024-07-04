// ignore_for_file: file_names, non_constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hirexpert/controller/API_handler/Candidate/Menu/Home/JobCountabale_hedal.dart';
import 'package:hirexpert/view/screen/Candidate/Menu/Home/saving/saved.dart';
import 'package:hirexpert/view/screen/Candidate/Menu/Search/Notification.dart';
import 'package:hirexpert/view/utils/app_String.dart';
import 'package:hirexpert/view/utils/app_color.dart';
import 'package:hirexpert/view/utils/app_icon.dart';
import 'package:hirexpert/view/utils/app_loder.dart';
import 'package:hirexpert/view/utils/common/Row/homerow.dart';
import 'Applied/Show_Applied.dart';
import 'Declined/Show_Declined.dart';
import 'Hired/Show_Hired.dart';
import 'Interviwe/Show_Interview.dart';
import 'Offer/Show_Offer.dart';

class Home extends StatelessWidget {
  final JobcountabaleHedal jobincount = Get.put(JobcountabaleHedal());

  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: Get.height / 10,
        backgroundColor: AppColor.Full_body_color,
        automaticallyImplyLeading: false,
        title: Text(
          My_Jobs_Screen.My_Jobs,
          style: TextStyle(
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Get.to(() => Notification_Screen());
            },
            child: const Icon(Icons.notifications),
          ),
          SizedBox(width: Get.width / 50),
        ],
      ),
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(
          color: AppColor.Full_body_color,
        ),
        child: Obx(
          () {
            if (jobincount.jobcount.isLoding.value) {
              return Center(
                child: Image.asset(AppLoder.infinityloder_without_background),
              );
            } else {
              return Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: Get.width / 30,
                ),
                child: Column(
                  children: [
                    //Saved
                    GestureDetector(
                      onTap: () {
                        Get.to(
                          () => Saved(),
                        );
                      },
                      child: Jobrow(
                        icon: AppIcons.Seeved,
                        name: My_Jobs_Screen.Saved,
                        child: CircleAvatar(
                          minRadius: 12,
                          child: Text(
                            jobincount.jobcount.data['data']['savedJobCnt']
                                .toString(),
                          ),
                        ),
                      ),
                    ),

                    //Applied
                    GestureDetector(
                      onTap: () {
                        Get.to(() => Show_Applied());
                      },
                      child: Jobrow(
                        icon: AppIcons.Applid,
                        name: My_Jobs_Screen.Applied,
                        child: CircleAvatar(
                          minRadius: 12,
                          child: Text(
                            jobincount.jobcount.data['data']['appliedJobCnt']
                                .toString(),
                          ),
                        ),
                      ),
                    ),

                    //Interviwe
                    GestureDetector(
                      onTap: () {
                        Get.to(() => Show_Interviwe());
                      },
                      child: Jobrow(
                        icon: AppIcons.seved,
                        name: My_Jobs_Screen.Interview,
                        child: CircleAvatar(
                          minRadius: 12,
                          child: Text(
                            jobincount.jobcount.data['data']['interviewJobCnt']
                                .toString(),
                          ),
                        ),
                      ),
                    ),

                    //Offer
                    GestureDetector(
                      onTap: () {
                        Get.to(() => Show_Offer());
                      },
                      child: Jobrow(
                        icon: AppIcons.rupess,
                        name: My_Jobs_Screen.Offer,
                        child: CircleAvatar(
                          minRadius: 12,
                          child: Text(
                            jobincount.jobcount.data['data']['offersJobCnt']
                                .toString(),
                          ),
                        ),
                      ),
                    ),

                    //Hired
                    GestureDetector(
                      onTap: () {
                        Get.to(() => Show_Hired());
                      },
                      child: Jobrow(
                        icon: AppIcons.Hired,
                        name: My_Jobs_Screen.Hired,
                        child: CircleAvatar(
                          minRadius: 12,
                          child: Text(
                            jobincount.jobcount.data['data']['hiredJobCnt']
                                .toString(),
                          ),
                        ),
                      ),
                    ),

                    //Declined
                    GestureDetector(
                      onTap: () {
                        Get.to(() => Show_Declined());
                      },
                      child: Jobrow(
                        icon: AppIcons.Declind,
                        name: My_Jobs_Screen.Declined,
                        child: CircleAvatar(
                          minRadius: 12,
                          child: Text(
                            jobincount.jobcount.data['data']['declinedJobCnt']
                                .toString(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
