// ignore_for_file: non_constant_identifier_names, camel_case_types, must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hirexpert/controller/API_Controller/Candidate/Collction/Login/login_API_controller.dart';
import 'package:hirexpert/view/screen/Employer/collection/Signup.dart';
import 'package:hirexpert/view/utils/app_String.dart';
import 'package:hirexpert/view/utils/app_color.dart';
import 'package:hirexpert/view/utils/common/Textfild/Inputfild.dart';
import 'package:provider/provider.dart';
import '../../../../controller/User_Controller/Candidate_Controller/LoginControoler/LoginValidation.dart';
import '../../../../controller/User_Controller/Candidate_Controller/LoginControoler/visibility.dart';
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
        decoration: BoxDecoration(
          color: AppColor.Full_body_color,
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: Get.width / 20),
            child: Consumer<Candidate_LoginValidation>(
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
                      Text(Login_text.login, style: TextStyle(fontWeight: FontWeight.w900, fontSize: Get.width / 18)),
                      SizedBox(height: Get.height / 20),
                      Inputfild(
                        onChanged: (txt) {
                          vail.Emailvali(txt);
                        },
                        labal: Login_text.lebelemail,
                        hint: Login_text.hintemail,
                        controller: vail.EmailController,
                      ),
                      (vail.isError)
                          ? Text(
                              vail.isError ? vail.throwErrorEmail : "",
                              style: TextStyle(fontSize: Get.width / 25, color: AppColor.Error_color),
                            )
                          : const SizedBox(),
                      SizedBox(height: Get.height / 20),
                      Consumer<Candidate_VisibilityController>(
                        builder: (BuildContext context, value, Widget? child) {
                          return Inputfild(
                            onChanged: (textp) {
                              vail.passwordvali(textp);
                            },
                            obscureText: vis.isobscr,
                            labal: Login_text.lebelpassword,
                            hint: Login_text.hintpassword,
                            controller: vail.PasswordController,
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
                      (vail.isError)
                          ? Text(
                              vail.isError ? vail.throwErrorPassword : "",
                              style: TextStyle(fontSize: Get.width / 25, color: AppColor.Error_color),
                            )
                          : const SizedBox(),
                      SizedBox(height: Get.height / 50),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            onTap: () {
                              Get.to(() => const Employer_F_Password());
                            },
                            child: Text(
                              Login_text.Forget_Password,
                              style: TextStyle(
                                color: AppColor.Button_color,
                                fontSize: Get.width / 25,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: Get.height / 20),
                      InkWell(
                        onTap: () {
                          vail.isEmtey();
                          vail.loginvalidation();
                          Employer_login.OptionApiController_fuction(
                            UserType: 'Company',
                            Email: vail.EmailController.text,
                            Password: vail.PasswordController.text,
                          );
                        },
                        child: OnButtons(
                          Button_Color: AppColor.Button_color,
                          btn_name: Login_text.btn_name,
                        ),
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
                            child: Text(
                              Login_text.Sinup,
                              style: TextStyle(
                                fontSize: Get.width / 25,
                                fontWeight: FontWeight.w600,
                                color: AppColor.Button_color,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: Get.height / 8),
                      Row(
                        children: [
                          Text(Login_text.acesss, style: TextStyle(fontSize: Get.width / 28, fontWeight: FontWeight.w400)),
                          SizedBox(width: Get.width / 100),
                          Text(Login_text.Click_Here, style: TextStyle(decoration: TextDecoration.underline, fontSize: Get.width / 28, fontWeight: FontWeight.w600, color: AppColor.Button_color)),
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
