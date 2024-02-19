// ignore_for_file: camel_case_types, file_names, non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hirexpert/modal/Dropdowns/drops.dart';
import 'package:hirexpert/view/utils/common/Textfild/Inputfild.dart';
import 'package:provider/provider.dart';
import '../../../../../../../controller/Logic_Conroller/Screen_Logic/Profile_Logic/My_Profile_Logic(Tabbar)/Navi_Icons/(My_Profile)_Navi_Icons.dart';
import '../../../../../../../controller/MY_ProfileController/My_ProfileController.dart';
import '../../../../../app_String.dart';
import '../../../../../app_color.dart';
import '../../../../../app_icon.dart';
import '../../../../Container/profile_Info.dart';
import '../../../../Selection/Information_Selection.dart';

class Educational_Details extends StatefulWidget {
  const Educational_Details({super.key});

  @override
  State<Educational_Details> createState() => _Educational_DetailsState();
}

class _Educational_DetailsState extends State<Educational_Details> {
  TextEditingController Degree = TextEditingController();
  TextEditingController Specialisation = TextEditingController();
  TextEditingController Institute_Name = TextEditingController();
  TextEditingController Passing_Year = TextEditingController();

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
                myProfile.Education_Details_fun();
              },
              child: Info(
                info: Profile_Text.Educational_Detailss,
                dropicons: DropIcons(
                  conditional_name: myProfile.Education_Details,
                ),
              ),
            ),
            Visibility(
              visible: myProfile.Education_Details,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: Get.height / 50),

                  //Degree
                  Inputfild(
                    labal: EditProfile_text.Degree,
                    hint: Profile_Text.Degree,
                    controller: Degree,
                  ),
                  SizedBox(height: Get.height / 50),

                  //Specialisation
                  Inputfild(
                    labal: EditProfile_text.Specialisation,
                    hint: Profile_Text.Specialisation,
                    controller: Specialisation,
                  ),
                  SizedBox(height: Get.height / 50),

                  //Institute Name
                  Inputfild(
                    labal: EditProfile_text.Institute_Name,
                    hint: Profile_Text.Institute_Name,
                    controller: Institute_Name,
                  ),
                  SizedBox(height: Get.height / 50),

                  //Passing Year
                  Infromation_Selection(
                    name: EditProfile_text.Passing_Yea,
                    Hadline: Profile_Text.Select_City,
                    Selectedtext: myProfile.selectedYear,
                    children: List.generate(
                      Years.length,
                      (index) => Text(
                        Years[index],
                        style: TextStyle(
                          fontSize: Get.width / 20,
                        ),
                      ),
                    ),
                    onSelectedItemChanged: (int index) {
                      myProfile.onSelectedItemChanged(index);
                    },
                  ),
                  SizedBox(height: Get.height / 50),

                  //Add Education Details
                  Text(
                    Profile_Text.Add_Educational_Details,
                    style: TextStyle(
                      fontSize: Get.width / 24,
                      fontWeight: FontWeight.w600,
                      color: AppColor.Button_color,
                    ),
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
