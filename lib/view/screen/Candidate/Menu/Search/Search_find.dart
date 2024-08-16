// ignore_for_file: file_names, camel_case_types, non_constant_identifier_names, prefer_const_constructors, avoid_print, invalid_use_of_protected_member

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hirexpert/controller/API_Controller/Candidate/Collction/Login/login_API_controller.dart';
import 'package:hirexpert/controller/API_Controller/Candidate/Menu/Home/isFavration_Controllers.dart';
import 'package:hirexpert/controller/API_handler/Candidate/Menu/Search/Search_Hendal.dart';
import 'package:hirexpert/view/utils/app_String.dart';
import 'package:hirexpert/view/utils/app_color.dart';
import 'package:hirexpert/view/utils/app_icon.dart';
import '../../../../utils/app_loder.dart';
import '../../../../utils/common/List/jobSearch.dart';
import '../../../../utils/common/Popup/Candidate/Search_Job(Conatiner).dart';
import 'Applied_NotApplied/Details_Search.dart';

class Search_find extends StatelessWidget {
  final String onString;
  final SearchHendal searchHandler = Get.put(SearchHendal());
  final IsfavrationControllers isfavication = Get.put(IsfavrationControllers());
  final OptionApiController login = Get.put(OptionApiController());

  Search_find({super.key, required this.onString});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        width: Get.width,
        height: Get.height,
        decoration: BoxDecoration(color: AppColor.Full_body_color),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: Get.height / 50),
            Searching(OnString: onString),
            SizedBox(
              height: Get.height / 1.6,
              child: Obx(() {
                if (searchHandler.Search.isLoding.value) {
                  return Center(
                    child: Image.asset(AppLoder.infinityloder_without_background),
                  );
                } else if (searchHandler.Search.Search_data.value['data'] == null) {
                  return Center(
                    child: Text(API_Error.null_data),
                  );
                } else {
                  return ListView.builder(
                    itemCount: searchHandler.Search.Search_data.value['data'].length,
                    itemBuilder: (BuildContext context, int index) {
                      final jobData = searchHandler.Search.Search_data.value['data'][index];
                      return InkWell(
                        onTap: () {
                          Get.to(
                            () => Details(
                              Icon: jobData['ComLogo'],
                              Job_Tital: jobData['JobTitle'],
                              Language: jobData['TechName'],
                              Commpany: jobData['ComName'],
                              Working: jobData["WorkWeek"],
                              Location: jobData["Location"],
                              Job_time: jobData['JobType'],
                              Exp: jobData["Experience"],
                              lake: jobData["Salary"],
                              Hybrid: jobData["WorkSet"],
                              stats: jobData["FormatDt"],
                              saveonTap: () {
                                isfavication.IsfavrationControllers_fuction(
                                  CandidateId: login.option_data['data']['UserDetails']['CandidateId'],
                                  JobId: '10',
                                  IsLike: isfavication.isFavration.value.isFavourite == 1 ? '1' : '0',
                                  Tokan: login.option_data['data']['LoginToken'],
                                );
                                print("Tab");
                              },
                              saving: (isfavication.isFavration.value.isFavourite == 1) ? SvgPicture.asset(AppIcons.bookmark) : SvgPicture.asset(AppIcons.save),
                            ),
                          );
                        },
                        child: JobSearch(
                          saveonTap: () {searchHandler;},
                          savechild: (isfavication.isFavration.value.isFavourite == 1) ? SvgPicture.asset(AppIcons.bookmark) : SvgPicture.asset(AppIcons.save),
                          top: BorderSide(color: AppColor.Bottam_color),
                          Icon: jobData['ComLogo'],
                          Job_Tital: jobData['JobTitle'],
                          Language: jobData['TechName'],
                          Commpany: jobData['ComName'],
                          Working: jobData["WorkWeek"],
                          Location: jobData["Location"],
                          Job_time: jobData['JobType'],
                          Exp: jobData["Experience"],
                          lake: jobData["Salary"],
                          Hybrid: jobData["WorkSet"],
                          stats: jobData["FormatDt"],
                        ),
                      );
                    },
                  );
                }
              }),
            ),
          ],
        ),
      ),
    );
  }
}
