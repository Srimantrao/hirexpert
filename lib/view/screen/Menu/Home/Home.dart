// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:hirexpert/modal/Job/jobSearch_list.dart';
import 'package:hirexpert/view/screen/Menu/Home/saving/saved.dart';
import 'package:hirexpert/view/utils/app_String.dart';
import 'package:hirexpert/view/utils/app_color.dart';
import 'package:hirexpert/view/utils/app_icon.dart';
import 'package:hirexpert/view/utils/common/Row/homerow.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: Get.height / 10,
        backgroundColor: AppColor.Full_body_color,
        automaticallyImplyLeading: false,
        title: const Text(
          My_Jobs_Screen.My_Jobs,
          style: TextStyle(
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          const Icon(Icons.notifications),
          SizedBox(width: Get.width / 50),
        ],
      ),
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(
          color: AppColor.Full_body_color,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Get.width / 30,
          ),
          child: Column(
            children: [
              InkWell(
                child: Jobrow(
                  icon: AppIcons.Seeved,
                  name: My_Jobs_Screen.Saved,
                  child: (saveshowjob.isEmpty)
                      ? const SizedBox()
                      : CircleAvatar(
                          minRadius: 12,
                          child: Text("${saveshowjob.length}"),
                        ),
                ),
                onTap: () {
                  Get.to(
                    () => const Saved(),
                  );
                },
              ),
              const Jobrow(
                icon: AppIcons.Applid,
                name: My_Jobs_Screen.Applied,
              ),
              const Jobrow(
                icon: AppIcons.seved,
                name: My_Jobs_Screen.Interview,
              ),
              const Jobrow(
                icon: AppIcons.rupess,
                name: My_Jobs_Screen.Offer,
              ),
              const Jobrow(
                icon: AppIcons.Hired,
                name: My_Jobs_Screen.Hired,
              ),
              const Jobrow(
                icon: AppIcons.Declind,
                name: My_Jobs_Screen.Declined,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
