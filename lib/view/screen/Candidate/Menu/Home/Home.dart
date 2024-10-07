// ignore_for_file: file_names, non_constant_identifier_names, prefer_const_constructors, invalid_use_of_protected_member, prefer_const_constructors_in_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hirexpert/view/screen/Candidate/Menu/Home/saving/saved.dart';
import 'package:hirexpert/view/screen/Candidate/Menu/Search/Notification.dart';
import 'package:hirexpert/view/utils/app_String.dart';
import 'package:hirexpert/view/utils/app_color.dart';
import 'package:hirexpert/view/utils/app_icon.dart';
import 'package:hirexpert/view/utils/app_loder.dart';
import 'package:hirexpert/view/utils/common/Row/homerow.dart';
import '../../../../../controller/Save_Controller/Candidate_state/Menu/home/My_jobs/State_home.dart';
import 'Applied/Show_Applied.dart';
import 'Declined/Show_Declined.dart';
import 'Hired/Show_Hired.dart';
import 'Interviwe/Show_Interview.dart';
import 'Offer/Show_Offer.dart';

class Home extends StatelessWidget {
  HomeState_Controller home_state = Get.put(HomeState_Controller());
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    home_state.jobincount.jobcount.onInit();
    home_state.jobincount.onInit();
    home_state.onInit();
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: Get.height / 10,
        backgroundColor: AppColor.Full_body_color,
        automaticallyImplyLeading: false,
        title: Obx((){
          if(home_state.jobincount.jobcount.isLoding.value){
            return SizedBox();
          }else{
            return Text(My_Jobs_Screen.My_Jobs, style: TextStyle(fontWeight: FontWeight.w700));
          }
        }),
        actions: [
          Obx((){
            if(home_state.jobincount.jobcount.isLoding.value){
              return SizedBox();
            }else{
              return GestureDetector(
                onTap: () {
                  Get.to(() => Notification_Screen());
                },
                child: Icon(Icons.notifications),
              );
            }
          }),
          SizedBox(width: Get.width / 50),
        ],
      ),
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(color: AppColor.Full_body_color),
        child: Obx(() {
            if (home_state.jobincount.jobcount.isLoding.value) {
              return Center(child: Image.asset(AppLoder.infinityloder_without_background,scale: Get.width/250));
            } else if (home_state.jobincount.jobcount.data.value['data'] == null) {
              return Center(child: Text('Plese wait'));
            } else {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: Get.width / 30),
                child: Column(
                  children: [
                    //Saved
                    GestureDetector(
                      onTap: () {Get.to(() => Saved(),duration: Duration(milliseconds: 800),transition: Transition.leftToRight,curve: Curves.easeInExpo);},
                      child: Jobrow(
                        icon: AppIcons.Seeved,
                        name: My_Jobs_Screen.Saved,
                        child: CircleAvatar(
                          minRadius: 12,
                          child: Text(home_state.jobincount.jobcount.data.value['data']['savedJobCnt'].toString()),
                        ),
                      ),
                    ),

                    //Applied
                    GestureDetector(
                      onTap: () {Get.to(() => Show_Applied(),duration: Duration(milliseconds: 800),transition: Transition.leftToRight,curve: Curves.easeInExpo);},
                      child: Jobrow(
                        icon: AppIcons.Applid,
                        name: My_Jobs_Screen.Applied,
                        child: CircleAvatar(
                          minRadius: 12,
                          child: Text(home_state.jobincount.jobcount.data.value['data']['appliedJobCnt'].toString()),
                        ),
                      ),
                    ),

                    //Interviwe
                    GestureDetector(
                      onTap: () {Get.to(() => Show_Interviwe(),duration: Duration(milliseconds: 800),transition: Transition.leftToRight,curve: Curves.easeInExpo);},
                      child: Jobrow(
                        icon: AppIcons.seved,
                        name: My_Jobs_Screen.Interview,
                        child: CircleAvatar(
                          minRadius: 12,
                          child: Text(home_state.jobincount.jobcount.data.value['data']['interviewJobCnt'].toString()),
                        ),
                      ),
                    ),

                    //Offer
                    GestureDetector(
                      onTap: () {Get.to(() => Show_Offer(),duration: Duration(milliseconds: 800),transition: Transition.leftToRight,curve: Curves.easeInExpo);},
                      child: Jobrow(
                        icon: AppIcons.rupess,
                        name: My_Jobs_Screen.Offer,
                        child: CircleAvatar(
                          minRadius: 12,
                          child: Text(home_state.jobincount.jobcount.data.value['data']['offersJobCnt'].toString()),
                        ),
                      ),
                    ),

                    //Hired
                    GestureDetector(
                      onTap: () {Get.to(() => Show_Hired(),duration: Duration(milliseconds: 800),transition: Transition.leftToRight,curve: Curves.easeInExpo);},
                      child: Jobrow(
                        icon: AppIcons.Hired,
                        name: My_Jobs_Screen.Hired,
                        child: CircleAvatar(
                          minRadius: 12,
                          child: Text(home_state.jobincount.jobcount.data.value['data']['hiredJobCnt'].toString()),
                        ),
                      ),
                    ),

                    //Declined
                    GestureDetector(
                      onTap: () {Get.to(() => Show_Declined(),duration: Duration(milliseconds: 800),transition: Transition.leftToRight,curve: Curves.easeInExpo);},
                      child: Jobrow(
                        icon: AppIcons.Declind,
                        name: My_Jobs_Screen.Declined,
                        child: CircleAvatar(
                          minRadius: 12,
                          child: Text(home_state.jobincount.jobcount.data.value['data']['declinedJobCnt'].toString()),
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
