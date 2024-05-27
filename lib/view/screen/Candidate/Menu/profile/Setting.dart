// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hirexpert/controller/API_Cobtroller/Candidate/Collction/Change%20Password/Change_Controller_API_Controller.dart';
import 'package:hirexpert/controller/API_Cobtroller/Candidate/Collction/Login/login_API_controller.dart';
import 'package:hirexpert/view/utils/app_String.dart';
import 'package:hirexpert/view/utils/app_color.dart';
import 'package:hirexpert/view/utils/app_icon.dart';
import 'package:hirexpert/view/utils/common/Buttons/wideButtons.dart';
import 'package:hirexpert/view/utils/common/Container/profile_Info.dart';
import 'package:provider/provider.dart';
import '../../../../../controller/User_Controller/Candidate_Controller/Change_PasswordController/Change_Password_Controller.dart';
import 'Setting_Screen/My_Archive.dart';
import 'Setting_Screen/Notification_Setting.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  ChangeControllerApiController Change_Pass =
      Get.put(ChangeControllerApiController());
  OptionApiController Login = Get.put(OptionApiController());

  @override
  void initState() {
    Future.microtask(() async {
      await Change_Pass.ChangeControllerApiController_Fuction(
        Tokan: Login.option_data['data']['LoginToken'],
      );
    });
    super.initState();
  }

  //Check box
  bool value1 = false;
  bool value2 = false;

  //Switchs
  bool switchs = false;

  // //obscureText
  // bool o_pass = true;
  // bool n_pass = true;
  // bool c_pass = true;
  //
  // //Throw Error
  // bool Old_passing = false;
  // String Olding = "";
  // String Newing = "";
  // String Confarm_Newing = "";
  //
  // //TextfoldController
  // TextEditingController old_pass = TextEditingController();
  // TextEditingController new_pass = TextEditingController();
  // TextEditingController conf_pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final Pass_change =
        Provider.of<ChangePasswordController>(context, listen: false);
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
                  Consumer<ChangePasswordController>(
                    builder: (BuildContext context, value, Widget? child) {
                      return InkWell(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return StatefulBuilder(
                                  builder: (BuildContext context,
                                      void Function(void Function()) setState) {
                                    return AlertDialog(
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
                                        child: SingleChildScrollView(
                                          scrollDirection: Axis.vertical,
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
                                                  Pass_change
                                                      .Old_Password_fuction(
                                                          val);
                                                },
                                                obscureText: Pass_change.o_pass,
                                                controller:
                                                    Pass_change.old_pass,
                                                decoration: InputDecoration(
                                                  suffixIcon: InkWell(
                                                    onTap: () {
                                                      Pass_change
                                                          .OldPassword_Fuction_obx();
                                                    },
                                                    child: (Pass_change.o_pass)
                                                        ? const Icon(Icons
                                                            .visibility_off)
                                                        : const Icon(
                                                            Icons.visibility),
                                                  ),
                                                  hintText: My_Archive_text
                                                      .Enter_Old_Password,
                                                  enabledBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          AppColor.Buttom_color,
                                                    ),
                                                  ),
                                                  focusedBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          AppColor.Buttom_color,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              (Pass_change.Old_passing)
                                                  ? Text(
                                                      Pass_change.Olding,
                                                      style: TextStyle(
                                                          color: AppColor
                                                              .Error_color),
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
                                                  Pass_change
                                                      .new_password_fuction(
                                                          val);
                                                },
                                                obscureText: Pass_change.n_pass,
                                                controller:
                                                    Pass_change.new_pass,
                                                decoration: InputDecoration(
                                                  suffixIcon: InkWell(
                                                    onTap: () {
                                                      Pass_change
                                                          .Confirm_Password_obx();
                                                    },
                                                    child: (Pass_change.o_pass)
                                                        ? const Icon(
                                                            Icons
                                                                .visibility_off,
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
                                                      color:
                                                          AppColor.Buttom_color,
                                                    ),
                                                  ),
                                                  focusedBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          AppColor.Buttom_color,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              (Pass_change.Old_passing)
                                                  ? Text(
                                                      Pass_change.Newing,
                                                      style: TextStyle(
                                                          color: AppColor
                                                              .Error_color),
                                                    )
                                                  : Text(Pass_change.Newing),
                                              SizedBox(height: Get.height / 50),
                                              Text(
                                                My_Archive_text
                                                    .Confirm_Password,
                                                style: TextStyle(
                                                  fontSize: Get.width / 23,
                                                  fontWeight: FontWeight.w400,
                                                  color: AppColor.subcolor,
                                                ),
                                              ),
                                              TextField(
                                                onChanged: (String val) {
                                                  onChanged:
                                                  (String val) {
                                                    Pass_change
                                                        .Confirm_Password(val);
                                                  };
                                                },
                                                obscureText: Pass_change.c_pass,
                                                controller:
                                                    Pass_change.conf_pass,
                                                decoration: InputDecoration(
                                                  suffixIcon: InkWell(
                                                    onTap: () {
                                                      Pass_change
                                                          .Confirm_Password_obx();
                                                    },
                                                    child: (Pass_change.c_pass)
                                                        ? const Icon(
                                                            Icons
                                                                .visibility_off,
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
                                                      color:
                                                          AppColor.Buttom_color,
                                                    ),
                                                  ),
                                                  focusedBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          AppColor.Buttom_color,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              (Pass_change.Old_passing)
                                                  ? Text(
                                                      Pass_change
                                                          .Confarm_Newing,
                                                      style: TextStyle(
                                                          color: AppColor
                                                              .Error_color),
                                                    )
                                                  : const Text(""),
                                            ],
                                          ),
                                        ),
                                      ),
                                      actions: [
                                        InkWell(
                                          onTap: () {
                                            Pass_change.Button_Fuction();
                                            Change_Pass
                                                .ChangeControllerApiController_Fuction(
                                              Password:
                                                  Pass_change.new_pass.text,
                                              OldPassword:
                                                  Pass_change.old_pass.text,
                                              Tokan: Login.option_data['data']
                                                  ['LoginToken'],
                                            );
                                            setState(() {});
                                          },
                                          child: OnButtons(
                                            Button_Color: AppColor.Button_color,
                                            btn_name: Profile_Text.Change,
                                          ),
                                        ),
                                      ],
                                    );
                                  },
                                );
                              },
                            );
                          },
                          child: const Info_Setting(
                              info: Profile_Text.Change_Password));
                    },
                  ),
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
