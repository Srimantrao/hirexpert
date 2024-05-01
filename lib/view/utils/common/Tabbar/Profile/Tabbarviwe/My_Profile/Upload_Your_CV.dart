// ignore_for_file: file_names, camel_case_types

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hirexpert/view/utils/common/Container/profile_Info.dart';
import 'package:provider/provider.dart';
import '../../../../../../../controller/User_Controller/Candidate_Controller/Logic_Conroller/Screen_Logic/Profile_Logic/My_Profile_Logic(Tabbar)/CircleAvatar_Color/(My_Profile)Circle_color.dart';
import '../../../../../../../controller/User_Controller/Candidate_Controller/Logic_Conroller/Screen_Logic/Profile_Logic/My_Profile_Logic(Tabbar)/Navi_Icons/(My_Profile)_Navi_Icons.dart';
import '../../../../../../../controller/User_Controller/Candidate_Controller/MY_ProfileController/My_ProfileController.dart';
import '../../../../../app_String.dart';
import '../../../../../app_color.dart';
import '../../../../../app_icon.dart';

class Upload_Yor_CV extends StatelessWidget {
  const Upload_Yor_CV({super.key});

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
                myProfile.Upload_lock_fun();
              },
              child: Info(
                info: Profile_Text.Upload_Your_CV,
                CircleAvatar_color:
                    Change_Circle(Condition: myProfile.file != null),
                dropicons: DropIcons(
                  conditional_name: myProfile.Upload_lock,
                ),
              ),
            ),
            Visibility(
              visible: myProfile.Upload_lock,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: Get.height / 60),
                  Text(
                    Profile_Text.Upload,
                    style: TextStyle(
                      color: AppColor.subcolor,
                      fontSize: Get.width / 23,
                    ),
                  ),
                  SizedBox(height: Get.height / 60),
                  InkWell(
                    onTap: () {
                      myProfile.picksinglefile();
                    },
                    child: DottedBorder(
                      color: AppColor.Bottam_color,
                      dashPattern: const [15, 12],
                      child: SizedBox(
                        height: Get.height / 6,
                        width: Get.width,
                        child: Center(
                          child: (myProfile.file != null)
                              ? SvgPicture.asset(AppIcons.PDF_Icon)
                              : Text(
                                  textAlign: TextAlign.center,
                                  Profile_Text.resume,
                                  style: TextStyle(
                                    fontSize: Get.width / 27,
                                    color: AppColor.subcolor,
                                  ),
                                ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: Get.height / 60),
                  Row(
                    children: [
                      Text(
                        Profile_Text.Resume_Link,
                        style: TextStyle(
                          fontSize: Get.width / 25,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      (myProfile.file == null)
                          ? const SizedBox()
                          : Row(
                              children: [
                                SizedBox(width: Get.width / 25),
                                SizedBox(
                                  width: Get.width / 1.7,
                                  child: Text(
                                    myProfile.file!.name,
                                    style: TextStyle(
                                      color: AppColor.Button_color,
                                      decoration: TextDecoration.underline,
                                      fontSize: Get.width / 26,
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FontStyle.italic,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                    ],
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
