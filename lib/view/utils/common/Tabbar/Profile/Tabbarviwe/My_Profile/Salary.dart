// ignore_for_file: file_names, non_constant_identifier_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import '../../../../../../../controller/Logic_Conroller/Screen_Logic/Profile_Logic/My_Profile_Logic(Tabbar)/Navi_Icons/(My_Profile)_Navi_Icons.dart';
import '../../../../../../../controller/MY_ProfileController/My_ProfileController.dart';
import '../../../../../app_String.dart';
import '../../../../../app_color.dart';
import '../../../../Container/profile_Info.dart';
import '../../../../Popup/fresher_comm.dart';

class Salary_Profile extends StatefulWidget {
  const Salary_Profile({super.key});

  @override
  State<Salary_Profile> createState() => _Salary_ProfileState();
}

class _Salary_ProfileState extends State<Salary_Profile> {

  TextEditingController CTC = TextEditingController();
  TextEditingController Expanded = TextEditingController();

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
                  Text(
                    Profile_Text.CTC,
                    style: TextStyle(
                      fontSize: Get.width / 24,
                      color: AppColor.select_check_color,
                    ),
                  ),
                  TextField(
                    controller: CTC,
                    decoration: InputDecoration(
                      hintText: Profile_Text.Enter_CTC,
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColor.Bottam_color,
                        ),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColor.Bottam_color,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: Get.height / 50),

                  //Expected
                  Text(
                    Profile_Text.CTC,
                    style: TextStyle(
                      fontSize: Get.width / 24,
                      color: AppColor.select_check_color,
                    ),
                  ),
                  TextField(
                    controller: Expanded,
                    decoration: InputDecoration(
                      hintText: Profile_Text.Enter_Expected,
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColor.Bottam_color,
                        ),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColor.Bottam_color,
                        ),
                      ),
                    ),
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
