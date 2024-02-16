// ignore_for_file: file_names, camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import '../../../../../../../controller/Logic_Conroller/Screen_Logic/Profile_Logic/My_Profile_Logic(Tabbar)/Navi_Icons/(My_Profile)_Navi_Icons.dart';
import '../../../../../../../controller/MY_ProfileController/My_ProfileController.dart';
import '../../../../../app_String.dart';
import '../../../../../app_color.dart';
import '../../../../Container/profile_Info.dart';

class Work_Location extends StatefulWidget {
  const Work_Location({super.key});

  @override
  State<Work_Location> createState() => _Work_LocationState();
}

class _Work_LocationState extends State<Work_Location> {
  TextEditingController CTC2 = TextEditingController();
  TextEditingController Preffered_Working_Location = TextEditingController();
  TextEditingController Preffered_Work_Setup = TextEditingController();
  TextEditingController Job_Type_Preferrence = TextEditingController();
  TextEditingController Enter_Notice_Period = TextEditingController();

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
                  Text(
                    Profile_Text.Current_CTC_per_annum,
                    style: TextStyle(
                      fontSize: Get.width / 24,
                      color: AppColor.select_check_color,
                    ),
                  ),
                  TextField(
                    controller: CTC2,
                    decoration: InputDecoration(
                      hintText: Profile_Text.Enter_CTC,
                      enabledBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: AppColor.select_check_color),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: AppColor.select_check_color),
                      ),
                    ),
                  ),
                  SizedBox(height: Get.height / 50),

                  //Preffered Working Location
                  Text(
                    Profile_Text.Preffered_Working_Location,
                    style: TextStyle(
                      fontSize: Get.width / 24,
                      color: AppColor.select_check_color,
                    ),
                  ),
                  TextField(
                    controller: Preffered_Working_Location,
                    decoration: InputDecoration(
                      hintText: Profile_Text.Enter_Preffered_Working_location,
                      enabledBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: AppColor.select_check_color),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: AppColor.select_check_color),
                      ),
                    ),
                  ),
                  SizedBox(height: Get.height / 50),

                  //Preffered Working Location
                  Text(
                    Profile_Text.Preffered_Work_Setup,
                    style: TextStyle(
                      fontSize: Get.width / 24,
                      color: AppColor.select_check_color,
                    ),
                  ),
                  TextField(
                    controller: Preffered_Work_Setup,
                    decoration: InputDecoration(
                      hintText: Profile_Text.Enter_the_Preffered_Work_Setup,
                      enabledBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: AppColor.select_check_color),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: AppColor.select_check_color),
                      ),
                    ),
                  ),
                  SizedBox(height: Get.height / 50),

                  //Job Type Preferrence
                  Text(
                    Profile_Text.Job_Type_Preferrence,
                    style: TextStyle(
                      fontSize: Get.width / 24,
                      color: AppColor.select_check_color,
                    ),
                  ),
                  TextField(
                    controller: Job_Type_Preferrence,
                    decoration: InputDecoration(
                      hintText: Profile_Text.Job_Type_Preferrence,
                      enabledBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: AppColor.select_check_color),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: AppColor.select_check_color),
                      ),
                    ),
                  ),
                  SizedBox(height: Get.height / 50),

                  //Notice Period (days)(Optional)
                  Text(
                    Profile_Text.Notice_Period_days_Optional,
                    style: TextStyle(
                      fontSize: Get.width / 24,
                      color: AppColor.select_check_color,
                    ),
                  ),
                  TextField(
                    controller: Enter_Notice_Period,
                    decoration: InputDecoration(
                      hintText: Profile_Text.Enter_Notice_Period,
                      enabledBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: AppColor.select_check_color),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: AppColor.select_check_color),
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
