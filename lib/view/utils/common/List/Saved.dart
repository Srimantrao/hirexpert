// ignore_for_file: file_names, camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../../controller/API_Cobtroller/Candidate/Menu/Search/Search_API_Controller.dart';
import '../../../../modal/Job/jobSearch_list.dart';
import '../../app_String.dart';
import '../../app_color.dart';
import '../../app_icon.dart';

class Seved_List extends StatefulWidget {
  const Seved_List({
    super.key,
  });

  @override
  State<Seved_List> createState() => _Seved_ListState();
}

class _Seved_ListState extends State<Seved_List> {
  final SearchApiController _Search = Get.put(SearchApiController());

  @override
  void initState() {
    Future.microtask(() async {
      await _Search.SearchApiController_fuction(
        Timezone: 'asia/kolkata',
        CandidateId: '61',
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Obx(() {
      if (_Search.isLoding.value) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      } else if (_Search.Search_data == null) {
        return const Center(
          child: Text(API_Error.null_data),
        );
      } else {
        return ListView.builder(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          itemCount: saveshowjob.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: size.height / 3.8,
              width: size.width,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: AppColor.Bottam_color,
                  ),
                  bottom: const BorderSide(
                    color: Colors.transparent,
                  ),
                ),
                color: AppColor.Full_body_color,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: size.width / 40,
                        ),
                        child: Container(
                          width: size.width / 5.5,
                          height: size.height / 12,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              size.width / 30,
                            ),
                            color: showjob[index]["Container_color"],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Image.network(
                              // _Search.Search_data['data'][index]['ComLogo'],
                              saveshowjob[index]['ComLogo'],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: size.width / 50),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    // _Search.Search_data['data'][index]
                                    //     ["JobTitle"],
                                    saveshowjob[index]['JobTitle'],
                                    style: TextStyle(
                                      color: AppColor.subcolor,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            width: Get.width / 2,
                            child: Text(
                              // _Search.Search_data['data'][index]["TechName"],
                              saveshowjob[index]['TechName'],
                              style: TextStyle(
                                fontSize: size.width / 23,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Text(
                            // _Search.Search_data['data'][index]["ComName"],
                            saveshowjob[index]['ComName'],
                            style: TextStyle(
                              fontSize: size.width / 26,
                              fontWeight: FontWeight.w400,
                              color: AppColor.Button_color,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: size.width / 7),
                      SvgPicture.asset(AppIcons.bookmark),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: size.width / 3.2,
                            height: size.height / 25,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                size.width / 60,
                              ),
                              color: AppColor.ditalis_conatiner,
                            ),
                            child: Center(
                              child: Text(
                                // _Search.Search_data['data'][index]["JobType"],
                                saveshowjob[index]['JobType'],
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: size.width / 30,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: size.width / 40),
                          Container(
                            width: size.width / 7,
                            height: size.height / 25,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                size.width / 60,
                              ),
                              color: AppColor.ditalis_conatiner,
                            ),
                            child: Center(
                              child: Text(
                                // _Search.Search_data['data'][index]["Location"],
                                saveshowjob[index]['Location'],
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: size.width / 30,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: size.width / 40),
                          Container(
                            width: size.width / 5,
                            height: size.height / 25,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                size.width / 60,
                              ),
                              color: AppColor.ditalis_conatiner,
                            ),
                            child: Center(
                              child: Text(
                                // _Search.Search_data['data'][index]["JobType"],
                                saveshowjob[index]['JobType'],
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: size.width / 30,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: size.height / 80),
                      Row(
                        children: [
                          Container(
                            width: size.width / 5,
                            height: size.height / 25,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                size.width / 60,
                              ),
                              color: AppColor.ditalis_conatiner,
                            ),
                            child: Center(
                              child: Text(
                                // _Search.Search_data['data'][index]
                                //     ["Experience"],
                                saveshowjob[index]['Experience'],
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: size.width / 35,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: size.width / 40),
                          Container(
                            width: size.width / 2.5,
                            height: size.height / 25,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                size.width / 60,
                              ),
                              color: AppColor.ditalis_conatiner,
                            ),
                            child: Center(
                              child: Text(
                                // _Search.Search_data['data'][index]["Salary"],
                                saveshowjob[index]['Salary'],
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: size.width / 30,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: size.width / 40),
                          Container(
                            width: size.width / 5,
                            height: size.height / 22,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                size.width / 60,
                              ),
                              color: AppColor.ditalis_conatiner,
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: Get.width / 30),
                              child: Center(
                                child: Text(
                                  // _Search.Search_data['data'][index]["WorkSet"],
                                  saveshowjob[index]['WorkSet'],
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: size.width / 33,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: size.width / 40),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: size.width / 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        // _Search.Search_data['data'][index]["FormatDt"],
                        saveshowjob[index]['FormatDt'],
                        style: TextStyle(
                          color: AppColor.subcolor,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            );
          },
        );
      }
    });
  }
}
