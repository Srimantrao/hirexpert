// ignore_for_file: non_constant_identifier_names, camel_case_types, file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../app_color.dart';
import '../../app_icon.dart';

class JobSearch extends StatefulWidget {
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
  final BorderSide top;
  final BorderSide? bottam;
  final void Function()? onTap;
  final void Function()? saveonTap;
  final Widget? savechild;

  const JobSearch({
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
    this.onTap,
    required this.top,
    this.saveonTap,
    this.bottam,
    this.savechild,
  });

  @override
  State<JobSearch> createState() => _JobSearchState();
}

class _JobSearchState extends State<JobSearch> {

  bool isSeved = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: size.width / 40,
      ),
      child: GestureDetector(
        onTap: widget.onTap,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: size.width / 50,
          ),
          child: Container(
            height: size.height / 3.8,
            width: size.width,
            decoration: BoxDecoration(
              border: Border(
                top: widget.top,
                bottom: widget.bottam ??
                    BorderSide(
                      color: AppColor.Full_body_color,
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
                          color: widget.Color_container,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: SvgPicture.asset(widget.Icon),
                        ),
                      ),
                    ),
                    SizedBox(width: size.width / 50),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              widget.Job_Tital,
                              style: TextStyle(
                                color: AppColor.subcolor,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          widget.Language,
                          style: TextStyle(
                            fontSize: size.width / 23,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          widget.Commpany,
                          style: TextStyle(
                            fontSize: size.width / 26,
                            fontWeight: FontWeight.w400,
                            color: AppColor.Button_color,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: size.width/7),
                    GestureDetector(
                      onTap: widget.saveonTap,
                      child: widget.savechild,
                    ),
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
                              widget.Working,
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
                              widget.Location,
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
                              widget.Job_time,
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
                              widget.Exp,
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
                              widget.lake,
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
                              widget.Hybrid,
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
                SizedBox(height: size.height/70),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      widget.stats,
                      style: TextStyle(
                        color: AppColor.subcolor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
