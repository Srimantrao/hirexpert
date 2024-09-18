// ignore_for_file: file_names, non_constant_identifier_names, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hirexpert/view/utils/app_color.dart';

import '../../../../../../utils/app_icon.dart';

class CreditTransaction extends StatefulWidget {
  const CreditTransaction({super.key});

  @override
  State<CreditTransaction> createState() => _CreditTransactionState();
}

class _CreditTransactionState extends State<CreditTransaction> {
  bool container = true;
  bool container2 = false;

  TextEditingController Search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.Full_body_color,
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
        backgroundColor: AppColor.Full_body_color,
        title: Text('Credit Transaction', style: TextStyle(fontWeight: FontWeight.w600)),
        centerTitle: true,
      ),
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(color: AppColor.Full_body_color),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Get.width / 20),
          child: Column(
            children: [
              SizedBox(height: Get.height / 50),
              Text(
                textAlign: TextAlign.center,
                'When you purchase credit, your credits are automatically added to your Hirexpert account',
                style: TextStyle(color: AppColor.subcolor),
              ),
              SizedBox(height: Get.height / 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        container = true;
                        container2 = false;
                      });
                    },
                    child: Container(
                      height: Get.height / 10,
                      width: Get.width / 2.3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Get.width / 20),
                        color: (container) ? AppColor.Button_color : AppColor.Textfild_color,
                      ),
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.all(15),
                          child: Text(
                            textAlign: TextAlign.center,
                            'Credit Transferred and Recieved',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: (container) ? AppColor.Full_body_color : AppColor.black_all,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        container2 = true;
                        container = false;
                      });
                    },
                    child: Container(
                      height: Get.height / 10,
                      width: Get.width / 2.3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Get.width / 20),
                        color: (container2) ? AppColor.Button_color : AppColor.Textfild_color,
                      ),
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: Get.width / 10),
                          child: Text(
                            textAlign: TextAlign.center,
                            'Credit Consumed',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: (container2) ? AppColor.Full_body_color : AppColor.black_all,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
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
              SizedBox(height: Get.height / 30),
              Visibility(
                visible: container,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('User Name'),
                        Text('Date & Time'),
                        Text('Credit/Debit'),
                      ],
                    ),
                    Text('No data available in table'),
                  ],
                ),
              ),
              Visibility(
                visible: container2,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Employer Name'),
                        Text('Candidate Name'),
                        Text('Date & Time'),
                      ],
                    ),
                    Text('No data available in table'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
