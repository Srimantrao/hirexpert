// ignore_for_file: file_names, non_constant_identifier_names, prefer_const_constructors, must_be_immutable, invalid_use_of_protected_member, avoid_print, prefer_const_constructors_in_immutables, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hirexpert/controller/API_Controller/Candidate/Collction/Login/login_API_controller.dart';
import 'package:hirexpert/controller/API_Controller/Candidate/Menu/Home/isFavration_Controllers.dart';
import 'package:hirexpert/controller/API_Controller/Candidate/Menu/Search/Search_API_Controller.dart';
import 'package:hirexpert/controller/API_handler/Candidate/Menu/Search/Search_Hendal.dart';
import 'package:hirexpert/view/screen/Candidate/Menu/Search/Notification.dart';
import 'package:hirexpert/view/utils/app_color.dart';
import 'package:hirexpert/view/utils/app_icon.dart';
import '../../../../utils/app_String.dart';
import '../../../../utils/app_loder.dart';
import '../../../../utils/common/List/jobSearch.dart';
import 'Applied_NotApplied/Details_Search.dart';
import 'Search_location.dart';

class Search extends StatelessWidget {
  Search({super.key});
  final SearchHendal Searchings = Get.put(SearchHendal());
  final IsfavrationControllers isfavication = Get.put(IsfavrationControllers());
  final OptionApiController login = Get.put(OptionApiController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: Get.height / 10,
        backgroundColor: AppColor.Full_body_color,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text(Search_text.Search_Jobs, style: TextStyle(fontWeight: FontWeight.w700)),
        actions: [
          //Search
          GestureDetector(
            onTap: () {
              Get.to(() => Search_location());
            },
            child: Icon(Icons.search, color: AppColor.subcolor, size: 30),
          ),
          SizedBox(width: Get.width / 50),

          //Notification
          GestureDetector(
            onTap: () {
              Get.to(() => Notification_Screen());
            },
            child: Icon(Icons.notifications_none, color: AppColor.subcolor, size: 30),
          ),
          SizedBox(width: Get.width / 50),
          PopupMenuButton(
              color: AppColor.Full_body_color,
              onSelected: (value) {
                print(value);
              },
              itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                    PopupMenuItem(value: 1, child: Text('All')),
                    PopupMenuItem(value: 2, child: Text('Last 7 Days')),
                    PopupMenuItem(value: 3, child: Text('Last 30 Days')),
                    PopupMenuItem(value: 3, child: Text('Last 6 Months')),
                    PopupMenuItem(value: 3, child: Text('Last 1 Year')),
                  ],
              child: Icon(Icons.more_vert, color: AppColor.subcolor, size: 30)
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
            if (Searchings.Search.isLoding.value) {
              return Center(
                child: Image.asset(AppLoder.infinityloder_without_background),
              );
            } else if (Searchings.Search.Search_data['data'] == null) {
              return Center(
                child: Text(API_Error.nulll),
              );
            } else {
              return ListView.builder(
                itemCount:Searchings.Search.Search_data['data'].length,
                itemBuilder: (BuildContext context, int index) {
                  if (index >= Searchings.Search.Search_data['data'].length || index >= Searchings.Search.Search_data['data'].length) {
                    return SizedBox.shrink();
                  }
                  var jobData = Searchings.Search.Search_data['data'][index];
                  var isFavourite = jobData['IsFavourite'] == "1";
                  return JobSearch(
                    onTap: () {
                      Get.to(
                        () => Details(
                          Icon: Searchings.Search.Search_data['data'][index]['ComLogo'],
                          Job_Tital:Searchings.Search.Search_data['data'][index]['JobTitle'],
                          Language:Searchings.Search.Search_data['data'][index]['TechName'],
                          Commpany: Searchings.Search.Search_data['data'][index]['ComName'],
                          Working: Searchings.Search.Search_data['data'][index]['WorkSet'],
                          Location: Searchings.Search.Search_data['data'][index]['Location'],
                          Job_time: Searchings.Search.Search_data['data'][index]['JobType'],
                          Exp: Searchings.Search.Search_data['data'][index]['Experience'],
                          lake: Searchings.Search.Search_data['data'][index]['Salary'],
                          Hybrid: Searchings.Search.Search_data['data'][index]['WorkSet'],
                          stats: Searchings.Search.Search_data['data'][index]['FormatDt'],
                          saveonTap: () async {
                            var newIsLike = isFavourite ? "0" : "1";
                            await isfavication.IsfavrationControllers_fuction(
                              CandidateId: login.option_data['data']['UserDetails']['CandidateId'],
                              JobId: '10',
                              IsLike: newIsLike,
                              Tokan: login.option_data['data']['LoginToken'],
                            );
                            if (isfavication.isFavration.value.status) {
                              jobData['IsFavourite'] = newIsLike;
                              isFavourite = !isFavourite;
                              (context as Element).markNeedsBuild();
                            }
                          },
                          saving: isFavourite
                              ? SvgPicture.asset(AppIcons.bookmark)
                              : SvgPicture.asset(AppIcons.save),
                        ),
                      );
                    },
                    Icon: Searchings.Search.Search_data['data'][index]['ComLogo'],
                    Job_Tital: Searchings.Search.Search_data['data'][index]['JobTitle'],
                    Language:Searchings.Search.Search_data['data'][index]['TechName'],
                    Commpany: Searchings.Search.Search_data['data'][index]['ComName'],
                    Working: Searchings.Search.Search_data['data'][index]['WorkSet'],
                    Location: Searchings.Search.Search_data['data'][index]['Location'],
                    Job_time: Searchings.Search.Search_data['data'][index]['JobType'],
                    Exp: Searchings.Search.Search_data['data'][index]['Experience'],
                    lake:Searchings.Search.Search_data['data'][index]['Salary'],
                    Hybrid: Searchings.Search.Search_data['data'][index]['WorkSet'],
                    stats: Searchings.Search.Search_data['data'][index]['FormatDt'],
                    saveonTap: () async {
                      var newIsLike = isFavourite ? "0" : "1";
                      await isfavication.IsfavrationControllers_fuction(
                        CandidateId: login.option_data['data']['UserDetails']['CandidateId'],
                        JobId: '10',
                        IsLike: newIsLike,
                        Tokan: login.option_data['data']['LoginToken'],
                      );
                      if (isfavication.isFavration.value.status) {
                        jobData['IsFavourite'] = newIsLike;
                        isFavourite = !isFavourite;
                        (context as Element).markNeedsBuild();
                      }
                    },
                    savechild: isFavourite
                        ? SvgPicture.asset(AppIcons.bookmark)
                        : SvgPicture.asset(AppIcons.save),
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