// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import '../../../../../../../controller/Logic_Conroller/Screen_Logic/Profile_Logic/My_Profile_Logic(Tabbar)/Navi_Icons/(My_Profile)_Navi_Icons.dart';
import '../../../../../../../controller/MY_ProfileController/My_ProfileController.dart';
import '../../../../../app_String.dart';
import '../../../../../app_color.dart';
import '../../../../Container/profile_Info.dart';

class Address extends StatefulWidget {
  const Address({super.key});

  @override
  State<Address> createState() => _AddressState();
}

class _AddressState extends State<Address> {
  TextEditingController Street_Address = TextEditingController();
  TextEditingController Post_Code = TextEditingController();
  TextEditingController Select_Province = TextEditingController();
  TextEditingController Select_City = TextEditingController();

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
                  Text(
                    Profile_Text.Street_Address,
                    style: TextStyle(
                      fontSize: Get.width / 24,
                      color: AppColor.select_check_color,
                    ),
                  ),
                  TextField(
                    controller: Street_Address,
                    decoration: InputDecoration(
                      hintText: Profile_Text.Street_Address,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColor.select_check_color,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColor.select_check_color,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: Get.height / 50),

                  //Post Code
                  Text(
                    Profile_Text.Post_Code,
                    style: TextStyle(
                      fontSize: Get.width / 24,
                      color: AppColor.select_check_color,
                    ),
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: Post_Code,
                    decoration: InputDecoration(
                      hintText: Profile_Text.Post_Code,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColor.select_check_color,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColor.select_check_color,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: Get.height / 50),

                  //Select Province
                  Text(
                    Profile_Text.Select_Province,
                    style: TextStyle(
                      fontSize: Get.width / 24,
                      color: AppColor.select_check_color,
                    ),
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: Select_Province,
                    decoration: InputDecoration(
                      hintText: Profile_Text.Select_Province,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColor.select_check_color,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColor.select_check_color,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: Get.height / 50),

                  //Select city
                  Text(
                    Profile_Text.Select_City,
                    style: TextStyle(
                      fontSize: Get.width / 24,
                      color: AppColor.select_check_color,
                    ),
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: Select_City,
                    decoration: InputDecoration(
                      hintText: Profile_Text.Select_City,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColor.select_check_color,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColor.select_check_color,
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
