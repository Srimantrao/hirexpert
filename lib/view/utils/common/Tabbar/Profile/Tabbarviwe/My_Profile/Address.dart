// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hirexpert/view/utils/common/Textfild/Inputfild.dart';
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
                  Inputfild(
                    labal: Profile_Text.Street_Address,
                    hint: Profile_Text.Street_Address,
                    controller: Street_Address,
                  ),
                  SizedBox(height: Get.height / 50),

                  //Post Code
                  Inputfild(
                      labal: Profile_Text.Post_Code,
                      hint: Profile_Text.Post_Code,
                      controller: Post_Code
                  ),
                  SizedBox(height: Get.height / 50),

                  //Select Province
                  Inputfild(
                      labal: Profile_Text.Select_Province,
                      hint: Profile_Text.Select_Province,
                      controller: Select_Province,
                  ),
                  SizedBox(height: Get.height / 50),

                  //Select city
                  Inputfild(
                      labal: Profile_Text.Select_City,
                      hint: Profile_Text.Select_City,
                      controller: Select_City,
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
