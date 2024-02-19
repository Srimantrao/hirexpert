// ignore_for_file: camel_case_types, file_names, non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hirexpert/view/utils/common/Textfild/Inputfild.dart';
import 'package:provider/provider.dart';
import '../../../../../../../controller/Logic_Conroller/Screen_Logic/Profile_Logic/My_Profile_Logic(Tabbar)/Navi_Icons/(My_Profile)_Navi_Icons.dart';
import '../../../../../../../controller/MY_ProfileController/My_ProfileController.dart';
import '../../../../../../../modal/Dropdowns/drops.dart';
import '../../../../../app_String.dart';
import '../../../../../app_color.dart';
import '../../../../../app_icon.dart';
import '../../../../Container/profile_Info.dart';
import '../../../../Selection/Information_Date.dart';
import '../../../../Selection/Information_Selection.dart';

class Work_Experience extends StatefulWidget {
  const Work_Experience({super.key});

  @override
  State<Work_Experience> createState() => _Work_ExperienceState();
}

class _Work_ExperienceState extends State<Work_Experience> {
  bool onthrowError = false;

  bool I_currently_workhere = false;

  TextEditingController Enter_The_Comppany_name = TextEditingController();
  TextEditingController Designation = TextEditingController();
  TextEditingController Year = TextEditingController();

  String SelectdYear = "";
  String Selectdmonth = "";

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
                myProfile.Work_Experience_fun();
              },
              child: Info(
                info: Profile_Text.Work_Experience,
                dropicons: DropIcons(
                  conditional_name: myProfile.Work_Experience,
                ),
              ),
            ),
            Visibility(
              visible: myProfile.Work_Experience,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: Get.height / 50),
                  Container(
                    height: Get.height / 20,
                    width: Get.width,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: AppColor.select_check_color,
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          Profile_Text.fresher,
                          style: TextStyle(
                            fontSize: Get.width / 24,
                          ),
                        ),
                        Switch(
                          materialTapTargetSize: MaterialTapTargetSize.padded,
                          thumbColor: MaterialStatePropertyAll(
                            AppColor.Full_body_color,
                          ),
                          activeColor: AppColor.Button_color,
                          value: myProfile.fresher,
                          onChanged: (val) {
                            myProfile.Fresher_fun(val);
                          },
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: Get.height / 50),
                  Visibility(
                    visible: myProfile.fresher,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          Profile_Text.Total_Experience,
                          style: TextStyle(
                            fontSize: Get.width / 24,
                            color: AppColor.select_check_color,
                          ),
                        ),

                        //Total Experience
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: Get.width / 2.5,
                              child: Infromation_Selection(
                                Hadline: Profile_Text.Enter_Year,
                                Selectedtext: SelectdYear,
                                onSelectedItemChanged: (int index) {
                                  SelectdYear = Years[index];
                                  setState(() {});
                                },
                                children: List.generate(
                                  Years.length,
                                  (index) => Text(
                                    Years[index],
                                    style: TextStyle(
                                      fontSize: Get.width / 20,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: Get.width / 2.5,
                              child: Infromation_Selection(
                                Hadline: Profile_Text.Enter_Month,
                                Selectedtext: Selectdmonth,
                                onSelectedItemChanged: (int index) {
                                  Selectdmonth = Month[index];
                                  setState(() {});
                                },
                                children: List.generate(
                                  Month.length,
                                  (index) => Text(
                                    Month[index],
                                    style: TextStyle(
                                      fontSize: Get.width / 20,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: Get.height / 50),

                        //Company Name
                        Inputfild(
                          labal: Profile_Text.Company_Name,
                          hint: Profile_Text.Enter_The_Comppany_name,
                          controller: Enter_The_Comppany_name,
                        ),
                        SizedBox(height: Get.height / 50),

                        //Designation
                        Inputfild(
                          labal: Profile_Text.Designation,
                          hint: Profile_Text.Enter_The_Designation,
                          controller: Designation,
                        ),
                        SizedBox(height: Get.height / 50),

                        //Duration
                        Text(
                          Profile_Text.Designation,
                          style: TextStyle(
                            fontSize: Get.width / 24,
                            color: AppColor.select_check_color,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: Get.width / 2.5,
                              child: Date_time(
                                controller: Designation,
                                hintString: Profile_Text.Enter_Year,
                              ),
                            ),
                            SizedBox(
                              width: Get.width / 2.5,
                              child: Date_time(
                                controller: Designation,
                                hintString: Profile_Text.Enter_Year,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: Get.height / 50),
                        Column(
                          children: [
                            Row(
                              children: [
                                Checkbox(
                                    value: I_currently_workhere,
                                    onChanged: (val) {
                                      I_currently_workhere = val!;
                                      setState(() {});
                                    }),
                                Text(
                                  Profile_Text.I_currently_work_here,
                                  style: TextStyle(
                                    fontSize: Get.width / 24,
                                    color: AppColor.subcolor,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: Get.height / 50),
                        Text(
                          Profile_Text.Add_Work_Experience,
                          style: TextStyle(
                            fontSize: Get.width / 24,
                            fontWeight: FontWeight.w600,
                            color: AppColor.Button_color,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
