// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
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
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(
          Get.height / 4.3,
        ),
        child: Container(
          height: Get.height / 4.3,
          width: Get.width,
          decoration: BoxDecoration(
            color: AppColor.Full_body_color,
          ),
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: Get.width / 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        Search_text.Search_Jobs,
                        style: TextStyle(
                          fontSize: Get.width / 22,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const Icon(Icons.notifications),
                    ],
                  ),
                  SizedBox(height: Get.height / 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(Get.width / 40),
                          border: Border.all(
                            color: AppColor.Bottam_color,
                          ),
                        ),
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: Get.width / 40),
                          child: Consumer<DropdownController>(
                            builder: (BuildContext context,
                                DropdownController value, Widget? child) {
                              return DropdownButton<String>(
                                underline: const SizedBox(),
                                borderRadius:
                                    BorderRadius.circular(Get.width / 20),
                                value: changDropdown.dropdownvalue,
                                items: <String>[
                                  DropDownMenu_String.Gujarat,
                                  DropDownMenu_String.Maharastrya,
                                  DropDownMenu_String.Aandra_pradesh,
                                  DropDownMenu_String.Madhya_pradesh,
                                  DropDownMenu_String.Goa,
                                  DropDownMenu_String.Karnatak,
                                  DropDownMenu_String.Telgana,
                                  DropDownMenu_String.Kasmir,
                                  DropDownMenu_String.Panjab,
                                  DropDownMenu_String.Hedrabadh,
                                  DropDownMenu_String.Bihar,
                                  DropDownMenu_String.Banaras,
                                  DropDownMenu_String.kashi,
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (value) {
                                  changDropdown.Changedopdown_fun(value);
                                },
                              );
                            },
                          ),
                        ),
                      ),
                      Container(
                        height: Get.height / 17,
                        width: Get.width / 2,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColor.Bottam_color,
                          ),
                          borderRadius: BorderRadius.circular(Get.width / 40),
                          color: AppColor.Full_body_color,
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: Get.width / 30,
                          ),
                          child: TextField(
                            style: TextStyle(
                              fontSize: Get.width / 30,
                            ),
                            decoration: InputDecoration(
                              suffixIcon: Icon(
                                Icons.search,
                                color: AppColor.subcolor,
                              ),
                              hintStyle: TextStyle(fontSize: Get.width / 30),
                              hintText: Search_text.Job,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: Get.height / 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        Search_text.Listing,
                        style: TextStyle(
                          fontSize: Get.width / 22,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Container(
                        height: Get.height / 20,
                        width: Get.width / 3,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            Get.width / 40,
                          ),
                          color: AppColor.Bottam_color,
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: Get.width / 40,
                          ),
                          child: Center(
                            child: Consumer<DropdownController>(
                              builder:
                                  (BuildContext context, value, Widget? child) {
                                return DropdownButton<String>(
                                  underline: const SizedBox(),
                                  borderRadius: BorderRadius.circular(
                                    Get.width / 20,
                                  ),
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: Get.width / 30,
                                    color: AppColor.black_all,
                                  ),
                                  value: changDropdown.dropdownvaluesecond,
                                  items: <String>[
                                    DropDownMenu_String.all,
                                    DropDownMenu_String.seven,
                                    DropDownMenu_String.mothe,
                                    DropDownMenu_String.tharty,
                                    DropDownMenu_String.one,
                                  ].map<DropdownMenuItem<String>>(
                                      (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                  onChanged: (value) {
                                    changDropdown.Changedopdown_second(value);
                                  },
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
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
                saveonTap: (){
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
