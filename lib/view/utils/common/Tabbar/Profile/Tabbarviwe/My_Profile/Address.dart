// ignore_for_file: file_names, non_constant_identifier_names, prefer_const_constructors, must_be_immutable, unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hirexpert/controller/API_Controller/Candidate/Collction/Login/login_API_controller.dart';
import 'package:hirexpert/controller/API_handler/Candidate/Menu/profile/myprofile/Address.dart';
import 'package:hirexpert/view/utils/app_loder.dart';
import 'package:hirexpert/view/utils/common/Textfild/Inputfild.dart';
import 'package:provider/provider.dart';
import '../../../../../../../controller/User_Controller/Candidate_Controller/Logic_Conroller/Screen_Logic/Profile_Logic/My_Profile_Logic(Tabbar)/CircleAvatar_Color/(My_Profile)Circle_color.dart';
import '../../../../../../../controller/User_Controller/Candidate_Controller/Logic_Conroller/Screen_Logic/Profile_Logic/My_Profile_Logic(Tabbar)/Navi_Icons/(My_Profile)_Navi_Icons.dart';
import '../../../../../../../controller/User_Controller/Candidate_Controller/Logic_Conroller/Screen_Logic/Profile_Logic/My_Profile_Logic(Tabbar)/Pass_Error/(My_Profile)_Pass_Error.dart';
import '../../../../../../../controller/User_Controller/Candidate_Controller/MY_ProfileController/My_ProfileController.dart';
import '../../../../../app_String.dart';
import '../../../../Container/profile_Info.dart';

class Address extends StatelessWidget {
  final Address_Hendal Addresss = Get.put(Address_Hendal());

  Address({super.key});

  OptionApiController login = Get.put(OptionApiController());

  @override
  Widget build(BuildContext context) {
    final myProfile = Provider.of<My_ProfileController>(
      context,
      listen: false,
    );
    return Consumer<My_ProfileController>(
      builder: (BuildContext context, value, Widget? child) {
        return Obx(() {
          if (Addresss.login.isLodingvalue.value) {
            return Center(
              child: Image.asset(AppLoder.infinityloder_without_background),
            );
          } else if (Addresss.login.option_data['data'] == null ||
              Addresss.login.option_data == null) {
            return Text(API_Error.null_data);
          } else {
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
                        hint: Addresss.login.option_data['data']['UserDetails']
                            ['Address'],
                        controller: myProfile.Street_Address,
                        onTap: () {
                          myProfile.P_Street_Adress_Fun();
                        },
                        onChanged: (val) {
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
                        hint: Addresss.login.option_data['data']['UserDetails']
                            ['PostCode'],
                        controller: myProfile.Post_Code,
                        onTap: () {
                          myProfile.P_Post_Code_Fun();
                        },
                        onChanged: (val) {
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
                        hint: Addresss.login.option_data['data']['UserDetails']
                            ['ProvinceId'],
                        controller: myProfile.Select_Province,
                        onTap: () {
                          myProfile.P_Select_Province_Fun();
                        },
                        onChanged: (val) {
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
                        hint: Addresss.login.option_data['data']['UserDetails']
                            ['CityName'],
                        controller: myProfile.Select_City,
                        onTap: () {
                          myProfile.P_Select_City_Fun();
                        },
                        onChanged: (val) {
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
          }
        });
      },
    );
  }
}
