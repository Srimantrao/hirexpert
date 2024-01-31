// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:hirexpert/view/screen/Menu/Search/Search_location.dart';
import 'package:hirexpert/view/utils/app_color.dart';
import 'package:hirexpert/view/utils/app_icon.dart';
import 'package:provider/provider.dart';
import '../../../../controller/SearchScreenController/DropdownConroller.dart';
import '../../../../modal/Job/jobSearch_list.dart';
import '../../../utils/app_String.dart';
import '../../../utils/common/List/jobSearch.dart';
import 'Details_Search.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    final changDropdown = Provider.of<DropdownController>(context);
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: Get.height / 10,
        backgroundColor: AppColor.Full_body_color,
        automaticallyImplyLeading: false,
        title: const Text(
          Search_text.Search_Jobs,
          style: TextStyle(
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          InkWell(
            onTap: (){
              Get.to(()=>const Search_location());
            },
            child: Icon(
              Icons.search,
              color: AppColor.subcolor,
              size: 30,
            ),
          ),
          SizedBox(width: Get.width / 50),
          Icon(
            Icons.notifications_none,
            color: AppColor.subcolor,
            size: 30,
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
        child: Expanded(
          child: ListView.builder(
            itemCount: showjob.length,
            itemBuilder: (BuildContext context, int index) {
              return JobSearch(
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
                saveonTap: () {
                  saveshowjob.add(showjob);
                },
                top: BorderSide(
                  color: AppColor.Bottam_color,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
