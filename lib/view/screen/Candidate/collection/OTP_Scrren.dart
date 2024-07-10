 // ignore_for_file: file_names, non_constant_identifier_names, must_be_immutable

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hirexpert/controller/API_Controller/Candidate/Collction/OTP/OTP_API_Controller.dart';
import 'package:hirexpert/controller/User_Controller/Candidate_Controller/OTP_Controller/OTP_Controller.dart';
import 'package:hirexpert/view/utils/app_String.dart';
import 'package:hirexpert/view/utils/app_color.dart';
import 'package:hirexpert/view/utils/app_icon.dart';
import 'package:hirexpert/view/utils/common/Buttons/ShortButton.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:provider/provider.dart';

class OTP extends StatelessWidget {
  OTP({super.key});

  OtpApiController_API OTP_API = Get.put(OtpApiController_API());

  @override
  Widget build(BuildContext context) {
    final Otp = Provider.of<OtpController>(context, listen: false);
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(
          color: AppColor.Full_body_color,
        ),
        child: SafeArea(
          child: Consumer<OtpController>(
            builder: (BuildContext context, value, Widget? child) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(height: Get.height / 20),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: Get.width / 6.5,
                    ),
                    child: Image.asset(AppIcons.logo, scale: 5),
                  ),
                  SizedBox(height: Get.height / 10),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: Get.width / 10),
                    child: PinCodeTextField(
                      keyboardType: TextInputType.number,
                      appContext: context,
                      length: 4,
                      animationType: AnimationType.fade,
                      controller: Otp.pincodering,
                      onChanged: (value) {
                        Otp.currenttext_fuction(value);
                      },
                      pinTheme: PinTheme(
                        shape: PinCodeFieldShape.underline,
                        activeColor: AppColor.Button_color,
                        disabledColor: AppColor.Button_color,
                        selectedColor: AppColor.Button_color,
                        inactiveColor: AppColor.Button_color,
                        borderRadius: BorderRadius.circular(5),
                        fieldHeight: 50,
                        fieldWidth: 40,
                        activeFillColor:
                            Otp.hasError ? Colors.redAccent : Colors.white,
                      ),
                      onCompleted: (v) {
                        if (kDebugMode) {
                          print("Completed: $v");
                        }
                      },
                    ),
                  ),
                  SizedBox(height: Get.height / 40),
                  OnButtons_short(
                    onTap: () {
                      OTP_API.OtpApiController_fuction(
                        EmailOTP: Otp.pincodering.text,
                        PhoneOTP: Otp.pincodering.text,
                        EntryTerm: '127.0.0.1',
                      );
                    },
                    btn_name: Login_text.Sinup,
                    Border_color: AppColor.Button_color,
                    btn_color: AppColor.Button_color,
                    text_color: AppColor.Full_body_color,
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
