//ignore_for_file: camel_case_types, file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hirexpert/view/utils/common/Textfild/OnlyFlid.dart';
import 'package:provider/provider.dart';
import '../../../../controller/ButtonsController/SearchButtonsController.dart';
import '../../../utils/app_String.dart';
import '../../../utils/app_color.dart';
import '../../../utils/common/Buttons/wideButtons.dart';
import '../../../utils/common/Selection/showbottomsheet/shoBottmsheet_Container.dart';
import '../../../utils/common/Selection/showbottomsheet/showbottomsheet_common.dart';
import 'Search_find.dart';

class Serch_location extends StatelessWidget {
  const Serch_location({super.key});

  @override
  Widget build(BuildContext context) {
    final Buttingchang = Provider.of<SearchButtonsController>(
      context,
      listen: false,
    );
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: Get.height / 10,
        backgroundColor: AppColor.Full_body_color,
        automaticallyImplyLeading: false,
        title: const Text(
          Search_text.Search_Jobss,
          style: TextStyle(
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          InkWell(
            onTap: () {
              Get.back();
            },
            child: Text(
              Search_text.cancel,
              style: TextStyle(
                color: AppColor.Error_color,
                fontWeight: FontWeight.w600,
                fontSize: Get.width / 23,
              ),
            ),
          ),
          SizedBox(width: Get.width / 40),
        ],
      ),
      body: Container(
        width: Get.width,
        height: Get.height,
        decoration: BoxDecoration(
          color: AppColor.Full_body_color,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Get.width / 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  //Serch
                  OnlyFild(
                    hintText: Search_text.Keyword,
                    prefixIcon: Icon(
                      Icons.search,
                      color: AppColor.subcolor,
                    ),
                  ),

                  SizedBox(height: Get.height / 50),
                  Consumer<SearchButtonsController>(
                    builder: (BuildContext context, value, Widget? child) {
                      return InkWell(
                        onTap: () {
                          Bottomsheet.appModalBottomSheet(context);
                          Buttingchang.Savebuttons_fun();
                        },
                        child: ShowContainer(Selecttext: ontext),
                      );
                    },
                  )
                ],
              ),
              Consumer<SearchButtonsController>(
                builder: (BuildContext context, value, Widget? child) {
                  return Column(
                    children: [
                      (Buttingchang.Savebutton)
                          ? InkWell(
                              onTap: () {
                                Get.to(() => const Search_find());
                              },
                              child: OnButtons(
                                Button_Color: AppColor.Button_color,
                                btn_name: Search_text.Button_name,
                              ),
                            )
                          : const SizedBox(),
                      SizedBox(height: Get.height / 50),
                    ],
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
