// ignore_for_file: file_names, camel_case_types, prefer_const_constructors_in_immutables, non_constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hirexpert/controller/API_handler/Candidate/Menu/Home/Declined_API_hendler.dart';
import 'package:hirexpert/view/utils/app_loder.dart';
import '../../../../../../modal/Job/jobSearch_list.dart';
import '../../../../../utils/app_String.dart';
import '../../../../../utils/app_color.dart';
import '../../../../../utils/app_icon.dart';
import 'Details_Declined.dart';

class Show_Declined extends StatelessWidget {
  final DeclinedApiHendler Declined_offer = Get.put(DeclinedApiHendler());

  Show_Declined({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: size.height / 10,
          backgroundColor: AppColor.Full_body_color,
          elevation: 0,
          automaticallyImplyLeading: false,
          title: const Text(
            My_Jobs_Screen.Declined,
            style: TextStyle(
              fontWeight: FontWeight.w700,
            ),
          ),
          actions: [
            const Icon(Icons.notifications),
            SizedBox(width: size.width / 50),
          ],
        ),
        body: Obx(() {
          if (Declined_offer.Decline.isLoding.value) {
            return Scaffold(
              body: Container(
                height: Get.height,
                width: Get.width,
                decoration: BoxDecoration(
                  color: AppColor.Full_body_color,
                ),
                child: Center(
                  child: Image.asset(AppLoder.infinityloder_without_background),
                ),
              ),
            );
          } else if (Declined_offer.Decline.data['data'] == null ||
              Declined_offer.Decline.data == null) {
            return Scaffold(
              body: Container(
                height: Get.height,
                width: Get.width,
                decoration: BoxDecoration(
                  color: AppColor.Full_body_color,
                ),
                child: Center(
                  child: Text(
                    "Your Data is Empty !",
                    style: TextStyle(
                      fontSize: Get.width / 25,
                    ),
                  ),
                ),
              ),
            );
          } else {
            return Container(
              height: size.height,
              width: size.width,
              decoration: BoxDecoration(
                color: AppColor.Full_body_color,
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: size.width / 30,
                ),
                child: ListView.builder(
                  itemCount: 1,
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        Get.to(
                          () => Details_Declined(
                            Icon: Declined_offer.Decline.data['data'][index]
                                ["ComLogo"],
                            Color_container: showjob[index]["Container_color"],
                            Job_Tital: Declined_offer.Decline.data['data']
                                [index]["JobTitle"],
                            Language: Declined_offer.Decline.data['data'][index]
                                ["TechName"],
                            Commpany: Declined_offer.Decline.data['data'][index]
                                ["ComName"],
                            Working: Declined_offer.Decline.data['data'][index]
                                ["Working"],
                            Location: Declined_offer.Decline.data['data'][index]
                                ["Location"],
                            Job_time: Declined_offer.Decline.data['data'][index]
                                ["JobType"],
                            Exp: Declined_offer.Decline.data['data'][index]
                                ["Experience"],
                            lake: Declined_offer.Decline.data['data'][index]
                                ["Salary"],
                            Hybrid: Declined_offer.Decline.data['data'][index]
                                ["WorkSet"],
                            stats: Declined_offer.Decline.data['data'][index]
                                ["stats"],
                          ),
                        );
                      },
                      child: Container(
                        height: size.height / 3.8,
                        width: size.width,
                        decoration: BoxDecoration(
                          border: Border(
                            top: BorderSide(
                              color: AppColor.Bottam_color,
                            ),
                            bottom: BorderSide(
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
                                          size.width / 30),
                                      color: showjob[index]["Container_color"],
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(15),
                                      child: SvgPicture.asset(Declined_offer
                                          .Decline
                                          .data['data'][index]["ComLogo"]),
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
                                              Declined_offer
                                                      .Decline.data['data']
                                                  [index]["JobTitle"],
                                              style: TextStyle(
                                                color: AppColor.subcolor,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Text(
                                      Declined_offer.Decline.data['data'][index]
                                          ["TechName"],
                                      style: TextStyle(
                                        fontSize: size.width / 23,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text(
                                      Declined_offer.Decline.data['data'][index]
                                          ["ComName"],
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
                                          Declined_offer.Decline.data['data']
                                              [index]["Working"],
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
                                          Declined_offer.Decline.data['data']
                                              [index]["Location"],
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
                                            size.width / 60),
                                        color: AppColor.ditalis_conatiner,
                                      ),
                                      child: Center(
                                        child: Text(
                                          Declined_offer.Decline.data['data']
                                              [index]["JobType"],
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
                                          Declined_offer.Decline.data['data']
                                              [index]["Experience"],
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
                                          Declined_offer.Decline.data['data']
                                              [index]["Salary"],
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
                                          Declined_offer.Decline.data['data']
                                              [index]["WorkSet"],
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: size.width / 30,
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
                                  Declined_offer.Decline.data['data'][index]
                                      ["stats"],
                                  style: TextStyle(
                                    color: AppColor.subcolor,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            );
          }
        }));
  }
}
