// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hirexpert/view/screen/Menu/Search/Details_Search.dart';
import '../../../../../modal/Job/jobSearch_list.dart';
import '../../../../utils/app_String.dart';
import '../../../../utils/app_color.dart';
import '../../../../utils/app_icon.dart';
import 'Details_Applid.dart';

class Show_Applied extends StatefulWidget {
  const Show_Applied({super.key});

  @override
  State<Show_Applied> createState() => _Show_AppliedState();
}

class _Show_AppliedState extends State<Show_Applied> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: size.height / 10,
        backgroundColor: AppColor.Full_body_color,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: const Text(
          My_Jobs_Screen.Applied,
          style: TextStyle(
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          const Icon(Icons.notifications),
          SizedBox(width: size.width / 50),
        ],
      ),
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
          color: AppColor.Full_body_color,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width / 30),
          child: ListView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            itemCount: appliedjob.length,
            itemBuilder: (BuildContext context, int index) {
              int itemCount = appliedjob.length ?? 0;
              int reversedIndex = itemCount - 1 - index;
              return GestureDetector(
                onTap: () {
                  Get.to(
                    () => Details_Appild(
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
                child: Container(
                  height: size.height / 3.8,
                  width: size.width,
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(
                        color: AppColor.Bottam_color,
                      ),
                      bottom: const BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                    color: AppColor.Full_body_color,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: size.width / 40,
                            ),
                            child: Container(
                              width: size.width / 5.5,
                              height: size.height / 12,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  size.width / 30,
                                ),
                                color: showjob[reversedIndex]
                                    ["Container_color"],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: SvgPicture.asset(
                                  showjob[reversedIndex]["Icon"],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: size.width / 50),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        showjob[reversedIndex]["Job_tital"],
                                        style: TextStyle(
                                          color: AppColor.subcolor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Text(
                                showjob[reversedIndex]["Language"],
                                style: TextStyle(
                                  fontSize: size.width / 23,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                showjob[reversedIndex]["Company_name"],
                                style: TextStyle(
                                  fontSize: size.width / 26,
                                  fontWeight: FontWeight.w400,
                                  color: AppColor.Button_color,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: size.width / 7),
                          SvgPicture.asset(AppIcons.bookmark),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: size.width / 3.2,
                                height: size.height / 25,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    size.width / 60,
                                  ),
                                  color: AppColor.ditalis_conatiner,
                                ),
                                child: Center(
                                  child: Text(
                                    showjob[reversedIndex]["Working"],
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: size.width / 30,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: size.width / 40),
                              Container(
                                width: size.width / 7,
                                height: size.height / 25,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    size.width / 60,
                                  ),
                                  color: AppColor.ditalis_conatiner,
                                ),
                                child: Center(
                                  child: Text(
                                    showjob[reversedIndex]["Location"],
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: size.width / 30,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: size.width / 40),
                              Container(
                                width: size.width / 5,
                                height: size.height / 25,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    size.width / 60,
                                  ),
                                  color: AppColor.ditalis_conatiner,
                                ),
                                child: Center(
                                  child: Text(
                                    showjob[reversedIndex]["job_time"],
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: size.width / 30,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: size.height / 80),
                          Row(
                            children: [
                              Container(
                                width: size.width / 5,
                                height: size.height / 25,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    size.width / 60,
                                  ),
                                  color: AppColor.ditalis_conatiner,
                                ),
                                child: Center(
                                  child: Text(
                                    showjob[reversedIndex]["Exp"],
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: size.width / 35,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: size.width / 40),
                              Container(
                                width: size.width / 2.5,
                                height: size.height / 25,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    size.width / 60,
                                  ),
                                  color: AppColor.ditalis_conatiner,
                                ),
                                child: Center(
                                  child: Text(
                                    showjob[reversedIndex]["Sallary"],
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: size.width / 30,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: size.width / 40),
                              Container(
                                width: size.width / 5,
                                height: size.height / 25,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    size.width / 60,
                                  ),
                                  color: AppColor.ditalis_conatiner,
                                ),
                                child: Center(
                                  child: Text(
                                    showjob[reversedIndex]["Hybrid"],
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: size.width / 30,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: size.width / 40),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: size.width / 50),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            showjob[reversedIndex]["stats"],
                            style: TextStyle(
                              color: AppColor.subcolor,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
