// ignore_for_file: non_constant_identifier_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hirexpert/controller/API_Cobtroller/Candidate/Collction/Login/login_API_controller.dart';
import 'package:hirexpert/view/utils/app_String.dart';
import 'package:hirexpert/view/utils/app_color.dart';
import 'package:hirexpert/view/utils/buttom/Candidate/candidate_buttom.dart';
import 'package:hirexpert/view/utils/common/Textfild/Inputfild.dart';
import 'package:provider/provider.dart';
import '../../../../controller/User_Controller/Candidate_Controller/LoginControoler/LoginValidation.dart';
import '../../../../controller/User_Controller/Candidate_Controller/LoginControoler/visibility.dart';
import '../../../utils/app_icon.dart';
import '../../../utils/common/Buttons/wideButtons.dart';
import 'Signup.dart';
import 'forget_password.dart';

class Candidate_Login extends StatefulWidget {
  const Candidate_Login({super.key});

  @override
  State<Candidate_Login> createState() => _Candidate_LoginState();
}

class _Candidate_LoginState extends State<Candidate_Login> {
  OptionApiController login = Get.put(OptionApiController());

  @override
  Widget build(BuildContext context) {
    final vis = Provider.of<Candidate_VisibilityController>(
      context,
      listen: false,
    );
    final vail = Provider.of<Candidate_LoginValidation>(
      context,
      listen: false,
    );
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        decoration: BoxDecoration(
          color: AppColor.Full_body_color,
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: Get.width / 20,
            ),
            child: Consumer<Candidate_LoginValidation>(
              builder: (BuildContext context, value, Widget? child) {
                return SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: Get.height / 20),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: Get.width / 6.5,
                        ),
                        child: Image.asset(AppIcons.logo, scale: 5),
                      ),
                      SizedBox(height: Get.height / 20),
                      Text(
                        Login_text.login,
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: Get.width / 18,
                        ),
                      ),
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
                              style: TextStyle(
                                fontSize: Get.width / 25,
                                color: AppColor.Error_color,
                              ),
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
                                  ? const Icon(Icons.visibility_off)
                                  : const Icon(Icons.visibility),
                            ),
                          );
                        },
                      ),
                      (vail.isError)
                          ? Text(
                              vail.isError ? vail.throwErrorPassword : "",
                              style: TextStyle(
                                fontSize: Get.width / 25,
                                color: AppColor.Error_color,
                              ),
                            )
                          : const SizedBox(),
                      SizedBox(height: Get.height / 50),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            onTap: () {
                              Get.to(() => const Candidate_F_Password());
                            },
                            child: Text(
                              Login_text.Forget_Password,
                              style: TextStyle(
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
                            login.OptionApiController_fuction(
                              UserType: 'Candidate',
                              Email: vail.EmailController.text,
                              Password: vail.PasswordController.text,
                            );
                            Get.to(() => const Candidate_Bottam());
                          },
                          child: Obx(
                            () => (login.isLodingvalue.value)
                                ? const Center(
                                    child: CircularProgressIndicator(),
                                  )
                                : OnButtons(
                                    Button_Color: AppColor.Button_color,
                                    btn_name: Login_text.btn_name,
                                  ),
                          )),
                      SizedBox(height: Get.height / 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            Login_text.Dont,
                            style: TextStyle(
                              fontSize: Get.width / 25,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(width: Get.width / 60),
                          InkWell(
                            onTap: () {
                              Get.to(() => const candidate_Signup());
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
                          Text(
                            Login_text.acesss,
                            style: TextStyle(
                              fontSize: Get.width / 28,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(width: Get.width / 100),
                          Text(
                            Login_text.Click_Here,
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: Get.width / 28,
                              fontWeight: FontWeight.w600,
                              color: AppColor.Button_color,
                            ),
                          ),
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
