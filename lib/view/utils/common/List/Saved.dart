// ignore_for_file: file_names, camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../../modal/Job/jobSearch_list.dart';
import '../../../screen/Candidate/Menu/Search/Details_Search.dart';
import '../../app_color.dart';
import '../../app_icon.dart';

class Seved_List extends StatefulWidget {
  final String Icon;
  final Color Color_container;
  final String Job_Tital;
  final String Language;
  final String Commpany;
  final String Working;
  final String Location;
  final String Job_time;
  final String Exp;
  final String lake;
  final String Hybrid;
  final String stats;

  const Seved_List({
    super.key,
    required this.Icon,
    required this.Color_container,
    required this.Job_Tital,
    required this.Language,
    required this.Commpany,
    required this.Working,
    required this.Location,
    required this.Job_time,
    required this.Exp,
    required this.lake,
    required this.Hybrid,
    required this.stats,
  });

  @override
  State<Seved_List> createState() => _Seved_ListState();
}

class _Seved_ListState extends State<Seved_List> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Get.to(
          () => Details(
            Icon: widget.Icon,
            Color_container: widget.Color_container,
            Job_Tital: widget.Job_Tital,
            Language: widget.Language,
            Commpany: widget.Commpany,
            Working: widget.Working,
            Location: widget.Location,
            Job_time: widget.Job_time,
            Exp: widget.Exp,
            lake: widget.lake,
            Hybrid: widget.Hybrid,
            stats: widget.stats,
          ),
        );
      },
      child: ListView.builder(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        itemCount: saveshowjob.length,
        itemBuilder: (BuildContext context, int index) {
          int itemCount = saveshowjob.length ?? 0;
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
      ),
    );
  }
}
