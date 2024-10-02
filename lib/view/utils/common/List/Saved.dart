// ignore_for_file: camel_case_types, non_constant_identifier_names, invalid_use_of_protected_member

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hirexpert/controller/API_handler/Candidate/Menu/Home/Sarching_Saving_API.dart';
import 'package:hirexpert/view/screen/Candidate/Menu/Home/Applied/Details_Applid.dart';
import 'package:hirexpert/view/utils/app_loder.dart';
import 'package:hirexpert/view/utils/common/List/jobSearch.dart';
import '../../../screen/Candidate/Menu/Home/saving/Details_Saving.dart';
import '../../app_String.dart';
import '../../app_color.dart';
import '../../app_icon.dart';

class Seved_List extends StatelessWidget {
  final SarchingSavingApi Saving_Apis = Get.put(SarchingSavingApi());

  Seved_List({super.key});

  @override
  Widget build(BuildContext context) {
    Saving_Apis.favourlist.onInit();
    Saving_Apis.onInit();

    return Obx(() {
      if (Saving_Apis.favourlist.isloding.value) {
        return Center(child: Image.asset(
            AppLoder.infinityloder_without_background,
            scale: Get.width / 250),);
      } else if (Saving_Apis.favourlist.data.value['data'] == null) {
        return Center(child: Text(API_Error.null_data));
      } else {
        return Container(
          height: Get.height,
          width: Get.width,
          decoration: BoxDecoration(color: AppColor.Full_body_color),
          child: ListView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            itemCount: Saving_Apis.favourlist.data.value['data'].length,
            itemBuilder: (BuildContext context, int index) {
              var jobData = Saving_Apis.favourlist.data.value['data'][index];
              return JobSearch(
                onTap: () {
                  Get.to(() =>
                      DetailsSaving(
                        Icon: jobData['ComLogo'],
                        Job_Tital: jobData['JobTitle'],
                        Language: jobData['TechName'],
                        Commpany: jobData['ComName'],
                        Working: jobData['WorkWeek'],
                        Location: jobData['Location'],
                        Job_time: jobData['JobType'],
                        Exp: jobData['Experience'],
                        lake: jobData['Salary'],
                        Hybrid: jobData['WorkSet'],
                        stats: jobData['FormatDt'],
                          saving: SvgPicture.asset(AppIcons.bookmark),
                      ),);
                },
                Icon: jobData['ComLogo'],
                Job_Tital: jobData['JobTitle'],
                Language: jobData['TechName'],
                Commpany: jobData['ComName'],
                Working: jobData['WorkWeek'],
                Location: jobData['Location'],
                Job_time: jobData['JobType'],
                Exp: jobData['Experience'],
                lake: jobData['Salary'],
                Hybrid: jobData['WorkSet'],
                stats: jobData['FormatDt'],
                savechild: SvgPicture.asset(AppIcons.bookmark),
                top: BorderSide(color: AppColor.Bottam_color),
                bottam: BorderSide(color: AppColor.Bottam_color),
              );
            },
          ),
        );
      }
    });
  }
}
