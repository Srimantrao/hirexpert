// ignore_for_file: file_names, camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hirexpert/view/utils/common/Textfild/Inputfild.dart';
import 'package:provider/provider.dart';
import '../../../../../../../controller/Candidate_Controller/Logic_Conroller/Screen_Logic/Profile_Logic/My_Profile_Logic(Tabbar)/CircleAvatar_Color/(My_Profile)Circle_color.dart';
import '../../../../../../../controller/Candidate_Controller/Logic_Conroller/Screen_Logic/Profile_Logic/My_Profile_Logic(Tabbar)/Navi_Icons/(My_Profile)_Navi_Icons.dart';
import '../../../../../../../controller/Candidate_Controller/Logic_Conroller/Screen_Logic/Profile_Logic/My_Profile_Logic(Tabbar)/Pass_Error/(My_Profile)_Pass_Error.dart';
import '../../../../../../../controller/Candidate_Controller/MY_ProfileController/My_ProfileController.dart';
import '../../../../../app_String.dart';
import '../../../../Container/profile_Info.dart';

class Work_Location extends StatefulWidget {
  const Work_Location({super.key});

  @override
  State<Work_Location> createState() => _Work_LocationState();
}

class _Work_LocationState extends State<Work_Location> {
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
                myProfile.Work_Location_fun();
              },
              child: Info(
                CircleAvatar_color: Change_Circle(
                  Condition: myProfile.P_CTC_Current == 0 &&
                      myProfile.Preffered_Working == 1 &&
                      myProfile.Preffered_Work_Working == 2 &&
                      myProfile.Job_Type_Preferrence == 3 &&
                      myProfile.Notice_Period == 4,
                ),
                info: Profile_Text.Work_Location,
                dropicons: DropIcons(
                  conditional_name: myProfile.Work_Location,
                ),
              ),
            ),
            Visibility(
              visible: myProfile.Work_Location,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: Get.height / 50),

                  //CTC
                  Inputfild(
                    labal: Profile_Text.Current_CTC_per_annum,
                    hint: Profile_Text.Enter_CTC,
                    controller: myProfile.CTC2_text,
                    onTap: () {
                      myProfile.P_CTC_Current_fun();
                    },
                    onChanged: (val) {
                      myProfile.P_CTC_Currents_validation(val);
                    },
                  ),
                  MyProfile_Error(
                    throww: myProfile.onthrowError,
                    Error: myProfile.P_CTC_Currents,
                  ),
                  SizedBox(height: Get.height / 50),

                  //Preffered Working Location
                  Inputfild(
                    labal: Profile_Text.Preffered_Working_Location,
                    hint: Profile_Text.Enter_Preffered_Working_location,
                    controller: myProfile.Preffered_Working_Location_text,
                    onTap: () {
                      myProfile.Preffered_Working_fun();
                    },
                    onChanged: (val) {
                      myProfile.Preffered_Workings_validation(val);
                    },
                  ),
                  MyProfile_Error(
                    throww: myProfile.onthrowError,
                    Error: myProfile.Preffered_Workings,
                  ),
                  SizedBox(height: Get.height / 50),

                  //Preffered Working Setup
                  Inputfild(
                    labal: Profile_Text.Preffered_Work_Setup,
                    hint: Profile_Text.Enter_the_Preffered_Work_Setup,
                    controller: myProfile.Preffered_Work_Setup_text,
                    onTap: () {
                      myProfile.Preffered_Work_Working_fun();
                    },
                    onChanged: (val) {
                      myProfile.Preffered_Work_Workings_validation(val);
                    },
                  ),
                  MyProfile_Error(
                    throww: myProfile.onthrowError,
                    Error: myProfile.PPreffered_Work_Workings,
                  ),
                  SizedBox(height: Get.height / 50),

                  //Job Type Preferrence
                  Inputfild(
                    labal: Profile_Text.Job_Type_Preferrence,
                    hint: Profile_Text.Job_Type_Preferrence,
                    controller: myProfile.Job_Type_Preferrence_text,
                    onTap: () {
                      myProfile.Job_Type_Preferrence_fun();
                    },
                    onChanged: (val) {
                      myProfile.Job_Type_Preferrences_validation(val);
                    },
                  ),
                  MyProfile_Error(
                    throww: myProfile.onthrowError,
                    Error: myProfile.Job_Type_Preferrences,
                  ),
                  SizedBox(height: Get.height / 50),

                  //Notice Period (days)(Optional)
                  Inputfild(
                    labal: Profile_Text.Notice_Period_days_Optional,
                    hint: Profile_Text.Enter_Notice_Period,
                    controller: myProfile.Enter_Notice_Period_text,
                    onTap: () {
                      myProfile.Notice_Period_fun();
                    },
                    onChanged: (val) {
                      myProfile.Notice_Periods_validation(val);
                    },
                  ),
                  MyProfile_Error(
                    throww: myProfile.onthrowError,
                    Error: myProfile.Notice_Periods,
                  ),
                  SizedBox(height: Get.height / 50),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
