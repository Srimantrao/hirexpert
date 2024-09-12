// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hirexpert/view/screen/Employer/Menu/Profile/popupMenu/Credits/Credit%20Plans.dart';
import 'package:hirexpert/view/screen/Employer/Menu/Profile/popupMenu/Credits/CreditTransaction.dart';
import 'package:hirexpert/view/screen/Employer/Menu/Profile/popupMenu/Credits/Purchase_History.dart';
import 'package:hirexpert/view/utils/app_color.dart';
import 'package:hirexpert/view/utils/app_icon.dart';
import 'package:hirexpert/view/utils/common/Buttons/wideButtons.dart';

class HirexpertCredit extends StatelessWidget {
  const HirexpertCredit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hirexpert Credit', style: TextStyle(fontWeight: FontWeight.w600)),
        centerTitle: true,
      ),
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(color: AppColor.Full_body_color),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Get.width/20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: Get.height/30),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Get.width / 5),
                child: Text(
                  textAlign: TextAlign.center,
                  'A Quick and Convenient way to Buy and Share Credits',
                  style: TextStyle(color: AppColor.subcolor),
                ),
              ),
              SizedBox(height: Get.height/30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Hirexpert Credit Dashboard!',style: TextStyle(fontSize: Get.width/23)),
                ],
              ),
              SizedBox(height: Get.height/10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: Get.height/3,
                      width: Get.width/2.5,
                      child: Column(
                        children: [
                          SvgPicture.asset(AppIcons.container),
                          Text('Total Credits',style: TextStyle(fontWeight: FontWeight.w600)),
                          Text('500',style: TextStyle(fontSize: Get.width/25,fontWeight: FontWeight.w600)),
                          SizedBox(height: Get.height/15),
                          Text('For a Quick Checkout!',style: TextStyle(fontWeight: FontWeight.w600)),
                          OnButtons(Button_Color: AppColor.Button_color, btn_name: 'Buy Credits')
                        ],
                      ),
                  ),
                  SizedBox(
                    height: Get.height/3,
                      width: Get.width/2.5,
                      child: Column(
                        children: [
                          SvgPicture.asset(AppIcons.container),
                          Text('Total Credits',style: TextStyle(fontWeight: FontWeight.w600)),
                          Text('500',style: TextStyle(fontSize: Get.width/25,fontWeight: FontWeight.w600)),
                          SizedBox(height: Get.height/15),
                          Text('For a Quick Checkout!',style: TextStyle(fontWeight: FontWeight.w600)),
                          OnButtons(Button_Color: AppColor.Button_color, btn_name: 'Buy Credits')
                        ],
                      ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: (){
                  Get.to(()=> Creditplans(),duration: Duration(seconds: 1),transition: Transition.rightToLeft);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Credit Shared with Team Members till today',style: TextStyle(fontSize: Get.width/28)),
                    SvgPicture.asset(AppIcons.Right),
                  ],
                ),
              ),
              SizedBox(height: Get.height/80),
              Divider(color: AppColor.Textfild_color),
              SizedBox(height: Get.height/50),
              GestureDetector(
                onTap: (){
                  Get.to(()=> CreditTransaction(),duration: Duration(seconds: 1),transition: Transition.rightToLeft);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Credit Transactions',style: TextStyle(fontSize: Get.width/28)),
                    SvgPicture.asset(AppIcons.Right),
                  ],
                ),
              ),
              SizedBox(height: Get.height/80),
              Divider(color: AppColor.Textfild_color),
              SizedBox(height: Get.height/50),
              GestureDetector(
                onTap: (){
                  Get.to(()=> PurchaseHistory(),duration: Duration(seconds: 1),transition: Transition.rightToLeft);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Purchase History',style: TextStyle(fontSize: Get.width/28)),
                    SvgPicture.asset(AppIcons.Right),
                  ],
                ),
              ),
              SizedBox(height: Get.height/80),
              Divider(color: AppColor.Textfild_color),
              SizedBox(height: Get.height/50),
              Text('Please Note:',style: TextStyle(fontSize: Get.width/28,fontWeight: FontWeight.w600)),
            ],
          ),
        ),
      ),
    );
  }
}
