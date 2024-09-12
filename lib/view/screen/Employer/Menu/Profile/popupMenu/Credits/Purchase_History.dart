// ignore_for_file: file_names, deprecated_member_use, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hirexpert/view/utils/app_color.dart';
import 'package:hirexpert/view/utils/app_icon.dart';

class PurchaseHistory extends StatefulWidget {
  const PurchaseHistory({super.key});

  @override
  State<PurchaseHistory> createState() => _PurchaseHistoryState();
}

class _PurchaseHistoryState extends State<PurchaseHistory> {

  TextEditingController Search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: Get.height / 20,
            width: Get.width / 10,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Get.width / 50),
              color: AppColor.Button_color,
            ),
            child: Padding(
              padding: EdgeInsets.all(14),
              child: SvgPicture.asset(AppIcons.left),
            ),
          ),
          SizedBox(width: Get.width / 50),
          Container(
            height: Get.height / 20,
            width: Get.width / 10,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Get.width / 50),
              color: AppColor.Button_color,
            ),
            child: Padding(
              padding: EdgeInsets.all(14),
              child: SvgPicture.asset(AppIcons.Right, color: AppColor.Full_body_color),
            ),
          ),
          SizedBox(width: Get.width / 50),
        ],
      ),
      appBar: AppBar(
        title: Text('Purchase History', style: TextStyle(fontWeight: FontWeight.w600)),
        centerTitle: true,
      ),
      body: Container(
        width: Get.width,
        height: Get.height,
        decoration: BoxDecoration(color: AppColor.Full_body_color),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Get.width/20),
          child: Column(
            children: [
              SizedBox(height: Get.height / 50),
              Text(
                textAlign: TextAlign.center,
                'When you purchase credit, your credits are automatically added to your Hirexpert account',
                style: TextStyle(color: AppColor.subcolor),
              ),
              SizedBox(height: Get.height / 30),
              TextField(
                onTap: () {},
                onChanged: (text) {},
                obscureText: false,
                keyboardType: TextInputType.none,
                controller: Search,
                decoration: InputDecoration(
                  suffixIcon: SizedBox(),
                  hintText: 'Search...',
                  hintStyle: TextStyle(color: AppColor.black_all),
                  focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: AppColor.offButton_color)),
                  enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: AppColor.offButton_color)),
                ),
              ),
              SizedBox(height: Get.height/50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('User Name'),
                  Text('Date & Time'),
                  Text('Credit/Debit'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
