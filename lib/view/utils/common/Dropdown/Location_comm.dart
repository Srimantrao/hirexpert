// ignore_for_file: file_names, camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hirexpert/view/utils/app_String.dart';
import 'package:hirexpert/view/utils/app_color.dart';
import 'package:hirexpert/view/utils/app_icon.dart';
import 'package:hirexpert/view/utils/common/Buttons/wideButtons.dart';
import 'package:provider/provider.dart';
import '../../../../controller/DropdownController/PreferenceController.dart';
import '../../../../modal/bottamsheet/Location_list.dart';

//Preference
class Preference extends StatefulWidget {
  const Preference({super.key});

  @override
  State<Preference> createState() => _PreferenceState();
}
class _PreferenceState extends State<Preference> {
  @override
  Widget build(BuildContext context) {
    final Perfernce = Provider.of<PreferenceController>(
      context,
      listen: false,
    );
    return Consumer<PreferenceController>(
      builder: (BuildContext context, value, Widget? child) {
        return InkWell(
          onTap: () {
            Perfernce.Perferncedrop_true();
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    backgroundColor: AppColor.Full_body_color,
                    elevation: 0,
                    title: Container(
                      height: Get.height / 15,
                      width: Get.width,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: AppColor.Bottam_color,
                          ),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(),
                          Text(
                            Location_text.preference,
                            style: TextStyle(
                              fontSize: Get.width / 24,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Perfernce.Perferncedrop_false();
                              Get.back();
                            },
                            child: SvgPicture.asset(AppIcons.cancel),
                          ),
                        ],
                      ),
                    ),
                    content: Container(
                      height: Get.height / 5,
                      width: Get.width,
                      decoration: BoxDecoration(
                        color: AppColor.Full_body_color,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {
                              Perfernce.Full_Time();
                            },
                            child: Text(
                              Location_text.Full_Time,
                              style: TextStyle(fontSize: Get.width / 24),
                            ),
                          ),
                          SizedBox(height: Get.height / 40),
                          InkWell(
                            onTap: () {
                              Perfernce.Contrct();
                            },
                            child: Text(
                              Location_text.Contract,
                              style: TextStyle(fontSize: Get.width / 24),
                            ),
                          ),
                          SizedBox(height: Get.height / 40),
                          InkWell(
                            onTap: () {
                              Perfernce.Internship();
                            },
                            child: Text(
                              Location_text.Internship,
                              style: TextStyle(fontSize: Get.width / 24),
                            ),
                          ),
                          SizedBox(height: Get.height / 40),
                          InkWell(
                            onTap: () {
                              Perfernce.Part_Time();
                            },
                            child: Text(
                              Location_text.Part_Time,
                              style: TextStyle(fontSize: Get.width / 24),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                });
          },
          child: Container(
            height: Get.height / 17,
            width: Get.width,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: AppColor.Bottam_color,
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      (Perfernce.Perferenceindex == 0)
                          ? Location_text.Select
                          : Perfernce.Perferencestring,
                      style: TextStyle(
                        fontSize: Get.width / 23,
                      ),
                    ),
                  ],
                ),
                (Perfernce.Perferncedrop)
                    ? SvgPicture.asset(
                        AppIcons.Right,
                        color: AppColor.Bottam_color,
                      )
                    : SvgPicture.asset(
                        AppIcons.down,
                        color: AppColor.Bottam_color,
                      ),
              ],
            ),
          ),
        );
      },
    );
  }
}

//Location
class Location_fild extends StatefulWidget {
  const Location_fild({super.key});

  @override
  State<Location_fild> createState() => _Location_fildState();
}
class _Location_fildState extends State<Location_fild> {
  int State = -1;
  int Gujarat = -1;
  int Maharastrya = -1;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return Container(
                height: Get.height,
                width: Get.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Get.width / 30),
                    topRight: Radius.circular(Get.width / 30),
                  ),
                  color: AppColor.Full_body_color,
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: Get.width / 30,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: Get.height / 15,
                        width: Get.width,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: AppColor.Bottam_color,
                            ),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SizedBox(),
                            Text(
                              Location_text.Location,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: Get.width / 23,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Get.back();
                              },
                              child: SvgPicture.asset(AppIcons.cancel),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: Get.height / 50),
                      StatefulBuilder(
                        builder: (BuildContext context,
                            void Function(void Function()) setState) {
                          return Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  //State List
                                  SizedBox(
                                    height: Get.height / 2.5,
                                    width: Get.width / 4,
                                    child: ListView.builder(
                                      itemCount: State_list.length,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return InkWell(
                                          onTap: () {
                                            setState(() {
                                              State = index;
                                            });
                                          },
                                          child: Container(
                                            margin: EdgeInsets.symmetric(
                                              vertical: Get.width / 60,
                                            ),
                                            width: Get.width / 4,
                                            height: Get.height / 20,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                Get.width / 50,
                                              ),
                                              color: (State == index)
                                                  ? AppColor.Button_color
                                                  : AppColor.Full_body_color,
                                            ),
                                            child: Center(
                                              child: Text(
                                                State_list[index],
                                                style: TextStyle(
                                                  fontSize: Get.width / 28,
                                                  color: (State == index)
                                                      ? AppColor.Full_body_color
                                                      : AppColor.black_all,
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),

                                  //Aria List
                                  (State == 0 || State == 1)
                                      ? Row(
                                          children: [
                                            (State == 0)
                                                ? SizedBox(
                                                    height: Get.height / 3,
                                                    width: Get.width / 4,
                                                    child: ListView.builder(
                                                      itemCount:
                                                          Area_Gujarat.length,
                                                      itemBuilder:
                                                          (BuildContext context,
                                                              int index) {
                                                        return InkWell(
                                                          onTap: () {
                                                            setState(() {
                                                              Gujarat = index;
                                                            });
                                                          },
                                                          child: Container(
                                                            margin: EdgeInsets
                                                                .symmetric(
                                                              vertical:
                                                                  Get.width /
                                                                      60,
                                                            ),
                                                            width:
                                                                Get.width / 4,
                                                            height:
                                                                Get.height / 20,
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                Get.width / 50,
                                                              ),
                                                              color: (Gujarat ==
                                                                      index)
                                                                  ? AppColor
                                                                      .Button_color
                                                                  : AppColor
                                                                      .Full_body_color,
                                                            ),
                                                            child: Center(
                                                              child: Text(
                                                                Area_Gujarat[
                                                                    index],
                                                                style:
                                                                    TextStyle(
                                                                  fontSize:
                                                                      Get.width /
                                                                          28,
                                                                  color: (Gujarat ==
                                                                          index)
                                                                      ? AppColor
                                                                          .Full_body_color
                                                                      : AppColor
                                                                          .black_all,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    ),
                                                  )
                                                : const SizedBox(),
                                            (State == 1)
                                                ? SizedBox(
                                                    height: Get.height / 3,
                                                    width: Get.width / 4,
                                                    child: ListView.builder(
                                                      itemCount:
                                                          Area_Maharashtra
                                                              .length,
                                                      itemBuilder:
                                                          (BuildContext context,
                                                              int index) {
                                                        return InkWell(
                                                          onTap: () {
                                                            setState(() {
                                                              Maharastrya =
                                                                  index;
                                                            });
                                                          },
                                                          child: Container(
                                                            margin: EdgeInsets
                                                                .symmetric(
                                                              vertical:
                                                                  Get.width /
                                                                      60,
                                                            ),
                                                            width:
                                                                Get.width / 4,
                                                            height:
                                                                Get.height / 20,
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                Get.width / 50,
                                                              ),
                                                              color: (Maharastrya ==
                                                                      index)
                                                                  ? AppColor
                                                                      .Button_color
                                                                  : AppColor
                                                                      .Full_body_color,
                                                            ),
                                                            child: Center(
                                                              child: Text(
                                                                Area_Maharashtra[
                                                                    index],
                                                                style:
                                                                    TextStyle(
                                                                  fontSize:
                                                                      Get.width /
                                                                          28,
                                                                  color: (Maharastrya ==
                                                                          index)
                                                                      ? AppColor
                                                                          .Full_body_color
                                                                      : AppColor
                                                                          .black_all,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    ),
                                                  )
                                                : const SizedBox(),
                                          ],
                                        )
                                      : const SizedBox(),
                                ],
                              ),
                              (State == 0 ||
                                      State == 1 ||
                                      State == 2 ||
                                      State == 3)
                                  ? InkWell(
                                      onTap: () {
                                        setState(() {
                                          Gujarat = 0;
                                          Get.back();
                                        });
                                      },
                                      child: OnButtons(
                                        Button_Color: AppColor.Button_color,
                                        btn_name: Location_text.Save,
                                      ),
                                    )
                                  : const SizedBox(),
                            ],
                          );
                        },
                      ),
                    ],
                  ),
                ),
              );
            });
      },
      child: Container(
          height: Get.height / 17,
          width: Get.width,
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: AppColor.Bottam_color,
              ),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              (Gujarat == 0)
                  ? Text(Gujarat.toString())
                  : Text(
                Location_text.Select,
                style: TextStyle(
                  fontSize: Get.width / 23,
                ),
              ),
              SvgPicture.asset(
                AppIcons.down,
                color: AppColor.Bottam_color,
              ),
            ],
          ),),
    );
  }
}

//Preffered
class Preffered extends StatefulWidget {
  const Preffered({super.key});

  @override
  State<Preffered> createState() => _PrefferedState();
}
class _PrefferedState extends State<Preffered> {
  int State = -1;
  int Gujarat = -1;
  int Maharastrya = -1;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return Container(
                height: Get.height,
                width: Get.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Get.width / 30),
                    topRight: Radius.circular(Get.width / 30),
                  ),
                  color: AppColor.Full_body_color,
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: Get.width / 30,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: Get.height / 15,
                        width: Get.width,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: AppColor.Bottam_color,
                            ),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SizedBox(),
                            Text(
                              Location_text.Location,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: Get.width / 23,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Get.back();
                              },
                              child: SvgPicture.asset(AppIcons.cancel),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: Get.height / 50),
                      StatefulBuilder(
                        builder: (BuildContext context,
                            void Function(void Function()) setState) {
                          return Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  //State List
                                  SizedBox(
                                    height: Get.height / 2.5,
                                    width: Get.width / 4,
                                    child: ListView.builder(
                                      itemCount: State_list.length,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return InkWell(
                                          onTap: () {
                                            setState(() {
                                              State = index;
                                            });
                                          },
                                          child: Container(
                                            margin: EdgeInsets.symmetric(
                                              vertical: Get.width / 60,
                                            ),
                                            width: Get.width / 4,
                                            height: Get.height / 20,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                Get.width / 50,
                                              ),
                                              color: (State == index)
                                                  ? AppColor.Button_color
                                                  : AppColor.Full_body_color,
                                            ),
                                            child: Center(
                                              child: Text(
                                                State_list[index],
                                                style: TextStyle(
                                                  fontSize: Get.width / 28,
                                                  color: (State == index)
                                                      ? AppColor.Full_body_color
                                                      : AppColor.black_all,
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),

                                  //Aria List
                                  (State == 0 || State == 1)
                                      ? Row(
                                          children: [
                                            (State == 0)
                                                ? SizedBox(
                                                    height: Get.height / 3,
                                                    width: Get.width / 4,
                                                    child: ListView.builder(
                                                      itemCount:
                                                          Area_Gujarat.length,
                                                      itemBuilder:
                                                          (BuildContext context,
                                                              int index) {
                                                        return InkWell(
                                                          onTap: () {
                                                            setState(() {
                                                              Gujarat = index;
                                                            });
                                                          },
                                                          child: Container(
                                                            margin: EdgeInsets
                                                                .symmetric(
                                                              vertical:
                                                                  Get.width /
                                                                      60,
                                                            ),
                                                            width:
                                                                Get.width / 4,
                                                            height:
                                                                Get.height / 20,
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                Get.width / 50,
                                                              ),
                                                              color: (Gujarat ==
                                                                      index)
                                                                  ? AppColor
                                                                      .Button_color
                                                                  : AppColor
                                                                      .Full_body_color,
                                                            ),
                                                            child: Center(
                                                              child: Text(
                                                                Area_Gujarat[
                                                                    index],
                                                                style:
                                                                    TextStyle(
                                                                  fontSize:
                                                                      Get.width /
                                                                          28,
                                                                  color: (Gujarat ==
                                                                          index)
                                                                      ? AppColor
                                                                          .Full_body_color
                                                                      : AppColor
                                                                          .black_all,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    ),
                                                  )
                                                : const SizedBox(),
                                            (State == 1)
                                                ? SizedBox(
                                                    height: Get.height / 3,
                                                    width: Get.width / 4,
                                                    child: ListView.builder(
                                                      itemCount:
                                                          Area_Maharashtra
                                                              .length,
                                                      itemBuilder:
                                                          (BuildContext context,
                                                              int index) {
                                                        return InkWell(
                                                          onTap: () {
                                                            setState(() {
                                                              Maharastrya =
                                                                  index;
                                                            });
                                                          },
                                                          child: Container(
                                                            margin: EdgeInsets
                                                                .symmetric(
                                                              vertical:
                                                                  Get.width /
                                                                      60,
                                                            ),
                                                            width:
                                                                Get.width / 4,
                                                            height:
                                                                Get.height / 20,
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                Get.width / 50,
                                                              ),
                                                              color: (Maharastrya ==
                                                                      index)
                                                                  ? AppColor
                                                                      .Button_color
                                                                  : AppColor
                                                                      .Full_body_color,
                                                            ),
                                                            child: Center(
                                                              child: Text(
                                                                Area_Maharashtra[
                                                                    index],
                                                                style:
                                                                    TextStyle(
                                                                  fontSize:
                                                                      Get.width /
                                                                          28,
                                                                  color: (Maharastrya ==
                                                                          index)
                                                                      ? AppColor
                                                                          .Full_body_color
                                                                      : AppColor
                                                                          .black_all,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    ),
                                                  )
                                                : const SizedBox(),
                                          ],
                                        )
                                      : const SizedBox(),
                                ],
                              ),
                              (State == 0 ||
                                      State == 1 ||
                                      State == 2 ||
                                      State == 3)
                                  ? InkWell(
                                      onTap: () {
                                        setState(() {
                                          Gujarat = 0;
                                          Get.back();
                                        });
                                      },
                                      child: OnButtons(
                                        Button_Color: AppColor.Button_color,
                                        btn_name: Location_text.Save,
                                      ),
                                    )
                                  : const SizedBox(),
                            ],
                          );
                        },
                      ),
                    ],
                  ),
                ),
              );
            });
      },
      child: Container(
        height: Get.height / 17,
        width: Get.width,
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: AppColor.Bottam_color,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            (Gujarat == 0)
                ? Text(Gujarat.toString())
                : Text(
                    Location_text.Select,
                    style: TextStyle(
                      fontSize: Get.width / 23,
                    ),
                  ),
            SvgPicture.asset(
              AppIcons.down,
              color: AppColor.Bottam_color,
            ),
          ],
        ),
      ),
    );
  }
}

//Setup
class Setup extends StatefulWidget {
  const Setup({super.key});

  @override
  State<Setup> createState() => _SetupState();
}
class _SetupState extends State<Setup> {
  @override
  Widget build(BuildContext context) {
    final Setup = Provider.of<SetupController>(context, listen: false);
    return Consumer<SetupController>(
      builder: (BuildContext context, value, Widget? child) {
        return InkWell(
          onTap: () {
            Setup.istrue_true();
            Setup.isnext_fun();
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    backgroundColor: AppColor.Full_body_color,
                    elevation: 0,
                    title: Container(
                      height: Get.height / 15,
                      width: Get.width,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: AppColor.Bottam_color,
                          ),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(),
                          Text(
                            Location_text.Work,
                            style: TextStyle(
                              fontSize: Get.width / 24,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Get.back();
                              Setup.istrue_false();
                            },
                            child: SvgPicture.asset(AppIcons.cancel),
                          ),
                        ],
                      ),
                    ),
                    content: Container(
                      height: Get.height / 5,
                      width: Get.width,
                      decoration: BoxDecoration(
                        color: AppColor.Full_body_color,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {
                              Setup.Remote_Work_fun();
                            },
                            child: Text(
                              Location_text.Remote_Work,
                              style: TextStyle(fontSize: Get.width / 24),
                            ),
                          ),
                          SizedBox(height: Get.height / 50),
                          InkWell(
                            onTap: () {
                              Setup.In_Office_fun();
                            },
                            child: Text(
                              Location_text.In_Office,
                              style: TextStyle(fontSize: Get.width / 24),
                            ),
                          ),
                          SizedBox(height: Get.height / 50),
                          InkWell(
                            onTap: () {
                              Setup.Hybrid_fun();
                            },
                            child: Text(
                              Location_text.Hybrid,
                              style: TextStyle(fontSize: Get.width / 24),
                            ),
                          ),
                          SizedBox(height: Get.height / 50),
                          InkWell(
                            onTap: () {
                              Setup.Any_fun();
                            },
                            child: Text(
                              Location_text.Any,
                              style: TextStyle(fontSize: Get.width / 24),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                });
          },
          child: Container(
            height: Get.height / 17,
            width: Get.width,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: AppColor.Bottam_color,
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                (Setup.isindex == 0)
                    ? Text(
                        Location_text.Select,
                        style: TextStyle(
                          fontSize: Get.width / 23,
                        ),
                      )
                    : Text(
                        Setup.isString,
                        style: TextStyle(
                          fontSize: Get.width / 23,
                        ),
                      ),
                (Setup.istrue)
                    ? SvgPicture.asset(
                        AppIcons.Right,
                        color: AppColor.Bottam_color,
                      )
                    : SvgPicture.asset(
                        AppIcons.down,
                        color: AppColor.Bottam_color,
                      ),
              ],
            ),
          ),
        );
      },
    );
  }
}
