// ignore_for_file: non_constant_identifier_names, file_names, camel_case_types, must_be_immutable, avoid_print, prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hirexpert/view/screen/Candidate/collection/login.dart';
import 'package:hirexpert/view/utils/app_String.dart';
import 'package:hirexpert/view/utils/app_color.dart';
import 'package:hirexpert/view/utils/common/Buttons/wideButtons.dart';
import 'package:provider/provider.dart';
import '../../../../controller/User_Controller/Candidate_Controller/LoginControoler/visibility.dart';
import '../../../../controller/User_Controller/Candidate_Controller/SignupController/SinupController.dart';
import '../../../utils/app_icon.dart';
import '../../../utils/common/Textfild/Inputfild.dart';
import '../../../utils/logic/validation_error.dart';

class candidate_Signup extends StatelessWidget {
  candidate_Signup({super.key});

  @override
  Widget build(BuildContext context) {
    final vail = Provider.of<Candidate_SinupController>(
      context,
      listen: false,
    );
    final vis = Provider.of<Candidate_VisibilityController>(
      context,
      listen: false,
    );
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(color: AppColor.Full_body_color),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: Get.width / 20,
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Consumer<Candidate_SinupController>(
                builder: (BuildContext context, value, Widget? child) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: Get.height / 20),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: Get.width / 6.5,
                        ),
                        child: Image.asset(AppIcons.logo, scale: 6),
                      ),
                      SizedBox(height: Get.height / 20),
                      Text(
                        Signup_text.Sign_Up,
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: Get.width / 18,
                        ),
                      ),
                      SizedBox(height: Get.height / 20),

                      //First Name
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

                      //Last Name
                      Inputfild(
                        onChanged: (Lastname) {
                          vail.LastName_validation(Lastname);
                        },
                        labal: Signup_text.Last_Name,
                        hint: Signup_text.Enter_last_Name,
                        controller: vail.last_name_controller,
                      ),
                      valiadtion_error(
                        condiation: vail.Last_name_value,
                        Error: vail.throwLastnameError,
                      ),
                      SizedBox(height: Get.height / 50),

                      //Email
                      Inputfild(
                        onChanged: (Email) {
                          vail.Email_validation(Email);
                        },
                        labal: Signup_text.Email_Id,
                        hint: Signup_text.Enter_Email_Address,
                        controller: vail.email_controller,
                      ),
                      valiadtion_error(
                        condiation: vail.Email_value,
                        Error: vail.throwEmailnameError,
                      ),
                      SizedBox(height: Get.height / 50),

                      //Phone Number
                      Inputfild(
                        keyboardType: TextInputType.number,
                        onChanged: (Phonevalue) {
                          vail.phone_validation(Phonevalue);
                        },
                        labal: Signup_text.Phone_Number,
                        hint: Signup_text.Enter_Phone_Number,
                        controller: vail.phone_controller,
                      ),
                      valiadtion_error(
                        condiation: vail.phone_value,
                        Error: vail.throwPhoneNumberError,
                      ),

                      //Password
                      SizedBox(height: Get.height / 50),
                      Consumer<Candidate_VisibilityController>(
                        builder: (BuildContext context, value, Widget? child) {
                          return Inputfild(
                            obscureText: vis.isVis,
                            suffixIcon: InkWell(
                              onTap: () {
                                vis.visibilityVis();
                              },
                              child: (vis.isVis)
                                  ? const Icon(Icons.visibility_off)
                                  : const Icon(Icons.visibility),
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
                      valiadtion_error(
                        condiation: vail.password_value,
                        Error: vail.throwPasswordError,
                      ),
                      SizedBox(height: Get.height / 50),

                      //Canfarim Password
                      Consumer<Candidate_VisibilityController>(
                        builder: (BuildContext context, value, Widget? child) {
                          return Inputfild(
                            suffixIcon: InkWell(
                              onTap: () {
                                vis.visibilitycnf();
                              },
                              child: (vis.isviscnf)
                                  ? const Icon(Icons.visibility_off)
                                  : const Icon(Icons.visibility),
                            ),
                            obscureText: vis.isobscr,
                            labal: Signup_text.Confirm_Password,
                            hint: Signup_text.Confirm_Password,
                            controller: vail.confirm_password_controller,
                          );
                        },
                      ),
                      valiadtion_error(
                        condiation: vail.confirm_password,
                        Error: vail.throwConfirmPasswordError,
                      ),
                      SizedBox(height: Get.height / 20),

                      OnButtons(
                        onTap: () {
                          vail.SinupValidtion();
                        },
                        Button_Color: AppColor.Button_color,
                        btn_name: Signup_text.Sign_Up,
                      ),

                      SizedBox(height: Get.height / 50),
                      GestureDetector(
                        onTap: () {
                          Get.to(
                            () => Candidate_Login(),
                            transition: Transition.leftToRight,
                            duration: Duration(milliseconds: 500),
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              Signup_text.Have_an_account,
                              style: TextStyle(
                                fontSize: Get.width / 25,
                              ),
                            ),
                            SizedBox(width: Get.width / 80),
                            Text(
                              Signup_text.Sign_In,
                              style: TextStyle(
                                color: AppColor.Button_color,
                                fontSize: Get.width / 25,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
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
