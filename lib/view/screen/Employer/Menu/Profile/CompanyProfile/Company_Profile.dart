
// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hirexpert/controller/API_Controller/Candidate/Collction/Login/login_API_controller.dart';
import 'package:hirexpert/view/utils/app_String.dart';
import 'package:hirexpert/view/utils/app_color.dart';
import 'package:hirexpert/view/utils/common/Textfild/Inputfild.dart';

import '../../../../../utils/app_constance.dart';

class CompanyProfile extends StatefulWidget {
  const CompanyProfile({super.key});

  @override
  State<CompanyProfile> createState() => _CompanyProfileState();
}

class _CompanyProfileState extends State<CompanyProfile> {
  OptionApiController profile = Get.put(OptionApiController());

  @override
  void initState() {
    Future.microtask(()async{
      await profile.OptionApiController_fuction(
        Email: 'khageshsoni98@gmail.com',
        UserType: 'Company',
        Password: 'Ilove@2015',
        Tokan: Tokan,
        CandidateId: Candidate,
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(color: AppColor.Full_body_color),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: Get.height/50),
              Text(Company_Profile_text.Company_Information, style: TextStyle(fontSize: Get.height / 45, fontWeight: FontWeight.w600)),
              SizedBox(height: Get.height/30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: Get.width / 2.5,
                    child: Inputfild(
                      style: TextStyle(fontWeight: FontWeight.w600),
                        labal: Company_Profile_text.Company_Name,
                        hint: profile.option_data['data']['UserDetails']['ComName'],
                        controller: TextEditingController(text: profile.option_data['data']['UserDetails']['ComName']),
                    ),
                  ),
                  SizedBox(
                    width: Get.width / 2.5,
                    child: Inputfild(
                      style: TextStyle(fontWeight: FontWeight.w600),
                        labal: Company_Profile_text.Company_Type,
                        hint: profile.option_data['data']['UserDetails']['ComName'],
                        controller : TextEditingController(text: profile.option_data['data']['UserDetails']['ComName']),
                    ),
                  ),
                ],
              ),
              SizedBox(height: Get.height/50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: Get.width / 2.5,
                    child: Inputfild(
                      style: TextStyle(fontWeight: FontWeight.w600),
                        labal: Company_Profile_text.Office_No_Area,
                        hint: Company_Profile_text.Office_No_Area,
                        controller: TextEditingController(text: profile.option_data['data']['UserDetails']['ComName']),
                    ),
                  ),
                  SizedBox(
                    width: Get.width / 2.5,
                    child: Inputfild(
                      style: TextStyle(fontWeight: FontWeight.w600),
                        labal: Company_Profile_text.StreetAddress,
                        hint: Company_Profile_text.StreetAddress,
                        controller : TextEditingController(text: profile.option_data['data']['UserDetails']['StreetAddress']),
                    ),
                  ),
                ],
              ),
              SizedBox(height: Get.height/50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: Get.width / 2.5,
                    child: Inputfild(
                      style: TextStyle(fontWeight: FontWeight.w600),
                        labal: Company_Profile_text.Select_Country,
                        hint: Company_Profile_text.Select_Country,
                        controller: TextEditingController(text: profile.option_data['data']['UserDetails']['CountryName']),
                    ),
                  ),
                  SizedBox(
                    width: Get.width / 2.5,
                    child: Inputfild(
                      style: TextStyle(fontWeight: FontWeight.w600),
                        labal: Company_Profile_text.Select_Province,
                        hint: Company_Profile_text.Select_Province,
                        controller : TextEditingController(text: profile.option_data['data']['UserDetails']['ComProvinceName']),
                    ),
                  ),
                ],
              ),
              SizedBox(height: Get.height/50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: Get.width / 2.5,
                    child: Inputfild(
                      style: TextStyle(fontWeight: FontWeight.w600),
                        labal: Company_Profile_text.Select_City,
                        hint: Company_Profile_text.Select_City,
                        controller: TextEditingController(text: profile.option_data['data']['UserDetails']['ComCityName']),
                    ),
                  ),
                  SizedBox(
                    width: Get.width / 2.5,
                    child: Inputfild(
                      style: TextStyle(fontWeight: FontWeight.w600),
                        labal: Company_Profile_text.Phone_Number,
                        hint: Company_Profile_text.Phone_Number,
                        controller : TextEditingController(text: profile.option_data['data']['UserDetails']['Phone']),
                    ),
                  ),
                ],
              ),
              SizedBox(height: Get.height/50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: Get.width / 2.5,
                    child: Inputfild(
                      style: TextStyle(fontWeight: FontWeight.w600),
                        labal: Company_Profile_text.Website,
                        hint: Company_Profile_text.Website,
                        controller: TextEditingController(text: profile.option_data['data']['UserDetails']['ComWebsite']),
                    ),
                  ),
                  SizedBox(
                    width: Get.width / 2.5,
                    child: Inputfild(
                      style: TextStyle(fontWeight: FontWeight.w600),
                        labal: Company_Profile_text.Skype_ID,
                        hint: Company_Profile_text.Skype_ID,
                        controller : TextEditingController(text: profile.option_data['data']['UserDetails']['SkypeId']),
                    ),
                  ),
                ],
              ),
              SizedBox(height: Get.height/30),
              Text(Company_Profile_text.About_Company, style: TextStyle(fontSize: Get.height / 45, fontWeight: FontWeight.w600)),
              SizedBox(height: Get.height/50),
              SizedBox(
                height: Get.height / 7,
                child: TextField(
                  style: TextStyle(fontWeight: FontWeight.w600),
                  maxLines: null,
                  expands: true,
                  controller: TextEditingController(text: profile.option_data['data']['UserDetails']['BIO']),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: AppColor.Bottam_color)),
                    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: AppColor.Bottam_color)),
                  ),
                ),
              ),
              SizedBox(height: Get.height/50),
            ],
          ),
        ),
      ),
    );
  }
}
