// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'package:hirexpert/view/screen/collection/location.dart';
import 'package:hirexpert/view/utils/app_color.dart';
import 'package:hirexpert/view/utils/app_icon.dart';
import 'package:provider/provider.dart';
import '../../../controller/DropdownController/FresherController.dart';
import '../../utils/aap_image.dart';
import '../../utils/app_String.dart';
import '../../utils/common/Dropdown/fresher_comm.dart';

class Fresher extends StatefulWidget {
  const Fresher({super.key});

  @override
  State<Fresher> createState() => _FresherState();
}

class _FresherState extends State<Fresher> {
  @override
  Widget build(BuildContext context) {
    final E_Salary = Provider.of<FreherController>(
      context,
      listen: false,
    );
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(
          color: AppColor.Full_body_color,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Get.width / 30),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: Get.height / 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(AppImage.profile, scale: 5),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("HI", style: TextStyle(fontSize: Get.width / 25)),
                    Text("HI", style: TextStyle(fontSize: Get.width / 25)),
                    Text("HI", style: TextStyle(fontSize: Get.width / 25)),
                  ],
                ),
                SizedBox(height: Get.height / 20),

                //Fresher
                Consumer<FreherController>(
                  builder: (BuildContext context, value, Widget? child) {
                    return Container(
                      height: Get.height / 25,
                      width: Get.width,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: AppColor.Bottam_color),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            Experience_text.IM,
                            style: TextStyle(
                              fontSize: Get.width / 25,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(6),
                            child: FlutterSwitch(
                              activeColor: AppColor.Button_color,
                              padding: 2,
                              width: Get.width / 9,
                              value: E_Salary.Visible,
                              onToggle: (newvalue) {
                                E_Salary.Visible_fun();
                              },
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
                SizedBox(height: Get.height / 50),

                //Experience
                Consumer<FreherController>(
                  builder: (BuildContext context, value, Widget? child) {
                    return Visibility(
                      visible: E_Salary.Visible,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            Experience_text.experience,
                            style: TextStyle(
                              color: AppColor.subcolor,
                              fontSize: Get.width / 25,
                            ),
                          ),
                          const Experience(),
                        ],
                      ),
                    );
                  },
                ),
                SizedBox(height: Get.height / 50),

                //Per Anum
                Text(
                  Experience_text.current,
                  style: TextStyle(
                    color: AppColor.subcolor,
                    fontSize: Get.width / 25,
                  ),
                ),
                const Salary(),
                SizedBox(height: Get.height / 50),

                Consumer<FreherController>(
                  builder: (BuildContext context, value, Widget? child) {
                    return Visibility(
                      visible: E_Salary.Visible,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            Experience_text.company,
                            style: TextStyle(
                              fontSize: Get.width / 24,
                            ),
                          ),
                          SizedBox(height: Get.height / 50),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        Experience_text.Company_Name,
                                        style: TextStyle(
                                          color: AppColor.subcolor,
                                          fontSize: Get.width / 24,
                                        ),
                                      ),
                                      SizedBox(
                                        width: Get.width / 2.5,
                                        child: TextField(
                                          decoration: InputDecoration(
                                            enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: AppColor.Bottam_color,
                                              ),
                                            ),
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: AppColor.Bottam_color,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        Experience_text.Designation,
                                        style: TextStyle(
                                          color: AppColor.subcolor,
                                          fontSize: Get.width / 24,
                                        ),
                                      ),
                                      SizedBox(
                                        width: Get.width / 2.5,
                                        child: TextField(
                                          decoration: InputDecoration(
                                            enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: AppColor.Bottam_color,
                                              ),
                                            ),
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: AppColor.Bottam_color,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: Get.height / 50),
                          Text(
                            Experience_text.Duration,
                            style: TextStyle(
                              fontSize: Get.width / 24,
                              color: AppColor.subcolor,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: Get.width / 2.5,
                                child: Container(
                                  width: Get.width / 2.5,
                                  height: Get.height / 18,
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        color: AppColor.Bottam_color,
                                      ),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'dd/mm/yyyy',
                                        style: TextStyle(
                                          fontSize: Get.width / 26,
                                        ),
                                      ),
                                      Icon(
                                        Icons.calendar_month_sharp,
                                        color: AppColor.subcolor,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: Get.width / 2.5,
                                child: Container(
                                  width: Get.width / 2.5,
                                  height: Get.height / 18,
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        color: AppColor.Bottam_color,
                                      ),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'dd/mm/yyyy',
                                        style: TextStyle(
                                          fontSize: Get.width / 26,
                                        ),
                                      ),
                                      Icon(
                                        Icons.calendar_month_sharp,
                                        color: AppColor.subcolor,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: Get.height / 50),
                          Row(
                            children: [
                              Checkbox(
                                  value: E_Salary.valuecheck,
                                  onChanged: (newvalue) {
                                    E_Salary.valuecheck_fun(newvalue);
                                  }),
                              Text(
                                Experience_text.currently,
                                style: TextStyle(
                                  fontSize: Get.width / 24,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: Get.height / 50),
                          Text(
                            Experience_text.ctc,
                            style: TextStyle(
                              fontSize: Get.width / 23,
                              color: AppColor.subcolor,
                            ),
                          ),
                          const CTC(),
                        ],
                      ),
                    );
                  },
                ),
                Consumer<FreherController>(
                  builder: (BuildContext context, value, Widget? child) {
                    return (E_Salary.Visible)
                        ? SizedBox(height: Get.height / 20)
                        : SizedBox(height: Get.height / 2);
                  },
                ),

                //Navigation
                Consumer<FreherController>(
                  builder: (BuildContext context, value, Widget? child) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Get.back();
                          },
                          child: Row(
                            children: [
                              SvgPicture.asset(AppIcons.Backarrow),
                              SizedBox(width: Get.width / 60),
                              Text(
                                Navigator_text.Back,
                                style: TextStyle(
                                  fontSize: Get.width / 24,
                                  color: AppColor.Button_color,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            if(E_Salary.isnext ||
                                E_Salary.isnext1 && E_Salary.isnext2){
                              Get.to(()=>const Location());
                            }
                          },
                          child: Row(
                            children: [
                              Text(
                                Navigator_text.Next,
                                style: TextStyle(
                                  fontSize: Get.width / 24,
                                  color: (E_Salary.isnext ||
                                          E_Salary.isnext1 && E_Salary.isnext2)
                                      ? AppColor.Button_color
                                      : AppColor.Botton_color_hide,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(width: Get.width / 60),
                              SvgPicture.asset(
                                AppIcons.Go,
                                color: (E_Salary.isnext||
                                    E_Salary.isnext1 && E_Salary.isnext2)
                                    ? AppColor.Button_color
                                    : AppColor.Botton_color_hide,
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),
                SizedBox(height: Get.height / 60),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
