// ignore_for_file: non_constant_identifier_names, camel_case_types, prefer_const_constructors_in_immutables, prefer_const_constructors, invalid_use_of_protected_member, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hirexpert/controller/API_handler/Candidate/collection/specialization.dart';
import 'package:hirexpert/controller/User_Controller/Candidate_Controller/SignupController/SinupController.dart';
import 'package:hirexpert/view/utils/aap_image.dart';
import 'package:hirexpert/view/utils/app_String.dart';
import 'package:hirexpert/view/utils/app_color.dart';
import 'package:hirexpert/view/utils/app_constance.dart';
import 'package:hirexpert/view/utils/app_loder.dart';
import 'package:provider/provider.dart';
import '../../../../controller/User_Controller/Candidate_Controller/AnimationControllers/AnimationControllers.dart';
import '../../../../controller/User_Controller/Candidate_Controller/DropdownController/SpecializationController.dart';
import '../../../utils/common/showpop/showdialog.dart';
import '../../../utils/logic/next_thow.dart';
import 'collection.dart';

class Candidate_Specialization extends StatelessWidget {
  final Specializations Specialization = Get.put(Specializations());
  final String? first_name;
  final String? last_name;

  Candidate_Specialization({super.key, this.first_name, this.last_name,});

  @override
  Widget build(BuildContext context) {
    final Specializations = Provider.of<Specializationcontroller>(context, listen: false);
    return Obx(() {
      if (Specialization.candidate.isLoding.value) {
        return Scaffold(
          body: Container(
            height: Get.height,
            width: Get.width,
            decoration: BoxDecoration(color: AppColor.Full_body_color),
            child: Center(
              child: Image.asset(AppLoder.infinityloder_without_background,scale: Get.width/250),
            ),
          ),
        );
      } else if (Specialization.candidate.Candidatetech_data.value['data'] == null) {
        return Scaffold(
          body: Container(
            height: Get.height,
            width: Get.width,
            decoration: BoxDecoration(color: AppColor.Full_body_color),
            child: Center(
              child: Text("Please Wait !", style: TextStyle(fontSize: Get.width / 25)),
            ),
          ),
        );
      } else {
        return Consumer<Specializationcontroller>(
          builder: (BuildContext context, value, Widget? child) {
            return Scaffold(
              bottomNavigationBar: Container(
                width: Get.width,
                height: Get.height / 15,
                decoration: BoxDecoration(color: AppColor.Full_body_color),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: Get.width / 20),
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        if (Specializations.jobdescirbe && Specializations.specialzation) {
                          Get.to(() => Collection(first_name: first_name, last_name: last_name),transition: Transition.rightToLeft,duration: Duration(seconds: 1),curve: Curves.fastLinearToSlowEaseIn);
                        }
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          NextThow(text: Navigator_text.Next, fontweight: Specializations.jobdescirbe && Specializations.specialzation, fontcolor: Specializations.jobdescirbe && Specializations.specialzation),
                          SizedBox(width: Get.width / 80),
                          NextArrow(arrowcolor: Specializations.jobdescirbe && Specializations.specialzation)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              body: Container(
                height: Get.height,
                width: Get.width,
                decoration: BoxDecoration(color: AppColor.Full_body_color),
                child: SafeArea(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: Get.width / 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: Get.height / 50),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [Image.asset(AppImage.profile, scale: 5)],
                        ),
                        Consumer<Candidate_SinupController>(
                          builder: (BuildContext context, value, Widget? child) {
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(first_name ?? '', style: TextStyle(fontSize: Get.width / 25)),
                                SizedBox(width: Get.width / 80),
                                Text(last_name ?? '', style: TextStyle(fontSize: Get.width / 25)),
                              ],
                            );
                          },
                        ),
                        SizedBox(height: Get.height / 20),
                        GetBuilder<Animationcontrollers>(
                          builder: (_) {
                            return TweenAnimationBuilder(
                              tween: Tween<double>(begin: 0, end: 1),
                              duration: Duration(seconds: 1),
                              builder: (BuildContext context, double value, Widget? child) {
                                return Opacity(
                                  opacity: value,
                                  child: SlideTransition(
                                    position: Tween<Offset>(begin: Offset(0.0, 1.0), end: Offset.zero).animate(Specialization.Animations.animationController),
                                    child: FadeTransition(
                                      opacity: Specialization.Animations.opacityAnimations,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          //Which of these most closely describe your Job ?
                                          Text(
                                            Specialization.job.Describeyourjob_data['message'],
                                            style: TextStyle(fontSize: Get.width / 26,color: AppColor.subcolor),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              Showdialog.showdialod(
                                                height: Get.width / 1,
                                                context: context,
                                                colamWidget: SizedBox(
                                                  height: Get.width / 1,
                                                  child: ListView.builder(
                                                    itemCount: Specialization.job.Describeyourjob_data['data'].length,
                                                    itemBuilder: (BuildContext context, int index) {
                                                      final jobdata = Specialization.job.Describeyourjob_data['data'][index];
                                                      return Column(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          GestureDetector(
                                                            child: Text(
                                                              jobdata['TechCaption'],
                                                              style: TextStyle(fontSize: Get.width / 28),
                                                            ),
                                                            onTap: () {
                                                              Specializations.Specializationcontroller_fuction(
                                                                text: jobdata['TechCaption'],
                                                                id: jobdata['TechId'],
                                                              );
                                                              Specialization.candidate.Candidatetech_fuctions(
                                                                CandidateId: Candidate,
                                                                TechId: TechId,
                                                                Timezone: 'asia/kolkata',
                                                              );
                                                            },
                                                          ),
                                                          SizedBox(height: Get.height / 50),
                                                        ],
                                                      );
                                                    },
                                                  ),
                                                ),
                                                hedingtext: Specialization_text.area,
                                                onTabs: () {
                                                  Get.back();
                                                },
                                              );
                                            },
                                            child: Pop_Container(
                                              text: Specialization_text.area,
                                              text2: Specializations.jobdescirbe_String,
                                              condition: Specializations.jobdescirbe,
                                            ),
                                          ),
                                          SizedBox(height: Get.height / 30),

                                          (Specialization.candidate.Candidatetech_data['code'] == 1)
                                              ? Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      Specialization.candidate.Candidatetech_data['data']['Question'],
                                                      style: TextStyle(fontSize: Get.width / 26,color: AppColor.subcolor),
                                                    ),
                                                    GestureDetector(
                                                      onTap: () {
                                                        Showdialog.showdialod(
                                                            height: Get.width / 1,
                                                            context: context,
                                                            colamWidget: SizedBox(height: Get.width / 1,
                                                              child: ListView.builder(
                                                                itemCount: Specialization.candidate.Candidatetech_data['data'].length,
                                                                itemBuilder: (BuildContextcontext, int index) {
                                                                  final
                                                                  Jobtypes = Specialization.candidate.Candidatetech_data['data']['OptionList'][index];
                                                                  return Column(
                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                    children: [
                                                                      GestureDetector(
                                                                        child: Text(Jobtypes['QueAnswer'],
                                                                          style: TextStyle(fontSize: Get.width / 28),
                                                                        ),
                                                                        onTap: () {
                                                                          Specializations.SpecializationController_Skillset(text: Jobtypes['QueAnswer'],id: Jobtypes['QuestionId']);
                                                                        },
                                                                      ),
                                                                      SizedBox(height: Get.height / 50),
                                                                    ],
                                                                  );
                                                                },
                                                              ),
                                                            ),
                                                            hedingtext: Specialization_text.interest,
                                                            onTabs: () {Get.back();});
                                                      },
                                                      child: Pop_Container(
                                                        text: Specialization_text.interest,
                                                        condition: Specializations.specialzation,
                                                        text2: Specializations.specialzation_String,
                                                      ),
                                                    ),
                                                  ],
                                                )
                                              : SizedBox(),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        );
      }
    });
  }
}
