// ignore_for_file: file_names, camel_case_types, prefer_const_constructors, must_be_immutable, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hirexpert/controller/API_handler/Candidate/Menu/profile/myprofile/Personal_Information.dart';
import 'package:hirexpert/view/utils/app_loder.dart';
import 'package:provider/provider.dart';
import '../../../../../../../controller/User_Controller/Candidate_Controller/Logic_Conroller/Screen_Logic/Profile_Logic/My_Profile_Logic(Tabbar)/CircleAvatar_Color/(My_Profile)Circle_color.dart';
import '../../../../../../../controller/User_Controller/Candidate_Controller/Logic_Conroller/Screen_Logic/Profile_Logic/My_Profile_Logic(Tabbar)/Navi_Icons/(My_Profile)_Navi_Icons.dart';
import '../../../../../../../controller/User_Controller/Candidate_Controller/Logic_Conroller/Screen_Logic/Profile_Logic/My_Profile_Logic(Tabbar)/Pass_Error/(My_Profile)_Pass_Error.dart';
import '../../../../../../../controller/User_Controller/Candidate_Controller/MY_ProfileController/My_ProfileController.dart';
import '../../../../../app_String.dart';
import '../../../../../app_color.dart';
import '../../../../Container/profile_Info.dart';
import '../../../../Textfild/Inputfild.dart';

class Parsonal_Information extends StatelessWidget {
 final PersonalInformation Parsonal = Get.put(PersonalInformation());

  Parsonal_Information({super.key});

  @override
  Widget build(BuildContext context) {
    final myProfile = Provider.of<My_ProfileController>(
      context,
      listen: false,
    );
    return Consumer<My_ProfileController>(
      builder: (BuildContext context, value, Widget? child) {
        return Obx(() {
          if (Parsonal.login.isLodingvalue.value) {
            return Center(
              child: Image.asset(AppLoder.infinityloder_without_background),
            );
          } else if (Parsonal.login.option_data['data'] == null ||
              Parsonal.login.option_data == null) {
            return Text(API_Error.null_data);
          } else {
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
                          myProfile.P_Birthday == 5,
                    ),
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
                        hint: Parsonal.login.option_data['data']['UserDetails']
                            ['JobTitle'],
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
                                  hint: Parsonal.login.option_data['data']
                                      ['UserDetails']['FirstName'],
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
                                  hint: Parsonal.login.option_data['data']
                                      ['UserDetails']['LastName'],
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
                        hint: Parsonal.login.option_data['data']['UserDetails']
                            ['Email'],
                        controller: myProfile.Email_id_Profile,
                        onTap: () {
                          myProfile.P_Email_ID_fun();
                        },
                        onChanged: (val) {
                          myProfile.Email_ID_validation(val);
                        },
                      ),
                      //Error
                      MyProfile_Error(
                        throww: myProfile.onthrowError,
                        Error: myProfile.Email_Id,
                      ),
                      SizedBox(height: Get.height / 60),

                      //Mobile Numbres
                      Inputfild(
                        keyboardType: TextInputType.number,
                        labal: Profile_Text.Mobile_Number,
                        hint: Parsonal.login.option_data['data']['UserDetails']
                            ['Phone'],
                        controller: myProfile.Mobile_Numbres,
                        onTap: () {
                          myProfile.P_Mobile_Numbres_fun();
                        },
                        onChanged: (val) {
                          myProfile.Mobile_Numbress_validation(val);
                        },
                      ),
                      MyProfile_Error(
                        throww: myProfile.onthrowError,
                        Error: myProfile.Mobile_Numbress,
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
                        hint: Parsonal.login.option_data['data']['UserDetails']
                            ['DOB'],
                        controller: myProfile.BirthDay,
                        onTap: () {
                          myProfile.P_Birthday_fun();
                        },
                        onChanged: (val) {
                          myProfile.Date_OF_Bithday_validation(val);
                        },
                      ),
                      MyProfile_Error(
                        throww: myProfile.onthrowError,
                        Error: myProfile.Date_Of_Birth,
                      ),
                    ],
                  ),
                ),
              ],
            );
          }
        });
      },
    );
  }
}
