// ignore_for_file: non_constant_identifier_names, camel_case_types, must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hirexpert/controller/API_Controller/Candidate/Collction/Login/login_API_controller.dart';
import 'package:hirexpert/view/screen/Candidate/collection/login.dart';
import 'package:hirexpert/view/screen/Employer/collection/Signup.dart';
import 'package:hirexpert/view/utils/app_String.dart';
import 'package:hirexpert/view/utils/app_color.dart';
import 'package:hirexpert/view/utils/common/Textfild/Inputfild.dart';
import 'package:hirexpert/view/utils/logic/validation_error.dart';
import 'package:provider/provider.dart';
import '../../../../controller/User_Controller/Employer_Controller/LoginControoler/LoginValidation.dart';
import '../../../../controller/User_Controller/Employer_Controller/LoginControoler/visibility.dart';
import '../../../utils/app_icon.dart';
import '../../../utils/common/Buttons/wideButtons.dart';
import 'forget_Password.dart';

class Employer_Login extends StatelessWidget {
  final OptionApiController Employer_login = Get.put(OptionApiController());

  Employer_Login({super.key});

  @override
  Widget build(BuildContext context) {
    final vis = Provider.of<Employer_VisibilityController>(context, listen: false);
    final vail = Provider.of<Employer_LoginValidation>(context, listen: false);
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        decoration: BoxDecoration(color: AppColor.Full_body_color),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: Get.width / 20),
            child: Consumer<Employer_LoginValidation>(
              builder: (BuildContext context, value, Widget? child) {
                return SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: Get.height / 20),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: Get.width / 6.5),
                        child: Image.asset(AppIcons.logo, scale: 5),
                      ),
                      SizedBox(height: Get.height / 20),
                      Text(Login_text.login_Emp, style: TextStyle(fontWeight: FontWeight.w900, fontSize: Get.width / 18)),
                      SizedBox(height: Get.height / 20),
                      Inputfild(
                        onChanged: (txt) {
                          vail.Email_validation(txt);
                        },
                        labal: Login_text.lebelemail,
                        hint: Login_text.hintemail,
                        controller: vail.Email_controller,
                      ),
                      valiadtion_error(condiation: vail.Email_value, Error: vail.throwEmailnameError),
                      SizedBox(height: Get.height / 20),
                      Consumer<Employer_VisibilityController>(
                        builder: (BuildContext context, value, Widget? child) {
                          return Inputfild(
                            onChanged: (textp) {
                              vail.Password_validation(textp);
                            },
                            obscureText: vis.isobscr,
                            labal: Login_text.lebelpassword,
                            hint: Login_text.hintpassword,
                            controller: vail.Password_controller,
                            suffixIcon: InkWell(
                              onTap: () {
                                vis.visibilityVis();
                              },
                              child: (vis.isVis)
                                  ? Icon(Icons.visibility_off)
                                  : Icon(Icons.visibility),
                            ),
                          );
                        },
                      ),
                      valiadtion_error(condiation: vail.password_value, Error: vail.throwPasswordError),
                      SizedBox(height: Get.height / 50),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            onTap: () {
                              Get.to(() => Employer_F_Password());
                            },
                            child: Text(Login_text.Forget_Password, style: TextStyle(color: AppColor.Button_color, fontSize: Get.width / 25, fontWeight: FontWeight.w600)),
                          ),
                        ],
                      ),
                      SizedBox(height: Get.height / 20),
                      GestureDetector(
                        onTap: () {
                          vail.Loginvalidation();
                        },
                        child: OnButtons(Button_Color: AppColor.Button_color, btn_name: Login_text.login_Emp),
                      ),
                      SizedBox(height: Get.height / 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(Login_text.Dont, style: TextStyle(fontSize: Get.width / 25, fontWeight: FontWeight.w400)),
                          SizedBox(width: Get.width / 60),
                          InkWell(
                            onTap: () {
                              Get.to(() => Employer_Signup());
                            },
                            child: Text(Login_text.Sinup, style: TextStyle(fontSize: Get.width / 25, fontWeight: FontWeight.w600, color: AppColor.Button_color)),
                          ),
                        ],
                      ),
                      SizedBox(height: Get.height / 8),
                      Row(
                        children: [
                          Text(Login_text.acesss, style: TextStyle(fontSize: Get.width / 28, fontWeight: FontWeight.w400)),
                          SizedBox(width: Get.width / 100),
                          GestureDetector(
                            onTap: (){
                              Get.to(()=> Candidate_Login(),duration: Duration(seconds: 1),transition: Transition.leftToRight,curve: Curves.easeInOutBack);
                            },
                              child: Text(Login_text.Click_Here, style: TextStyle(decoration: TextDecoration.underline, fontSize: Get.width / 28, fontWeight: FontWeight.w600, color: AppColor.Button_color))),
                        ],
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
