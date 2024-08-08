// ignore_for_file: file_names, camel_case_types, prefer_const_constructors, unnecessary_null_comparison, prefer_const_literals_to_create_immutables

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hirexpert/controller/API_handler/Candidate/Menu/profile/myprofile/upload_cv.dart';
import 'package:hirexpert/view/utils/app_loder.dart';
import 'package:hirexpert/view/utils/common/Container/profile_Info.dart';
import 'package:provider/provider.dart';
import '../../../../../../../controller/User_Controller/Candidate_Controller/Logic_Conroller/Screen_Logic/Profile_Logic/My_Profile_Logic(Tabbar)/CircleAvatar_Color/(My_Profile)Circle_color.dart';
import '../../../../../../../controller/User_Controller/Candidate_Controller/Logic_Conroller/Screen_Logic/Profile_Logic/My_Profile_Logic(Tabbar)/Navi_Icons/(My_Profile)_Navi_Icons.dart';
import '../../../../../../../controller/User_Controller/Candidate_Controller/MY_ProfileController/My_ProfileController.dart';
import '../../../../../app_String.dart';
import '../../../../../app_color.dart';
import '../../../../../app_icon.dart';

class Upload_Yor_CV extends StatelessWidget {
  final UploadCv cv = Get.put(UploadCv());

  Upload_Yor_CV({super.key});

  @override
  Widget build(BuildContext context) {
    final myProfile = Provider.of<My_ProfileController>(context, listen: false);
    return Consumer<My_ProfileController>(
      builder: (BuildContext context, value, Widget? child) {
        return Obx(() {
          if (cv.login.isLodingvalue.value) {
            return Center(child: Image.asset(AppLoder.infinityloder_without_background));
          } else if (cv.login.option_data['data'] == null || cv.login.option_data == null) {
            return Center(child: Text(API_Error.null_data));
          } else {
            return Column(
              children: [
                InkWell(
                  onTap: () {
                    myProfile.Upload_lock_fun();
                  },
                  child: Info(
                    info: Profile_Text.Upload_Your_CV,
                    CircleAvatar_color: Change_Circle(Condition: myProfile.file != null),
                    dropicons: DropIcons(conditional_name: myProfile.Upload_lock),
                  ),
                ),
                Visibility(
                  visible: myProfile.Upload_lock,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: Get.height / 60),
                      Text(Profile_Text.Upload, style: TextStyle(color: AppColor.subcolor, fontSize: Get.width / 23)),
                      SizedBox(height: Get.height / 60),
                      InkWell(
                        onTap: () {
                          myProfile.picksinglefile();
                        },
                        child: DottedBorder(
                          color: AppColor.Bottam_color,
                          dashPattern: [15,12],
                          child: SizedBox(
                            height: Get.height / 6,
                            width: Get.width,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(AppIcons.PDF_Icon),
                                SizedBox(height: Get.height / 50),
                                Text(
                                  textAlign: TextAlign.center,
                                  cv.login.option_data['data']['UserDetails']['ResumeDetails']['ResumeName']
                                      .toString(),
                                  style: TextStyle(fontSize: Get.width / 27, color: AppColor.subcolor),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: Get.height / 60),
                      Row(
                        children: [
                          Text(
                            Profile_Text.Resume_Link,
                            style: TextStyle(fontSize: Get.width / 25, fontWeight: FontWeight.w600),
                          ),
                          Row(
                            children: [
                              SizedBox(width: Get.width / 25),
                              SizedBox(
                                width: Get.width / 2,
                                child: Text(
                                  cv.login.option_data['data']['UserDetails']['ResumeDetails']['UploadName'],
                                  style: TextStyle(color: AppColor.Button_color, decoration: TextDecoration.underline, fontSize: Get.width / 26, fontWeight: FontWeight.w600, fontStyle: FontStyle.italic),
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
          }
        });
      },
    );
  }
}
