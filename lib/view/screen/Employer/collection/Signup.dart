// ignore_for_file: non_constant_identifier_names, file_names, camel_case_types, must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hirexpert/controller/API_Controller/Employer/Collction/Sinup/employer_API_Sinup_controller.dart';
import 'package:hirexpert/controller/User_Controller/Employer_Controller/LoginControoler/visibility.dart';
import 'package:hirexpert/controller/User_Controller/Employer_Controller/SignupController/SinupController.dart';
import 'package:hirexpert/view/utils/app_String.dart';
import 'package:hirexpert/view/utils/app_color.dart';
import 'package:hirexpert/view/utils/app_icon.dart';
import 'package:hirexpert/view/utils/common/Buttons/wideButtons.dart';
import 'package:hirexpert/view/utils/common/Textfild/Inputfild.dart';
import 'package:hirexpert/view/utils/logic/validation_error.dart';
import 'package:provider/provider.dart';


class Employer_Signup extends StatelessWidget {
  Employer_Signup({super.key});

  EmployerApiSinupController Employer_Sinup = Get.put(EmployerApiSinupController());

  @override
  Widget build(BuildContext context) {
    final vail = Provider.of<Employer_SinupController>(context, listen: false);
    final vis = Provider.of<Employer_VisibilityController>(context, listen: false);
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(color: AppColor.Full_body_color),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: Get.width / 20),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Consumer<Employer_SinupController>(
                builder: (BuildContext context, value, Widget? child) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: Get.height / 50),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: Get.width / 6.5),
                        child: Image.asset(AppIcons.logo, scale: 6),
                      ),
                      SizedBox(height: Get.height / 20),
                      Text(Signup_text.Sign_Up,style: TextStyle(fontWeight: FontWeight.w900, fontSize: Get.width / 18)),
                      SizedBox(height: Get.height / 20),
                      Inputfild(
                        onChanged: (FrisName) {
                          vail.Confirm_Password_validation(FrisName);
                        },
                        labal: E_Signup_text.company_name,
                        hint: E_Signup_text.company_name,
                        controller: vail.Company_name_controller,
                      ),
                      valiadtion_error(condiation: vail.Company_Name_value, Error: vail.throwCompanyNameError),
                      SizedBox(height: Get.height / 50),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: E_Signup_text.About_Company,
                              style: TextStyle(fontWeight: FontWeight.w400, fontSize: Get.width / 25, color: AppColor.subcolor),
                            ),
                            TextSpan(
                              text: ' *',
                              style: TextStyle(fontWeight: FontWeight.w700, fontSize: Get.width / 22, color: AppColor.Error_color),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: Get.height / 50),
                      SizedBox(
                        height: Get.height / 8,
                        child: TextField(
                          maxLines: null,
                          expands: true,
                          onTap: () {},
                          textAlignVertical: TextAlignVertical.top,
                          onChanged: (text) {},
                          controller: vail.About_Company_controller,
                          decoration: InputDecoration(
                            hintText: E_Signup_text.About_Company,
                            hintStyle: TextStyle(color: AppColor.black_all),
                            focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: AppColor.offButton_color)),
                            enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: AppColor.offButton_color)),
                          ),
                        ),
                      ),
                      SizedBox(height: Get.height / 50),
                      Inputfild(
                        onChanged: (FrisName) {
                          vail.FristName_validation(FrisName);
                        },
                        labal: Signup_text.First_Name,
                        hint: Signup_text.Enter_First_Name,
                        controller: vail.frist_name_controller,
                      ),
                      valiadtion_error(condiation: vail.Frist_name_value, Error: vail.throwFristnameError),
                      SizedBox(height: Get.height / 50),
                      Inputfild(
                        onChanged: (Lastname) {
                          vail.LastName_validation(Lastname);
                        },
                        labal: Signup_text.Last_Name,
                        hint: Signup_text.Enter_last_Name,
                        controller: vail.last_name_controller,
                      ),
                      valiadtion_error(condiation: vail.Last_name_value, Error: vail.throwLastnameError),
                      SizedBox(height: Get.height / 50),
                      Inputfild(
                        onChanged: (Email) {
                          vail.Email_validation(Email);
                        },
                        labal: Signup_text.Email_Id,
                        hint: Signup_text.Enter_Email_Address,
                        controller: vail.email_controller,
                      ),
                      valiadtion_error(condiation: vail.Email_value, Error: vail.throwEmailnameError),
                      SizedBox(height: Get.height / 50),
                      Inputfild(
                        keyboardType: TextInputType.number,
                        onChanged: (Phonevalue) {
                          vail.phone_validation(Phonevalue);
                        },
                        labal: Signup_text.Phone_Number,
                        hint: Signup_text.Enter_Phone_Number,
                        controller: vail.phone_controller,
                      ),
                      valiadtion_error(condiation: vail.phone_value, Error: vail.throwPhoneNumberError),
                      SizedBox(height: Get.height / 50),
                      Consumer<Employer_SinupController>(
                        builder: (BuildContext context, value, Widget? child) {
                          return Inputfild(
                            obscureText: vis.isVis,
                            suffixIcon: InkWell(
                              onTap: () {
                                vis.visibilityVis();
                              },
                              child: (vis.isVis) ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
                            ),
                            onChanged: (valuepassword) {
                              vail.Password_validation(valuepassword);
                            },
                            labal: Signup_text.Password,
                            hint: Signup_text.Enter_last_Name,
                            controller: vail.password_controller,
                          );
                        },
                      ),
                      valiadtion_error(condiation: vail.password_value, Error: vail.throwPasswordError),
                      SizedBox(height: Get.height / 50),
                      Consumer<Employer_SinupController>(
                        builder: (BuildContext context, value, Widget? child) {
                          return Inputfild(
                            suffixIcon: InkWell(
                              onTap: () {
                                vis.visibilitycnf();
                              },
                              child: (vis.isviscnf) ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
                            ),
                            obscureText: vis.isobscr,
                            labal: Signup_text.Confirm_Password,
                            hint: Signup_text.Confirm_Password,
                            controller: vail.confirm_password_controller,
                          );
                        },
                      ),
                      valiadtion_error(condiation: vail.confirm_password, Error: vail.throwConfirmPasswordError),
                      SizedBox(height: Get.height / 20),
                      InkWell(
                        onTap: () {
                          vail.SinupValidtion();
                        },
                        child: OnButtons(
                          Button_Color: AppColor.Button_color,
                          btn_name: Signup_text.Sign_Up,
                        ),
                      ),
                      SizedBox(height: Get.height / 50),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(Signup_text.Have_an_account, style: TextStyle(fontSize: Get.width / 25)),
                          SizedBox(width: Get.width / 80),
                          Text(Signup_text.Sign_In, style: TextStyle(color: AppColor.Button_color, fontSize: Get.width / 25, fontWeight: FontWeight.w600)),
                        ],
                      ),
                      SizedBox(height: Get.height / 50),
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
