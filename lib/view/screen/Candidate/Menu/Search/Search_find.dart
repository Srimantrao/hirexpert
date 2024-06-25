// ignore_for_file: file_names, camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:hirexpert/controller/API_Cobtroller/Candidate/Menu/Search/Search_API_Controller.dart';
import 'package:hirexpert/controller/API_handler/Candidate/Menu/Search/Search_Hendal.dart';
import 'package:hirexpert/modal/Job/jobSearch_list.dart';
import 'package:hirexpert/view/utils/app_String.dart';
import 'package:hirexpert/view/utils/app_color.dart';
import 'package:hirexpert/view/utils/app_icon.dart';
import '../../../../../controller/API_Cobtroller/Candidate/Collction/Login/login_API_controller.dart';
import '../../../../utils/app_loder.dart';
import '../../../../utils/common/List/jobSearch.dart';
import '../../../../utils/common/Popup/Candidate/Search_Job(Conatiner).dart';
import 'Details_Search.dart';

class Search_find extends StatelessWidget {
  final String OnString;
  final SearchHendal Searchings = Get.put(SearchHendal());

  Search_find({super.key, required this.OnString});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: Get.height / 50),
          Searching(
            OnString: OnString,
          ),
          SizedBox(
            height: Get.height / 1.6,
            child: Obx(() {
              if (Searchings.Search.isLoding.value) {
                return Center(
                  child: Image.asset(AppLoder.infinityloder_without_background),
                );
              } else if (Searchings.Search.Search_data['data'] == null ||
                  Searchings.Search.Search_data == null) {
                return const Center(
                  child: Text(API_Error.null_data),
                );
              } else {
                return ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    if (index >= Searchings.Search.Search_data['data'].length ||
                        index >= Searchings.Search.Search_data['data'].length) {
                      return const SizedBox.shrink();
                    }
                    return InkWell(
                      onTap: () {
                        Get.to(
                          () => Details(
                            Icon: Searchings.Search.Search_data['data'][index]
                                ['ComLogo'],
                            Color_container: showjob[index]["Container_color"],
                            Job_Tital: Searchings.Search.Search_data['data']
                                [index]['JobTitle'],
                            Language: Searchings.Search.Search_data['data']
                                [index]['TechName'],
                            Commpany: Searchings.Search.Search_data['data']
                                [index]['ComName'],
                            Working: Searchings.Search.Search_data['data']
                                [index]["WorkWeek"],
                            Location: Searchings.Search.Search_data['data']
                                [index]["Location"],
                            Job_time: Searchings.Search.Search_data['data']
                                [index]['JobType'],
                            Exp: Searchings.Search.Search_data['data'][index]
                                ["Experience"],
                            lake: Searchings.Search.Search_data['data'][index]
                                ["Salary"],
                            Hybrid: Searchings.Search.Search_data['data'][index]
                                ["WorkSet"],
                            stats: Searchings.Search.Search_data['data'][index]
                                ["FormatDt"],
                          ),
                        );
                      },
                      child: JobSearch(
                        saveonTap: () {
                          Searchings.isSave(index);
                        },
                        savechild: (Searchings.isSeved[index])
                            ? SvgPicture.asset(AppIcons.bookmark)
                            : SvgPicture.asset(AppIcons.save),
                        top: BorderSide(
                          color: AppColor.Bottam_color,
                        ),
                        Icon: Searchings.Search.Search_data['data'][index]
                            ['ComLogo'],
                        Color_container: showjob[index]["Container_color"],
                        Job_Tital: Searchings.Search.Search_data['data'][index]
                            ['JobTitle'],
                        Language: Searchings.Search.Search_data['data'][index]
                            ['TechName'],
                        Commpany: Searchings.Search.Search_data['data'][index]
                            ['ComName'],
                        Working: Searchings.Search.Search_data['data'][index]
                            ["WorkWeek"],
                        Location: Searchings.Search.Search_data['data'][index]
                            ["Location"],
                        Job_time: Searchings.Search.Search_data['data'][index]
                            ['JobType'],
                        Exp: Searchings.Search.Search_data['data'][index]
                            ["Experience"],
                        lake: Searchings.Search.Search_data['data'][index]
                            ["Salary"],
                        Hybrid: Searchings.Search.Search_data['data'][index]
                            ["WorkSet"],
                        stats: Searchings.Search.Search_data['data'][index]
                            ["FormatDt"],
                      ),
                    );
                  },
                );
              }
            }),
          ),
        ],
      ),
    );
  }
}
