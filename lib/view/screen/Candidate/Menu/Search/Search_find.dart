// ignore_for_file: file_names, camel_case_types, non_constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hirexpert/controller/API_handler/Candidate/Menu/Search/Search_Hendal.dart';
import 'package:hirexpert/modal/Job/jobSearch_list.dart';
import 'package:hirexpert/view/utils/app_String.dart';
import 'package:hirexpert/view/utils/app_color.dart';
import 'package:hirexpert/view/utils/app_icon.dart';
import '../../../../utils/app_loder.dart';
import '../../../../utils/common/List/jobSearch.dart';
import '../../../../utils/common/Popup/Candidate/Search_Job(Conatiner).dart';
import 'Details_Search.dart';

class Search_find extends StatelessWidget {
  final String onString;
  final SearchHendal searchHandler = Get.put(SearchHendal());

  Search_find({super.key, required this.onString});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: Get.height / 50),
          Searching(OnString: onString),
          SizedBox(
            height: Get.height / 1.6,
            child: Obx(() {
              if (searchHandler.Search.isLoding.value) {
                return Center(
                  child: Image.asset(AppLoder.infinityloder_without_background),
                );
              } else if (searchHandler.Search.Search_data == null ||
                  searchHandler.Search.Search_data['data'] == null) {
                return Center(
                  child: Text(API_Error.null_data),
                );
              } else {
                return ListView.builder(
                  itemCount: searchHandler.Search.Search_data['data'].length,
                  itemBuilder: (BuildContext context, int index) {
                    final jobData = searchHandler.Search.Search_data['data'][index];
                    final jobColor = showjob[index]["Container_color"];
                    return InkWell(
                      onTap: () {
                        Get.to(
                          () => Details(
                            Icon: jobData['ComLogo'],
                            Color_container: jobColor,
                            Job_Tital: jobData['JobTitle'],
                            Language: jobData['TechName'],
                            Commpany: jobData['ComName'],
                            Working: jobData["WorkWeek"],
                            Location: jobData["Location"],
                            Job_time: jobData['JobType'],
                            Exp: jobData["Experience"],
                            lake: jobData["Salary"],
                            Hybrid: jobData["WorkSet"],
                            stats: jobData["FormatDt"],
                          ),
                        );
                      },
                      child: JobSearch(
                        saveonTap: () {
                          searchHandler.isSave(index);
                        },
                        savechild: (searchHandler.isSeved[index])
                            ? SvgPicture.asset(AppIcons.bookmark)
                            : SvgPicture.asset(AppIcons.save),
                        top: BorderSide(color: AppColor.Bottam_color),
                        Icon: jobData['ComLogo'],
                        Color_container: jobColor,
                        Job_Tital: jobData['JobTitle'],
                        Language: jobData['TechName'],
                        Commpany: jobData['ComName'],
                        Working: jobData["WorkWeek"],
                        Location: jobData["Location"],
                        Job_time: jobData['JobType'],
                        Exp: jobData["Experience"],
                        lake: jobData["Salary"],
                        Hybrid: jobData["WorkSet"],
                        stats: jobData["FormatDt"],
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
