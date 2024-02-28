// ignore_for_file: file_names, non_constant_identifier_names

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

class Address extends StatefulWidget {
  const Address({super.key});

  @override
  State<Address> createState() => _AddressState();
}

class _AddressState extends State<Address> {
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
                myProfile.Address_fun();
              },
              child: Info(
                CircleAvatar_color: Change_Circle(
                  Condition: myProfile.P_Street_Adress == 0 &&
                      myProfile.P_Post_Code == 1 &&
                      myProfile.P_Select_Province == 2 &&
                      myProfile.P_Select_City == 3,
                ),
                info: Profile_Text.Address,
                dropicons: DropIcons(
                  conditional_name: myProfile.Address,
                ),
              ),
            ),
            Visibility(
              visible: myProfile.Address,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: Get.height / 50),

                  //Street Address
                  Inputfild(
                    labal: Profile_Text.Street_Address,
                    hint: Profile_Text.Street_Address,
                    controller: myProfile.Street_Address,
                    onTap: () {
                      myProfile.P_Street_Adress_Fun();
                    },
                    onChanged: (val){
                      myProfile.Street_Adress_validation(val);
                    },
                  ),
                  MyProfile_Error(
                    throww: myProfile.onthrowError,
                    Error: myProfile.Street_Adress,
                  ),
                  SizedBox(height: Get.height / 50),

                  //Post Code
                  Inputfild(
                    labal: Profile_Text.Post_Code,
                    hint: Profile_Text.Post_Code,
                    controller: myProfile.Post_Code,
                    onTap: () {
                      myProfile.P_Post_Code_Fun();
                    },
                    onChanged: (val){
                      myProfile.Post_Codes_validation(val);
                    },
                  ),
                  MyProfile_Error(
                    throww: myProfile.onthrowError,
                    Error: myProfile.Post_Codes,
                  ),
                  SizedBox(height: Get.height / 50),

                  //Select Province
                  Inputfild(
                    labal: Profile_Text.Select_Province,
                    hint: Profile_Text.Select_Province,
                    controller: myProfile.Select_Province,
                    onTap: () {
                      myProfile.P_Select_Province_Fun();
                    },
                    onChanged: (val){
                      myProfile.Select_Provinces_validation(val);
                    },
                  ),
                  MyProfile_Error(
                    throww: myProfile.onthrowError,
                    Error: myProfile.Select_Provinces,
                  ),
                  SizedBox(height: Get.height / 50),

                  //Select city
                  Inputfild(
                    labal: Profile_Text.Select_City,
                    hint: Profile_Text.Select_City,
                    controller: myProfile.Select_City,
                    onTap: () {
                      myProfile.P_Select_City_Fun();
                    },
                    onChanged: (val){
                      myProfile.Select_Citys_validation(val);
                    },
                  ),
                  MyProfile_Error(
                    throww: myProfile.onthrowError,
                    Error: myProfile.Select_Citys,
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
