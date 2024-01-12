import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:hirexpert/view/utils/aap_image.dart';
import 'package:hirexpert/view/utils/app_color.dart';
import 'package:hirexpert/view/utils/app_icon.dart';
import 'package:provider/provider.dart';

import '../../../controller/DropdownController/SpecializationController.dart';
import '../../utils/app_String.dart';
import '../../utils/common/Dropdown/Specialization_common.dart';

class Specialization extends StatefulWidget {
  const Specialization({super.key});

  @override
  State<Specialization> createState() => _SpecializationState();
}

class _SpecializationState extends State<Specialization> {

  bool visible = true;

  @override
  Widget build(BuildContext context) {
    final speciailChang = Provider.of<SpecializationController_popup>(
      context,
      listen: false,
    );
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: Get.width / 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: Get.height / 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(AppImage.profile, scale: 6),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("HI", style: TextStyle(fontSize: Get.width / 25)),
                    Text("HI", style: TextStyle(fontSize: Get.width / 25)),
                    Text("HI", style: TextStyle(fontSize: Get.width / 25)),
                  ],
                ),
                SizedBox(height: Get.height / 20),

                //Functional Area
                Visibility(
                  visible: visible,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        Specialization_text.area,
                        style: TextStyle(
                          fontSize: Get.width / 25,
                          color: AppColor.subcolor,
                        ),
                      ),
                      const Function_area(),
                      SizedBox(height: Get.height / 50),

                      //Interest
                      Text(
                        Specialization_text.Search_text,
                        style: TextStyle(
                          fontSize: Get.width / 25,
                          color: AppColor.subcolor,
                        ),
                      ),
                      const Interest(),
                      SizedBox(height: Get.height / 50),

                      //Skillset
                      Text(
                        Specialization_text.Skillset,
                        style: TextStyle(
                          fontSize: Get.width / 25,
                          color: AppColor.subcolor,
                        ),
                      ),
                      const Skillset(),
                      SizedBox(height: Get.height / 50),
                    ],
                  ),
                ),

                //Collection
                Text(
                  Specialization_text.Collection,
                  style: TextStyle(
                    fontSize: Get.width / 25,
                    color: AppColor.subcolor,
                  ),
                ),
                InkWell(
                  onTap: (){
                    visible = false;
                    setState(() {});
                  },
                  child: Container(
                    width: Get.width,
                    height: Get.height / 20,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: AppColor.Bottam_color,
                        ),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          Specialization_text.Collection_text,
                          style: TextStyle(
                            fontSize: Get.width / 25,
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
