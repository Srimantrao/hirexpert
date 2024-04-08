// ignore_for_file: file_names, camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../modal/Job/jobSearch_list.dart';
import '../../app_color.dart';
import '../../app_icon.dart';

class Seved_List extends StatefulWidget {
  const Seved_List({
    super.key,
  });

  @override
  State<Seved_List> createState() => _Seved_ListState();
}

class _Seved_ListState extends State<Seved_List> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ListView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      itemCount: saveshowjob.length,
      itemBuilder: (BuildContext context, int index) {
        int itemCount = saveshowjob.length;
        int reversedIndex = itemCount - 1 - index;
        return Container(
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
                        color: showjob[reversedIndex]["Container_color"],
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
        );
      },
    );
  }
}
