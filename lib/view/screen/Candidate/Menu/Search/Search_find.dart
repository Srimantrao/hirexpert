// ignore_for_file: file_names, camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:hirexpert/controller/API_Cobtroller/Candidate/Menu/Search/Search_API_Controller.dart';
import 'package:hirexpert/modal/Job/jobSearch_list.dart';
import 'package:hirexpert/view/utils/app_color.dart';
import 'package:hirexpert/view/utils/app_icon.dart';
import '../../../../utils/common/List/jobSearch.dart';
import '../../../../utils/common/Popup/Candidate/Search_Job(Conatiner).dart';
import 'Details_Search.dart';

class Search_find extends StatefulWidget {
  final String OnString;

  const Search_find({super.key, required this.OnString});

  @override
  State<Search_find> createState() => _Search_findState();
}

class _Search_findState extends State<Search_find> {
  SearchApiController Search = Get.put(SearchApiController());

  @override
  void initState() {
    Future.microtask(() async {
      await Search.SearchApiController_fuction(
        Timezone: 'asia/kolkata',
        CandidateId: '61',
      );
    });
    super.initState();
  }

  List<bool> isSeved = List.generate(showjob.length, (index) => false);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: Get.height / 50),
          Searching(
            OnString: widget.OnString,
          ),
          SizedBox(
            height: Get.height / 1.6,
            child: ListView.builder(
              itemCount: Search.Search_data['data'].length,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
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
                  child: JobSearch(
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
            ),
          ),
        ],
      ),
    );
  }
  @override
  void dispose() {
    Search.SearchApiController_fuction(
      Timezone: 'asia/kolkata',
      CandidateId: '61',
    );
    super.dispose();
  }
}
