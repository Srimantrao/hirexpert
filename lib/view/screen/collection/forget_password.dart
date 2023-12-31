// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hirexpert/view/utils/app_color.dart';
import 'package:provider/provider.dart';

import '../../../controller/LoginControoler/LoginValidation.dart';
import '../../utils/app_String.dart';
import '../../utils/app_icon.dart';
import '../../utils/common/Buttons/wideButtons.dart';
import '../../utils/common/Textfild/Inputfild.dart';
import 'Signup.dart';

class F_Password extends StatefulWidget {
  const F_Password({super.key});

  @override
  State<F_Password> createState() => _F_PasswordState();
}

class _F_PasswordState extends State<F_Password> {
  @override
  Widget build(BuildContext context) {
    final vail = Provider.of<LoginValidation>(context, listen: false);
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(
          color: AppColor.Full_body_color,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Get.width / 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: Get.width / 4.5,
                ),
                child: Image.asset(AppIcons.logo, scale: 6),
              ),
              Text(
                Forget_Password_text.hading,
                style: TextStyle(
                  fontSize: Get.width / 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: Get.height / 60),
              Text(
                Forget_Password_text.sub,
                style: TextStyle(
                  fontSize: Get.width / 27,
                  fontWeight: FontWeight.w400,
                  color: AppColor.subcolor,
                ),
              ),
              SizedBox(height: Get.height / 20),
              Consumer(
                builder: (BuildContext context, value, Widget? child) {
                  return Inputfild(
                    onChanged: (txt) {
                      vail.Emailvali(txt);
                    },
                    labal: Login_text.lebelemail,
                    hint: Login_text.hintemail,
                    controller: vail.EmailController,
                  );
                },
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
              SizedBox(height: Get.height / 5),
              InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        actions: [
                          Container(
                            height: Get.height / 15,
                            width: Get.width / 5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                Get.width / 50,
                              ),
                              color: AppColor.Button_color,
                            ),
                            child: Center(
                              child: Text(
                                Forget_Password_text.OK,
                                style: TextStyle(
                                  color: AppColor.Full_body_color,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          )
                        ],
                        backgroundColor: AppColor.Full_body_color,
                        elevation: 0,
                        content: Container(
                          height: Get.height / 4,
                          width: Get.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              Get.width / 50,
                            ),
                            color: AppColor.Full_body_color,
                          ),
                          child: Column(
                            children: [
                              Image.asset(AppIcons.Success, scale: 4),
                              SizedBox(height: Get.height / 80),
                              Text(
                                Forget_Password_text.Success,
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: Get.width / 25,
                                ),
                              ),
                              SizedBox(height: Get.height / 50),
                              Text(
                                textAlign: TextAlign.center,
                                Forget_Password_text.Sub_Suessess,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: Get.width / 28,
                                  color: AppColor.subcolor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                  // vail.isEmtey();
                  // vail.loginvalidation();
                },
                child: OnButtons(
                  Button_Color: AppColor.Button_color,
                  btn_name: Forget_Password_text.Submit,
                ),
              ),
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
                      Get.to(() => const Signup());
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
            ],
          ),
        ),
      ),
    );
  }
}
