// ignore_for_file: file_names, camel_case_types, non_constant_identifier_names, prefer_const_constructors, invalid_use_of_protected_member

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hirexpert/controller/API_handler/Candidate/Menu/Home/offer_API_handler.dart';
import 'package:hirexpert/view/utils/app_loder.dart';
import '../../../../../../modal/Job/jobSearch_list.dart';
import '../../../../../utils/app_String.dart';
import '../../../../../utils/app_color.dart';
import '../../../../../utils/app_icon.dart';
import 'Details_Offer.dart';

class Show_Offer extends StatelessWidget {
  final OfferApiHandler offing = Get.put(OfferApiHandler());

  Show_Offer({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: size.height / 10,
        backgroundColor: AppColor.Full_body_color,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text(
          My_Jobs_Screen.Offer,
          style: TextStyle(
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          Icon(Icons.notifications),
          SizedBox(width: size.width / 50),
        ],
      ),
      body: Obx(
        () {
          if (offing.offer.isLoding.value) {
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
          } else if (offing.offer.data.value['data'] == null) {
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
                          () => Details_Offer(
                            Icon: offing.offer.data.value['data'][index]["ComLogo"],
                            Job_Tital: offing.offer.data.value['data'][index]["JobTitle"],
                            Language: offing.offer.data.value['data'][index]["TechName"],
                            Commpany: offing.offer.data.value['data'][index]["ComName"],
                            Working: offing.offer.data.value['data'][index]["Working"],
                            Location: offing.offer.data.value['data'][index]["Location"],
                            Job_time: offing.offer.data.value['data'][index]["JobType"],
                            Exp: offing.offer.data.value['data'][index]["Experience"],
                            lake: offing.offer.data.value['data'][index]["Salary"],
                            Hybrid: offing.offer.data.value['data'][index]["WorkSet"],
                            stats: offing.offer.data.value['data'][index]["stats"],
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
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(15),
                                      child: SvgPicture.asset(offing.offer
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
                                              offing.offer.data.value['data'][index]
                                                  ["JobTitle"],
                                              style: TextStyle(
                                                color: AppColor.subcolor,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Text(
                                      offing.offer.data.value['data'][index]
                                          ["TechName"],
                                      style: TextStyle(
                                        fontSize: size.width / 23,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text(
                                      offing.offer.data.value['data'][index]
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
                                          offing.offer.data.value['data'][index]["Working"],
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
                                          offing.offer.data.value['data'][index]
                                              ["Location"],
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
                                          offing.offer.data.value['data'][index]["JobType"],
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
                                          offing.offer.data.value['data'][index]["Experience"],
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
                                          offing.offer.data.value['data'][index]
                                              ["Salary"],
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
                                          offing.offer.data.value['data'][index]
                                              ["WorkSet"],
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
                                  offing.offer.data.value['data'][index]["stats"],
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
        },
      ),
    );
  }
}
