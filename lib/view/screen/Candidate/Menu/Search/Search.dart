// ignore_for_file: file_names, non_constant_identifier_names, prefer_const_constructors, must_be_immutable, invalid_use_of_protected_member, avoid_print, prefer_const_constructors_in_immutables, override_on_non_overriding_member

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hirexpert/controller/API_Controller/Candidate/Collction/Login/login_API_controller.dart';
import 'package:hirexpert/controller/API_Controller/Candidate/Menu/Home/isFavration_Controllers.dart';
import 'package:hirexpert/view/screen/Candidate/Menu/Search/Notification.dart';
import 'package:hirexpert/view/utils/app_color.dart';
import 'package:hirexpert/view/utils/app_icon.dart';
import '../../../../../controller/Save_Controller/Candidate_state/Menu/Search/State_Search.dart';
import '../../../../utils/app_String.dart';
import '../../../../utils/app_loder.dart';
import '../../../../utils/common/List/jobSearch.dart';
import 'Applied_NotApplied/Details_Search.dart';
import 'Search_location.dart';

class Search extends StatefulWidget {

  Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final StateSearch_Controller stateSearchController = Get.put(StateSearch_Controller());

  final IsfavrationControllers isFavrationController = Get.put(IsfavrationControllers());

  final OptionApiController loginController = Get.put(OptionApiController());

  @override
  Widget build(BuildContext context) {
    stateSearchController.Searchings.Search.onInit();
    stateSearchController.Searchings.onInit();
    stateSearchController.onInit();

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: Get.height / 10,
        backgroundColor: AppColor.Full_body_color,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text(Search_text.Search_Jobs, style: TextStyle(fontWeight: FontWeight.w700)),
        actions: [
          // Search Button
          GestureDetector(
            onTap: () {
              Get.to(() => Search_location());
            },
            child: Icon(Icons.search, color: AppColor.subcolor, size: 30),
          ),
          SizedBox(width: Get.width / 50),

          // Notification Button
          GestureDetector(
            onTap: () {
              Get.to(() => Notification_Screen());
            },
            child: Icon(Icons.notifications_none, color: AppColor.subcolor, size: 30),
          ),
          SizedBox(width: Get.width / 50),

          // Popup Menu
          PopupMenuButton(
            color: AppColor.Full_body_color,
            onSelected: (value) { print(value); },
            itemBuilder: (BuildContext context) => <PopupMenuEntry>[
              PopupMenuItem(value: 1, child: Text('All')),
              PopupMenuItem(value: 2, child: Text('Last 7 Days')),
              PopupMenuItem(value: 3, child: Text('Last 30 Days')),
              PopupMenuItem(value: 4, child: Text('Last 6 Months')),
              PopupMenuItem(value: 5, child: Text('Last 1 Year')),
            ],
            child: Icon(Icons.more_vert, color: AppColor.subcolor, size: 30),
          ),
          SizedBox(width: Get.width / 50),
        ],
      ),
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(color: AppColor.Full_body_color),
        child: Obx(
              () {
            if (stateSearchController.Searchings.Search.isLoding.value) {
              return Center(child: Image.asset(AppLoder.infinityloder_without_background, scale: Get.width / 250));
            } else if (stateSearchController.Searchings.Search.Search_data.value['data'] == null) {
              return Center(child: Text(API_Error.nulll));
            } else {
              return ListView.builder(
                itemCount: stateSearchController.Searchings.Search.Search_data.value['data'].length,
                itemBuilder: (BuildContext context, int index) {
                  var jobData = stateSearchController.Searchings.Search.Search_data.value['data'][index];
                  var isFavourite = jobData['IsFavourite'] == "1";

                  return JobSearch(
                    onTap: () {
                      Get.to(() => Details(
                        Icon: jobData['ComLogo'],
                        Job_Tital: jobData['JobTitle'],
                        Language: jobData['TechName'],
                        Commpany: jobData['ComName'],
                        Working: jobData['WorkWeek'],
                        Location: jobData['Location'],
                        Job_time: jobData['JobType'],
                        Exp: jobData['Experience'],
                        lake: jobData['Salary'],
                        Hybrid: jobData['WorkSet'],
                        stats: jobData['FormatDt'],
                        saveonTap: () async {
                          var newIsLike = isFavourite ? "0" : "1";
                          await isFavrationController.IsfavrationControllers_fuction(
                            CandidateId: loginController.option_data['data']['UserDetails']['CandidateId'],
                            JobId: jobData['JobId'].toString(),
                            IsLike: newIsLike,
                            Tokan: loginController.option_data['data']['LoginToken'],
                          );

                          if (isFavrationController.isFavration.value.status) {
                            jobData['IsFavourite'] = newIsLike;
                            isFavourite = !isFavourite;
                            (context as Element).markNeedsBuild();
                          }
                          setState(() {});
                        },
                        saving: isFavourite ? SvgPicture.asset(AppIcons.bookmark) : SvgPicture.asset(AppIcons.save),
                      ));
                    },
                    Icon: jobData['ComLogo'],
                    Job_Tital: jobData['JobTitle'],
                    Language: jobData['TechName'],
                    Commpany: jobData['ComName'],
                    Working: jobData['WorkWeek'],
                    Location: jobData['Location'],
                    Job_time: jobData['JobType'],
                    Exp: jobData['Experience'],
                    lake: jobData['Salary'],
                    Hybrid: jobData['WorkSet'],
                    stats: jobData['FormatDt'],
                    saveonTap: () async {
                      var newIsLike = isFavourite ? "0" : "1";
                      await isFavrationController.IsfavrationControllers_fuction(
                        CandidateId: loginController.option_data['data']['UserDetails']['CandidateId'],
                        JobId: jobData['JobId'].toString(),
                        IsLike: newIsLike,
                        Tokan: loginController.option_data['data']['LoginToken'],
                      );

                      if (isFavrationController.isFavration.value.status) {
                        jobData['IsFavourite'] = newIsLike;
                        isFavourite = !isFavourite;
                        (context as Element).markNeedsBuild();
                      }
                      setState(() {});
                    },
                    savechild: isFavourite ? SvgPicture.asset(AppIcons.bookmark) : SvgPicture.asset(AppIcons.save),
                    top: BorderSide(color: AppColor.Bottam_color),
                  );
                },
              );
            }
          },
        ),
      ),
    );
  }
}