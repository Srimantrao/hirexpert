
// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hirexpert/view/utils/app_color.dart';
import 'package:hirexpert/view/utils/common/Textfild/Inputfild.dart';

class CompanyProfile extends StatefulWidget {
  const CompanyProfile({super.key});

  @override
  State<CompanyProfile> createState() => _CompanyProfileState();
}

class _CompanyProfileState extends State<CompanyProfile> {

  TextEditingController CompanyName_Controller = TextEditingController();
  TextEditingController CompanyType_Controller = TextEditingController();
  TextEditingController OfficeArea_Controller = TextEditingController();
  TextEditingController StreetAddress_Controller = TextEditingController();
  TextEditingController SelectCountry_Controller = TextEditingController();
  TextEditingController SelectProvince_Controller = TextEditingController();
  TextEditingController SelectCity_Controller = TextEditingController();
  TextEditingController PhoneNumber_Controller = TextEditingController();
  TextEditingController Website_Controller = TextEditingController();
  TextEditingController SkypeID_Controller = TextEditingController();
  TextEditingController AboutCompany_Controller = TextEditingController();

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
              Text("Company Information", style: TextStyle(fontSize: Get.height / 45, fontWeight: FontWeight.w600)),
              SizedBox(height: Get.height/50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: Get.width / 2.5,
                    child: Inputfild(labal: 'Company Name:', hint: 'Company Name:', controller: CompanyName_Controller),
                  ),
                  SizedBox(
                    width: Get.width / 2.5,
                    child: Inputfild(labal: 'Company Type:', hint: 'Company Type:', controller : CompanyType_Controller),
                  ),
                ],
              ),
              SizedBox(height: Get.height/50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: Get.width / 2.5,
                    child: Inputfild(labal: 'Office No./Area:', hint: 'Office No./Area:', controller: OfficeArea_Controller),
                  ),
                  SizedBox(
                    width: Get.width / 2.5,
                    child: Inputfild(labal: 'Street Address:', hint: 'Street Address:', controller : StreetAddress_Controller),
                  ),
                ],
              ),
              SizedBox(height: Get.height/50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: Get.width / 2.5,
                    child: Inputfild(labal: 'Select Country:', hint: 'Select Country:', controller: SelectCountry_Controller),
                  ),
                  SizedBox(
                    width: Get.width / 2.5,
                    child: Inputfild(labal: 'Select Province:', hint: 'Select Province :', controller : SelectProvince_Controller),
                  ),
                ],
              ),
              SizedBox(height: Get.height/50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: Get.width / 2.5,
                    child: Inputfild(labal: 'Select City:', hint: 'Select City:', controller: SelectCity_Controller),
                  ),
                  SizedBox(
                    width: Get.width / 2.5,
                    child: Inputfild(labal: 'Phone Number:', hint: 'Phone Number:', controller : PhoneNumber_Controller),
                  ),
                ],
              ),
              SizedBox(height: Get.height/50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: Get.width / 2.5,
                    child: Inputfild(labal: 'Website:', hint: 'Website', controller: Website_Controller),
                  ),
                  SizedBox(
                    width: Get.width / 2.5,
                    child: Inputfild(labal: 'Skype ID:', hint: 'Skype IDs', controller : SkypeID_Controller),
                  ),
                ],
              ),
              SizedBox(height: Get.height/50),
              Text("About Company", style: TextStyle(fontSize: Get.height / 45, fontWeight: FontWeight.w600)),
              SizedBox(height: Get.height/50),
              SizedBox(
                height: Get.height / 7,
                child: TextField(
                  maxLines: null,
                  expands: true,
                  controller: AboutCompany_Controller,
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
