// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hirexpert/view/utils/app_String.dart';
import 'package:hirexpert/view/utils/app_color.dart';
import 'package:hirexpert/view/utils/app_icon.dart';
import 'package:hirexpert/view/utils/common/Buttons/wideButtons.dart';
import 'package:hirexpert/view/utils/common/Container/profile_Info.dart';
import 'Setting_Screen/My_Archive.dart';
import 'Setting_Screen/Notification_Setting.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  //Check box
  bool value1 = false;
  bool value2 = false;

  //Switchs
  bool switchs = false;

  //obscureText
  bool o_pass = true;
  bool n_pass = true;
  bool c_pass = true;

  //Throw Error
  bool Old_passing = false;
  String Olding = "";
  String Newing = "";
  String Confarm_Newing = "";

  //TextfoldController
  TextEditingController old_pass = TextEditingController();
  TextEditingController new_pass = TextEditingController();
  TextEditingController conf_pass = TextEditingController();

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
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: Get.width / 30,
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: Get.height / 8,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: AppColor.Bottam_color,
                        ),
                      ),
                    ),
                    child: Row(
                      children: [
                        const CircleAvatar(
                          radius: 40,
                        ),
                        SizedBox(width: Get.width / 30),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Sagar Patil",
                              style: TextStyle(
                                fontSize: Get.width / 22,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              "Accounting",
                              style: TextStyle(
                                  fontSize: Get.width / 26,
                                  fontWeight: FontWeight.w400,
                                  color: AppColor.subcolor),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Info_Setting(info: Profile_Text.Profile),

                  //My Archive
                  InkWell(
                    onTap: () {
                      Get.to(() => const My_Archive());
                    },
                    child: const Info_Setting(info: Profile_Text.Archive),
                  ),

                  //Notification Setting
                  InkWell(
                    onTap: () {
                      Get.to(() => const Notification_setting());
                    },
                    child: const Info_Setting(
                      info: Profile_Text.Notification_Setting,
                    ),
                  ),

                  //Send Us Your Feedback
                  InkWell(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            backgroundColor: AppColor.Full_body_color,
                            elevation: 0,
                            title: Container(
                              height: Get.height / 20,
                              width: Get.width,
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: AppColor.Buttom_color,
                                  ),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const SizedBox(),
                                  Text(
                                    My_Archive_text.Feedback,
                                    style: TextStyle(
                                      fontSize: Get.width / 23,
                                    ),
                                  ),
                                  InkWell(
                                    highlightColor: Colors.transparent,
                                    splashColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    onTap: () {
                                      Get.back();
                                    },
                                    child: SvgPicture.asset(AppIcons.cancel),
                                  ),
                                ],
                              ),
                            ),
                            content: Container(
                              height: Get.height / 3.5,
                              width: Get.width,
                              decoration: BoxDecoration(
                                color: AppColor.Full_body_color,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    My_Archive_text.Send_Us,
                                    style: TextStyle(
                                      fontSize: Get.width / 24,
                                    ),
                                  ),
                                  StatefulBuilder(
                                    builder: (BuildContext context,
                                        void Function(void Function())
                                            setState) {
                                      return Row(
                                        children: [
                                          Row(
                                            children: [
                                              Checkbox(
                                                  side: BorderSide(
                                                    color:
                                                        AppColor.Buttom_color,
                                                  ),
                                                  value: value1,
                                                  onChanged: (val) {
                                                    value1 = val!;
                                                    setState(() {});
                                                  }),
                                              const Text(
                                                  My_Archive_text.Issues),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Checkbox(
                                                  side: BorderSide(
                                                    color:
                                                        AppColor.Buttom_color,
                                                  ),
                                                  value: value2,
                                                  onChanged: (val) {
                                                    value2 = val!;
                                                    setState(() {});
                                                  }),
                                              const Text(
                                                  My_Archive_text.Suggestions),
                                            ],
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                  SizedBox(
                                    height: Get.height / 8,
                                    child: TextField(
                                      expands: true,
                                      maxLines: null,
                                      decoration: InputDecoration(
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: AppColor.Buttom_color,
                                          ),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: AppColor.Buttom_color,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: Get.height / 80),
                                  Container(
                                    height: Get.height / 20,
                                    width: Get.width / 3,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        Get.width / 80,
                                      ),
                                      color: AppColor.Button_color,
                                    ),
                                    child: Center(
                                      child: Text(
                                        textAlign: TextAlign.center,
                                        My_Archive_text.Add_Screenshot,
                                        style: TextStyle(
                                          color: AppColor.Full_body_color,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            actions: [
                              InkWell(
                                child: Container(
                                  height: Get.height / 20,
                                  width: Get.width / 3,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      Get.width / 80,
                                    ),
                                    color: AppColor.Button_color,
                                  ),
                                  child: Center(
                                    child: Text(
                                      My_Archive_text.Submit,
                                      style: TextStyle(
                                        color: AppColor.Full_body_color,
                                      ),
                                    ),
                                  ),
                                ),
                                onTap: () {
                                  Get.back();
                                },
                              ),
                              InkWell(
                                child: Container(
                                  height: Get.height / 20,
                                  width: Get.width / 3,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      Get.width / 80,
                                    ),
                                    color: AppColor.Tabbar_color,
                                  ),
                                  child: Center(
                                    child: Text(
                                      My_Archive_text.Cancel,
                                      style: TextStyle(
                                        color: AppColor.subcolor,
                                      ),
                                    ),
                                  ),
                                ),
                                onTap: () {
                                  Get.back();
                                },
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: const Info_Setting(
                      info: Profile_Text.Send_Us_Your_Feedback,
                    ),
                  ),

                  //Manage_Account
                  InkWell(
                    splashColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            elevation: 0,
                            backgroundColor: AppColor.Full_body_color,
                            title: Container(
                              height: Get.height / 20,
                              width: Get.width,
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: AppColor.Buttom_color,
                                  ),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const SizedBox(),
                                  Text(
                                    My_Archive_text.Manage_Account,
                                    style: TextStyle(
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
                            content: Container(
                              height: Get.height / 7,
                              width: Get.width,
                              decoration: BoxDecoration(
                                color: AppColor.Full_body_color,
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        My_Archive_text.Hide_my,
                                        style: TextStyle(
                                          fontSize: Get.width / 25,
                                        ),
                                      ),
                                      StatefulBuilder(
                                        builder: (BuildContext context,
                                            void Function(void Function())
                                                setState) {
                                          return Switch(
                                            activeColor: AppColor.Button_color,
                                            inactiveTrackColor:
                                                AppColor.Buttom_color,
                                            thumbColor:
                                                MaterialStatePropertyAll(
                                                    AppColor.Full_body_color),
                                            value: switchs,
                                            onChanged: (swi) {
                                              switchs = swi;
                                              setState(() {});
                                            },
                                          );
                                        },
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                        width: Get.width / 2.5,
                                        child: Text(
                                          My_Archive_text.Remove,
                                          style: TextStyle(
                                            fontSize: Get.width / 25,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: Get.height / 20,
                                        width: Get.width / 4,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            Get.width / 60,
                                          ),
                                          color: AppColor.Error_color,
                                        ),
                                        child: Center(
                                          child: Text(
                                            textAlign: TextAlign.center,
                                            My_Archive_text.Remove_buttons,
                                            style: TextStyle(
                                              color: AppColor.Full_body_color,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                    child:
                        const Info_Setting(info: Profile_Text.Manage_Account),
                  ),
                  const Info_Setting(info: Profile_Text.Terms_And_Conditions),
                  const Info_Setting(info: Profile_Text.Privacy_Policy),

                  //Password Change
                  InkWell(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return StatefulBuilder(
                              builder: (BuildContext context,
                                  void Function(void Function()) setState) {
                                return SingleChildScrollView(
                                  scrollDirection: Axis.vertical,
                                  child: AlertDialog(
                                    backgroundColor: AppColor.Full_body_color,
                                    elevation: 0,
                                    title: Container(
                                      height: Get.height / 15,
                                      width: Get.width,
                                      decoration: BoxDecoration(
                                        border: Border(
                                          bottom: BorderSide(
                                            color: AppColor.Buttom_color,
                                          ),
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const SizedBox(),
                                          Text(
                                            My_Archive_text.Old_Password,
                                            style: TextStyle(
                                              color: AppColor.subcolor,
                                              fontSize: Get.width / 23,
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () {
                                              Get.back();
                                            },
                                            child: SvgPicture.asset(
                                                AppIcons.cancel),
                                          ),
                                        ],
                                      ),
                                    ),
                                    content: Container(
                                      width: Get.width,
                                      height: Get.height / 2.8,
                                      decoration: BoxDecoration(
                                        color: AppColor.Full_body_color,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            My_Archive_text.Old_Password,
                                            style: TextStyle(
                                              fontSize: Get.width / 23,
                                              fontWeight: FontWeight.w400,
                                              color: AppColor.subcolor,
                                            ),
                                          ),
                                          TextField(
                                            onTap: () {},
                                            onChanged: (String val) {
                                              if (!val.contains("@")) {
                                                Old_passing = true;
                                                Olding = "@";
                                              } else if (!val.contains("5")) {
                                                Old_passing = true;
                                                Olding = "5";
                                              } else if (!val.contains("A")) {
                                                Old_passing = true;
                                                Olding = "A";
                                              } else {
                                                Old_passing = false;
                                                Olding = "";
                                              }
                                              setState(() {});
                                            },
                                            obscureText: o_pass,
                                            controller: old_pass,
                                            decoration: InputDecoration(
                                              suffixIcon: InkWell(
                                                onTap: () {
                                                  o_pass = !o_pass;
                                                  setState(() {});
                                                },
                                                child: (o_pass)
                                                    ? const Icon(
                                                        Icons.visibility_off)
                                                    : const Icon(
                                                        Icons.visibility),
                                              ),
                                              hintText: My_Archive_text
                                                  .Enter_Old_Password,
                                              enabledBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: AppColor.Buttom_color,
                                                ),
                                              ),
                                              focusedBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: AppColor.Buttom_color,
                                                ),
                                              ),
                                            ),
                                          ),
                                          (Old_passing)
                                              ? Text(
                                                  Olding,
                                                  style: TextStyle(
                                                      color:
                                                          AppColor.Error_color),
                                                )
                                              : const Text(""),
                                          SizedBox(height: Get.height / 50),
                                          Text(
                                            My_Archive_text.New_Password,
                                            style: TextStyle(
                                              fontSize: Get.width / 23,
                                              fontWeight: FontWeight.w400,
                                              color: AppColor.subcolor,
                                            ),
                                          ),
                                          TextField(
                                            onChanged: (String val) {
                                              if (!val.contains("@")) {
                                                Old_passing = true;
                                                Newing = "@";
                                              } else if (!val.contains("5")) {
                                                Old_passing = true;
                                                Newing = "5";
                                              } else if (!val.contains("A")) {
                                                Old_passing = true;
                                                Newing = "A";
                                              } else {
                                                Old_passing = false;
                                                Newing = "";
                                              }
                                              setState(() {});
                                            },
                                            obscureText: n_pass,
                                            controller: new_pass,
                                            decoration: InputDecoration(
                                              suffixIcon: InkWell(
                                                onTap: () {
                                                  n_pass = !n_pass;
                                                  setState(() {});
                                                },
                                                child: (o_pass)
                                                    ? const Icon(
                                                        Icons.visibility_off,
                                                      )
                                                    : const Icon(
                                                        Icons.visibility,
                                                      ),
                                              ),
                                              hintText: My_Archive_text
                                                  .Enter_New_Password,
                                              enabledBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: AppColor.Buttom_color,
                                                ),
                                              ),
                                              focusedBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: AppColor.Buttom_color,
                                                ),
                                              ),
                                            ),
                                          ),
                                          (Old_passing)
                                              ? Text(
                                                  Newing,
                                                  style: TextStyle(
                                                      color:
                                                          AppColor.Error_color),
                                                )
                                              : Text(Newing = ""),
                                          SizedBox(height: Get.height / 50),
                                          Text(
                                            My_Archive_text.Confirm_Password,
                                            style: TextStyle(
                                              fontSize: Get.width / 23,
                                              fontWeight: FontWeight.w400,
                                              color: AppColor.subcolor,
                                            ),
                                          ),
                                          TextField(
                                            onChanged: (String val) {
                                              if (!val.contains("@")) {
                                                Old_passing = true;
                                                Confarm_Newing = "@";
                                              } else if (!val.contains("5")) {
                                                Old_passing = true;
                                                Confarm_Newing = "5";
                                              } else if (!val.contains("A")) {
                                                Old_passing = true;
                                                Confarm_Newing = "A";
                                              } else {
                                                Old_passing = false;
                                                Confarm_Newing = "";
                                              }
                                              setState(() {});
                                            },
                                            obscureText: c_pass,
                                            controller: conf_pass,
                                            decoration: InputDecoration(
                                              suffixIcon: InkWell(
                                                onTap: () {
                                                  c_pass = !c_pass;
                                                  setState(() {});
                                                },
                                                child: (c_pass)
                                                    ? const Icon(
                                                        Icons.visibility_off,
                                                      )
                                                    : const Icon(
                                                        Icons.visibility,
                                                      ),
                                              ),
                                              hintText: My_Archive_text
                                                  .Enter_Confirm_Password,
                                              enabledBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: AppColor.Buttom_color,
                                                ),
                                              ),
                                              focusedBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: AppColor.Buttom_color,
                                                ),
                                              ),
                                            ),
                                          ),
                                          (Old_passing)
                                              ? Text(
                                                  Confarm_Newing,
                                                  style: TextStyle(
                                                      color:
                                                          AppColor.Error_color),
                                                )
                                              : const Text(""),
                                        ],
                                      ),
                                    ),
                                    actions: [
                                      InkWell(
                                        onTap: () {
                                          if (old_pass.text.isEmpty) {
                                            Old_passing = true;
                                            Olding = "Plese Input Old Password";
                                          } else {
                                            Old_passing = false;
                                            Olding = "";
                                          }
                                          if (new_pass.text.isEmpty) {
                                            Old_passing = true;
                                            Newing = "Plese Input Old Password";
                                          } else {
                                            Old_passing = false;
                                            Newing = "";
                                          }
                                          if (conf_pass.text.isEmpty) {
                                            Old_passing = true;
                                            Confarm_Newing =
                                                "Plese Input Old Password";
                                          } else {
                                            Old_passing = false;
                                            Confarm_Newing = "";
                                          }
                                          setState(() {});
                                        },
                                        child: OnButtons(
                                          Button_Color: AppColor.Button_color,
                                          btn_name: Profile_Text.Change,
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            );
                          },
                        );
                      },
                      child: const Info_Setting(
                          info: Profile_Text.Change_Password)),
                  SizedBox(height: Get.height / 40),
                  Padding(
                    padding: EdgeInsets.only(left: Get.width / 32),
                    child: Text(
                      Profile_Text.Logout,
                      style: TextStyle(
                        color: AppColor.Button_color,
                        fontSize: Get.width / 25,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
