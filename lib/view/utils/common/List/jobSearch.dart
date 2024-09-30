// ignore_for_file: non_constant_identifier_names, camel_case_types, file_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../app_color.dart';

class JobSearch extends StatelessWidget {
  String Icon;
  Color? Color_container;
  String Job_Tital;
  String Language;
  String Commpany;
  String Working;
  String Location;
  String Job_time;
  String Exp;
  String lake;
  String Hybrid;
  String stats;
  BorderSide top;
  BorderSide? bottam;
  void Function()? onTap;
  void Function()? saveonTap;
  Widget? savechild;

  JobSearch({
    super.key,
    required this.Icon,
    this.Color_container,
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

  bool isSeved = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width / 40),
      child: GestureDetector(
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width / 50),
          child: Container(
            height: size.height / 3.5,
            width: size.width,
            decoration: BoxDecoration(border: Border(top: top), color: AppColor.Full_body_color),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: size.width / 40),
                      child: Container(
                        width: size.width / 5.5,
                        height: size.height / 12,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(size.width / 30),
                          color: Color_container,
                          image: DecorationImage(image: NetworkImage(Icon), fit: BoxFit.fill),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        SizedBox(
                            width:size.width/1.6,
                            child: Text(Job_Tital, style: TextStyle(color: AppColor.subcolor))
                        ),
                        SizedBox(
                          width: Get.width / 1.6,
                          child: Text(Language, style: TextStyle(fontSize: size.width / 26, fontWeight: FontWeight.w600)),
                        ),
                        SizedBox(
                          width: Get.width/1.6,
                          child: Text(Commpany, style: TextStyle(fontSize: size.width / 26, fontWeight: FontWeight.w400, color: AppColor.Button_color)),
                        ),
                      ],
                    ),
                    GestureDetector(onTap: saveonTap, child: savechild),
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
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(size.width / 60), color: AppColor.ditalis_conatiner),
                          child: Center(
                            child: Text(Working, style: TextStyle(fontWeight: FontWeight.w600, fontSize: size.width / 30)),
                          ),
                        ),
                        SizedBox(width: size.width / 40),
                        Container(
                          width: size.width / 4,
                          height: size.height / 22,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(size.width / 60),
                            color: AppColor.ditalis_conatiner,
                          ),
                          child: Center(
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: Get.width / 30),
                              child: Text(Location, style: TextStyle(fontWeight: FontWeight.w600, fontSize: size.width / 30)),
                            ),
                          ),
                        ),
                        SizedBox(width: size.width / 40),
                        Container(
                          width: size.width / 5,
                          height: size.height / 25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(size.width / 60),
                            color: AppColor.ditalis_conatiner,
                          ),
                          child: Center(
                            child: Text(Job_time, style: TextStyle(fontWeight: FontWeight.w600, fontSize: size.width / 30)),
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
                            borderRadius: BorderRadius.circular(size.width / 60),
                            color: AppColor.ditalis_conatiner,
                          ),
                          child: Center(
                            child: Text(Exp, style: TextStyle(fontWeight: FontWeight.w600, fontSize: size.width / 35)),
                          ),
                        ),
                        SizedBox(width: size.width / 40),
                        Container(
                          width: size.width / 2.5,
                          height: size.height / 25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(size.width / 60),
                            color: AppColor.ditalis_conatiner,
                          ),
                          child: Center(
                            child: Text(lake, style: TextStyle(fontWeight: FontWeight.w600, fontSize: size.width / 30)),
                          ),
                        ),
                        SizedBox(width: size.width / 40),
                        Container(
                          width: size.width / 5,
                          height: size.height / 21,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(size.width / 60),
                            color: AppColor.ditalis_conatiner,
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: Get.width / 30),
                            child: Center(
                              child: Text(
                                textAlign: TextAlign.center, Hybrid, style: TextStyle(fontWeight: FontWeight.w600, fontSize: size.width / 30)),
                            ),
                          ),
                        ),
                        SizedBox(width: size.width / 40),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: size.height / 70),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(stats, style: TextStyle(color: AppColor.subcolor)),
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
