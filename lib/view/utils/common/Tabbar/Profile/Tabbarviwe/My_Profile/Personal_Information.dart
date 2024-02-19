// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import '../../../../../../../controller/Logic_Conroller/Screen_Logic/Profile_Logic/My_Profile_Logic(Tabbar)/CircleAvatar_Color/(My_Profile)Circle_color.dart';
import '../../../../../../../controller/Logic_Conroller/Screen_Logic/Profile_Logic/My_Profile_Logic(Tabbar)/Navi_Icons/(My_Profile)_Navi_Icons.dart';
import '../../../../../../../controller/Logic_Conroller/Screen_Logic/Profile_Logic/My_Profile_Logic(Tabbar)/Pass_Error/(My_Profile)_Pass_Error.dart';
import '../../../../../../../controller/MY_ProfileController/My_ProfileController.dart';
import '../../../../../app_String.dart';
import '../../../../../app_color.dart';
import '../../../../Container/profile_Info.dart';
import '../../../../Textfild/Inputfild.dart';

class Parsonal_Information extends StatelessWidget {
  const Parsonal_Information({super.key});

  @override
  Widget build(BuildContext context) {
    final myProfile = Provider.of<My_ProfileController>(
      context,
      listen: false,
    );
    return Consumer<My_ProfileController>(
      builder: (BuildContext context, value, Widget? child) {
        return Column(
          children: [
            InkWell(
              onTap: () {
                myProfile.Personal_Information_fun();
              },
              child: Info(
                info: Profile_Text.Personal_Information,
                CircleAvatar_color: Change_Circle(
                    Condition: myProfile.P_Job_Title == 0 &&
                        myProfile.P_Frist_Name == 1 &&
                        myProfile.P_Last_Name == 2 &&
                        myProfile.P_Email_Id == 3 &&
                        myProfile.P_Mobile_Numbres == 4 &&
                        myProfile.P_Birthday == 5),
                dropicons: DropIcons(
                  conditional_name: myProfile.Personal_Information,
                ),
              ),
            ),
            Visibility(
              visible: myProfile.Personal_Information,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: Get.height / 60),
                  //Job Title
                  Inputfild(
                    onTap: () {
                      myProfile.P_Job_Title_fun();
                    },
                    onChanged: (val) {
                      myProfile.JobTitle_validation(val);
                    },
                    labal: Profile_Text.Job_Title,
                    hint: Profile_Text.Enter_Tital_job,
                    controller: myProfile.Job_Titales,
                  ),
                  MyProfile_Error(
                    throww: myProfile.onthrowError,
                    Error: myProfile.JobTitle,
                  ),
                  SizedBox(height: Get.height / 60),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      //First Name
                      Column(
                        children: [
                          SizedBox(
                            width: Get.width / 2.5,
                            child: Inputfild(
                              onTap: () {
                                myProfile.P_Frist_Name_fun();
                              },
                              onChanged: (val) {
                                myProfile.FristName_validation(val);
                              },
                              labal: Profile_Text.First_Name,
                              hint: Profile_Text.Enter_The_Frist_Name,
                              controller: myProfile.Frist_Name_Profile,
                            ),
                          ),
                          SizedBox(
                            width: Get.width / 2.5,
                            child: MyProfile_Error(
                              throww: myProfile.onthrowError,
                              Error: myProfile.FristName,
                            ),
                          ),
                        ],
                      ),

                      //Last Name
                      Column(
                        children: [
                          SizedBox(
                            width: Get.width / 2.5,
                            child: Inputfild(
                              onTap: () {
                                myProfile.P_Last_Name_fun();
                              },
                              onChanged: (val) {
                                myProfile.LastName_validation(val);
                              },
                              labal: Profile_Text.Last_Name,
                              hint: Profile_Text.Enter_The_Last_Name,
                              controller: myProfile.Last_Name_Profile,
                            ),
                          ),
                          SizedBox(
                            width: Get.width / 2.5,
                            child: MyProfile_Error(
                              throww: myProfile.onthrowError,
                              Error: myProfile.LastName,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: Get.height / 60),

                  //Email ID
                  Inputfild(
                    labal: Profile_Text.Email_Id,
                    hint: Profile_Text.Enter_Email_Id,
                    controller: myProfile.Email_id_Profile,
                    onTap: () {
                      myProfile.P_Email_ID_fun();
                    },
                  ),
                  SizedBox(height: Get.height / 60),

                  //Mobile Numbres
                  Inputfild(
                    keyboardType: TextInputType.number,
                    labal: Profile_Text.Mobile_Number,
                    hint: Profile_Text.Enter_Mobile_Number,
                    controller: myProfile.Mobile_Numbres,
                    onTap: () {
                      myProfile.P_Mobile_Numbres_fun();
                    },
                  ),
                  SizedBox(height: Get.height / 60),

                  //Gender
                  Text(
                    Profile_Text.Gender,
                    style: TextStyle(
                      fontSize: Get.width / 24,
                      color: AppColor.select_check_color,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                              side: BorderSide(
                                color: AppColor.Buttom_color,
                              ),
                              activeColor: AppColor.Button_color,
                              value: myProfile.selectedCheckboxIndex == 0,
                              onChanged: (val) {
                                myProfile.handleCheckboxValueChanged(0);
                              }),
                          Text(
                            Profile_Text.Male,
                            style: TextStyle(
                              fontSize: Get.width / 25,
                              color: AppColor.subcolor,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                            side: BorderSide(
                              color: AppColor.Buttom_color,
                            ),
                            activeColor: AppColor.Button_color,
                            value: myProfile.selectedCheckboxIndex == 1,
                            onChanged: (val) {
                              myProfile.handleCheckboxValueChanged(1);
                            },
                          ),
                          Text(
                            Profile_Text.Female,
                            style: TextStyle(
                              fontSize: Get.width / 25,
                              color: AppColor.subcolor,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                              side: BorderSide(
                                color: AppColor.Buttom_color,
                              ),
                              activeColor: AppColor.Button_color,
                              value: myProfile.selectedCheckboxIndex == 2,
                              onChanged: (val) {
                                myProfile.handleCheckboxValueChanged(2);
                              }),
                          Text(
                            Profile_Text.PreferNot_tosay,
                            style: TextStyle(
                              fontSize: Get.width / 25,
                              color: AppColor.subcolor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: Get.height / 60),

                  //Date Of Birthday
                  Inputfild(
                    labal: Profile_Text.Date_Of_Birthday,
                    hint: Profile_Text.Date_OF_Bithday,
                    controller: myProfile.BirthDay,
                    onTap: () {
                      myProfile.P_Birthday_fun();
                    },
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
