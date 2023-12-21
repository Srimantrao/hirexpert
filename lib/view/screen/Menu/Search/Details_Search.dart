// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hirexpert/view/utils/app_color.dart';
import 'package:hirexpert/view/utils/common/List/jobSearch.dart';
import '../../../utils/app_String.dart';

class Details extends StatefulWidget {
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
  final String saveicon;

  const Details({
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
    required this.saveicon,
  });

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(
          color: AppColor.Full_body_color,
        ),
        child: SafeArea(
          child: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  elevation: 0,
                  pinned: true,
                  collapsedHeight: Get.height / 4,
                  automaticallyImplyLeading: false,
                  flexibleSpace: SizedBox(
                    height: Get.height / 4,
                    child: JobSearch(
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
                      saveicon: widget.saveicon,
                      top: BorderSide(
                        color: AppColor.Full_body_color,
                      ),
                    ),
                  ),
                ),
              ];
            },
            body: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: Get.width / 50,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: Get.height / 60),
                  Text(
                    Details_texts.Job_Description,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: Get.width / 22,
                    ),
                  ),
                  SizedBox(height: Get.height / 60),
                  Text(
                    Details_texts.Description,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: Get.width / 25,
                      color: AppColor.subcolor,
                    ),
                  ),
                  SizedBox(height: Get.height / 60),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
