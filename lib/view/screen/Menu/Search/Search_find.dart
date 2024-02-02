// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:hirexpert/modal/Job/jobSearch_list.dart';
import 'package:hirexpert/view/screen/Menu/Search/Details_Search.dart';
import 'package:hirexpert/view/utils/app_color.dart';
import 'package:hirexpert/view/utils/app_icon.dart';
import '../../../utils/app_String.dart';
import '../../../utils/common/Dropdown/Search_Job(Conatiner).dart';
import '../../../utils/common/List/jobSearch.dart';

class Search_find extends StatefulWidget {
  const Search_find({super.key});

  @override
  State<Search_find> createState() => _Search_findState();
}

class _Search_findState extends State<Search_find> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: Get.height / 10,
        backgroundColor: AppColor.Full_body_color,
        automaticallyImplyLeading: false,
        title: const Text(
          Search_text.Search_Jobss,
          style: TextStyle(
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          InkWell(
            onTap: () {
              Get.back();
            },
            child: Text(
              Search_text.cancel,
              style: TextStyle(
                color: AppColor.Error_color,
                fontWeight: FontWeight.w600,
                fontSize: Get.width / 23,
              ),
            ),
          ),
          SizedBox(width: Get.width / 40),
        ],
      ),
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(
          color: AppColor.Full_body_color,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Searching(),
            SizedBox(height: Get.height/150),
            Expanded(
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
                          saveicon: AppIcons.save,
                        ),
                      );
                    },
                    child: JobSearch(
                      saveonTap: () {
                        saveshowjob.add(showjob);
                      },
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
                      saveicon: AppIcons.save,
                      top: BorderSide(color: AppColor.Full_body_color),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
