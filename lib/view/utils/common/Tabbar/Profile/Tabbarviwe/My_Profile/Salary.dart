// ignore_for_file: file_names, non_constant_identifier_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hirexpert/view/utils/common/Textfild/Inputfild.dart';
import 'package:provider/provider.dart';
import '../../../../../../../controller/User_Controller/Candidate_Controller/Logic_Conroller/Screen_Logic/Profile_Logic/My_Profile_Logic(Tabbar)/CircleAvatar_Color/(My_Profile)Circle_color.dart';
import '../../../../../../../controller/User_Controller/Candidate_Controller/Logic_Conroller/Screen_Logic/Profile_Logic/My_Profile_Logic(Tabbar)/Navi_Icons/(My_Profile)_Navi_Icons.dart';
import '../../../../../../../controller/User_Controller/Candidate_Controller/Logic_Conroller/Screen_Logic/Profile_Logic/My_Profile_Logic(Tabbar)/Pass_Error/(My_Profile)_Pass_Error.dart';
import '../../../../../../../controller/User_Controller/Candidate_Controller/MY_ProfileController/My_ProfileController.dart';
import '../../../../../app_String.dart';
import '../../../../Container/profile_Info.dart';


class Salary_Profile extends StatelessWidget {
  const Salary_Profile({super.key});

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
                myProfile.Salary_fun();
              },
              child: Info(
                CircleAvatar_color: Change_Circle(
                  Condition: myProfile.CTC == 0 && myProfile.Expected == 1,
                ),
                info: Profile_Text.Salarys,
                dropicons: DropIcons(
                  conditional_name: myProfile.Salary,
                ),
              ),
            ),
            Visibility(
              visible: myProfile.Salary,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: Get.height / 50),

                  //CTC
                  Inputfild(
                    labal: Profile_Text.CTC,
                    hint: Profile_Text.Enter_CTC,
                    controller: myProfile.CTCss,
                    onTap: () {
                      myProfile.CTC_Fun();
                    },
                    onChanged: (val) {
                      myProfile.CTCs_Validation(val);
                    },
                  ),
                  MyProfile_Error(
                    throww: myProfile.onthrowError,
                    Error: myProfile.CTCS,
                  ),
                  SizedBox(height: Get.height / 50),

                  //Expected
                  Inputfild(
                    labal: Profile_Text.CTC,
                    hint: Profile_Text.Enter_Expected,
                    controller: myProfile.Expanded,
                    onTap: () {
                      myProfile.Expected_Fun();
                    },
                    onChanged: (val) {
                      myProfile.Expected_Validation(val);
                    },
                  ),
                  MyProfile_Error(
                    throww: myProfile.onthrowError,
                    Error: myProfile.Expecteds,
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
