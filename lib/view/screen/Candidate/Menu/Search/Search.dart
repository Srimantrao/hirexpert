// ignore_for_file: file_names, non_constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hirexpert/controller/API_Cobtroller/Candidate/Collction/Login/login_API_controller.dart';
import 'package:hirexpert/view/screen/Candidate/Menu/Search/Notification.dart';
import 'package:hirexpert/view/utils/app_color.dart';
import 'package:hirexpert/view/utils/app_icon.dart';
import '../../../../../controller/API_Cobtroller/Candidate/Menu/Search/Search_API_Controller.dart';
import '../../../../../modal/Job/jobSearch_list.dart';
import '../../../../utils/app_String.dart';
import '../../../../utils/app_loder.dart';
import '../../../../utils/common/List/jobSearch.dart';
import 'Details_Search.dart';
import 'Search_location.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  SearchApiController Search = Get.put(SearchApiController());
  OptionApiController Login = Get.put(OptionApiController());

  @override
  void initState() {
    Future.microtask(() async {
      if (Login.option_data['status'] == true) {
        await Search.SearchApiController_fuction(
          Timezone: 'asia/kolkata',
          CandidateId: Login.option_data['data']['UserDetails']['CandidateId'],
          Tokan: Login.option_data['data']['LoginToken'],
        );
      }
      setState(() {});
    });
    super.initState();
  }

  List<bool> isSeved = List.generate(showjob.length, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: Get.height / 10,
        backgroundColor: AppColor.Full_body_color,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: const Text(
          Search_text.Search_Jobs,
          style: TextStyle(
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          //Search
          GestureDetector(
            onTap: () {
              Get.to(() => const Search_location());
            },
            child: Icon(
              Icons.search,
              color: AppColor.subcolor,
              size: 30,
            ),
          ),
          SizedBox(width: Get.width / 50),

          //Notification
          GestureDetector(
            onTap: () {
              Get.to(() => Notification_Screen());
            },
            child: Icon(
              Icons.notifications_none,
              color: AppColor.subcolor,
              size: 30,
            ),
          ),
          SizedBox(width: Get.width / 50),
          Icon(
            Icons.more_vert,
            color: AppColor.subcolor,
            size: 30,
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
            if (Search.isLoding.value) {
              return  Center(
                child: Image.asset(AppLoder.infinityloder_without_background),
              );
            } else if (Search.Search_data == null) {
              return const Center(
                child: Text(API_Error.null_data),
              );
            } else {
              return ListView.builder(
                itemCount: Search.Search_data['data'].length,
                itemBuilder: (BuildContext context, int index) {
                  if (index >= showjob.length || index >= isSeved.length) {
                    return SizedBox.shrink();
                  }
                  return JobSearch(
                    onTap: () {
                      Get.to(
                        () => Details(
                          Icon: Search.Search_data['data'][index]['ComLogo'],
                          Color_container: showjob[index]["Container_color"],
                          Job_Tital: Search.Search_data['data'][index]
                              ['JobTitle'],
                          Language: Search.Search_data['data'][index]
                              ['TechName'],
                          Commpany: Search.Search_data['data'][index]
                              ['ComName'],
                          Working: Search.Search_data['data'][index]
                              ["WorkWeek"],
                          Location: Search.Search_data['data'][index]
                              ["Location"],
                          Job_time: Search.Search_data['data'][index]
                              ['JobType'],
                          Exp: Search.Search_data['data'][index]["Experience"],
                          lake: Search.Search_data['data'][index]["Salary"],
                          Hybrid: Search.Search_data['data'][index]["WorkSet"],
                          stats: Search.Search_data['data'][index]["FormatDt"],
                        ),
                      );
                    },
                    Icon: Search.Search_data['data'][index]['ComLogo'],
                    Color_container: showjob[index]["Container_color"],
                    Job_Tital: Search.Search_data['data'][index]['JobTitle'],
                    Language: Search.Search_data['data'][index]['TechName'],
                    Commpany: Search.Search_data['data'][index]['ComName'],
                    Working: Search.Search_data['data'][index]["WorkWeek"],
                    Location: Search.Search_data['data'][index]["Location"],
                    Job_time: Search.Search_data['data'][index]['JobType'],
                    Exp: Search.Search_data['data'][index]["Experience"],
                    lake: Search.Search_data['data'][index]["Salary"],
                    Hybrid: Search.Search_data['data'][index]["WorkSet"],
                    stats: Search.Search_data['data'][index]["FormatDt"],
                    saveonTap: () {
                      isSeved[index] = !isSeved[index];
                      setState(() {});
                      saveshowjob.add(Search.Search_data['data'][index]);
                    },
                    savechild: (isSeved[index])
                        ? SvgPicture.asset(AppIcons.bookmark)
                        : SvgPicture.asset(AppIcons.save),
                    top: BorderSide(
                      color: AppColor.Bottam_color,
                    ),
                  );
                },
              );
            }
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    Search.SearchApiController_fuction(
      Timezone: 'asia/kolkata',
      CandidateId: Login.option_data['data']['UserDetails']['CandidateId'],
      Tokan: Login.option_data['data']['LoginToken'],
    );
    super.dispose();
  }
}
