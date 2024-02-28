// ignore_for_file: file_names, camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:hirexpert/modal/Job/jobSearch_list.dart';
import 'package:hirexpert/view/utils/app_color.dart';
import 'package:hirexpert/view/utils/app_icon.dart';
import '../../../../utils/common/List/jobSearch.dart';
import '../../../../utils/common/Popup/Search_Job(Conatiner).dart';
import 'Details_Search.dart';


class Search_find extends StatefulWidget {
  final String OnString;

  const Search_find({super.key, required this.OnString});

  @override
  State<Search_find> createState() => _Search_findState();
}

class _Search_findState extends State<Search_find> {
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
              itemCount: showjob.length,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    Get.to(
                      () => Details(
                        Icon: showjob[index]["Icon"],
                        Color_container: showjob[index]["Container_color"],
                        Job_Tital: showjob[index]["Job_tital"],
                        Language: showjob[index]["Language"],
                        Commpany: showjob[index]["Company_name"],
                        Working: showjob[index]["Working"],
                        Location: showjob[index]["Location"],
                        Job_time: showjob[index]["job_time"],
                        Exp: showjob[index]["Exp"],
                        lake: showjob[index]["Sallary"],
                        Hybrid: showjob[index]["Hybrid"],
                        stats: showjob[index]["stats"],
                      ),
                    );
                  },
                  child: JobSearch(
                    saveonTap: () {
                      isSeved[index] = !isSeved[index];
                      setState(() {});
                      saveshowjob.add(showjob);
                    },
                    savechild: (isSeved[index])
                        ? SvgPicture.asset(AppIcons.bookmark)
                        : SvgPicture.asset(AppIcons.save),
                    top: BorderSide(
                      color: AppColor.Bottam_color,
                    ),
                    Icon: showjob[index]["Icon"],
                    Color_container: showjob[index]["Container_color"],
                    Job_Tital: showjob[index]["Job_tital"],
                    Language: showjob[index]["Language"],
                    Commpany: showjob[index]["Company_name"],
                    Working: showjob[index]["Working"],
                    Location: showjob[index]["Location"],
                    Job_time: showjob[index]["job_time"],
                    Exp: showjob[index]["Exp"],
                    lake: showjob[index]["Sallary"],
                    Hybrid: showjob[index]["Hybrid"],
                    stats: showjob[index]["stats"],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
