 // ignore_for_file: file_names, non_constant_identifier_names, must_be_immutable, avoid_print

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hirexpert/controller/API_Controller/Candidate/Collction/OTP/OTP_API_Controller.dart';
import 'package:hirexpert/controller/User_Controller/Candidate_Controller/OTP_Controller/OTP_Controller.dart';
import 'package:hirexpert/view/screen/Candidate/collection/specialization.dart';
import 'package:hirexpert/view/utils/app_String.dart';
import 'package:hirexpert/view/utils/app_color.dart';
import 'package:hirexpert/view/utils/app_icon.dart';
import 'package:hirexpert/view/utils/common/Buttons/ShortButton.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:provider/provider.dart';
import 'package:toastification/toastification.dart';

class OTP extends StatelessWidget {
  OtpApiController_API OTP_API = Get.put(OtpApiController_API());
  OTP({super.key});

  @override
  Widget build(BuildContext context) {
    final Otp = Provider.of<OtpController>(context, listen: false);
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(color: AppColor.Full_body_color),
        child: SafeArea(
          child: Consumer<OtpController>(
            builder: (BuildContext context, value, Widget? child) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: Get.width/10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: Get.height / 20),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: Get.width / 6.5),
                      child: Image.asset(AppIcons.logo, scale: 5),
                    ),
                    SizedBox(height: Get.height / 10),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(text: OtpScreen_text.Phone, style: TextStyle(fontWeight: FontWeight.w800, fontSize: Get.width / 20, color: AppColor.subcolor)),
                          TextSpan(text: ' *', style: TextStyle(fontWeight: FontWeight.w700, fontSize: Get.width / 22, color: AppColor.Error_color),
                          ),
                        ],
                      ),
                    ),
                    PinCodeTextField(
                      keyboardType: TextInputType.number,
                      appContext: context,
                      length: 4,
                      animationType: AnimationType.fade,
                      controller: Otp.Phone_pincodering,
                      onChanged: (value) {Otp.currenttext_fuction(value);},
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
                      onCompleted: (v) {print("Completed: $v");},
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(text: OtpScreen_text.Email, style: TextStyle(fontWeight: FontWeight.w800, fontSize: Get.width / 20, color: AppColor.subcolor)),
                          TextSpan(text: ' *', style: TextStyle(fontWeight: FontWeight.w700, fontSize: Get.width / 22, color: AppColor.Error_color),
                          ),
                        ],
                      ),
                    ),
                    PinCodeTextField(
                      keyboardType: TextInputType.number,
                      appContext: context,
                      length: 4,
                      animationType: AnimationType.fade,
                      controller: Otp.Email_pincodering,
                      onChanged: (value) {Otp.currenttext_fuction(value);},
                      pinTheme: PinTheme(
                        shape: PinCodeFieldShape.underline,
                        activeColor: AppColor.Button_color,
                        disabledColor: AppColor.Button_color,
                        selectedColor: AppColor.Button_color,
                        inactiveColor: AppColor.Button_color,
                        borderRadius: BorderRadius.circular(5),
                        fieldHeight: 50,
                        fieldWidth: 40,
                        activeFillColor: Otp.hasError ? Colors.redAccent : Colors.white,
                      ),
                      onCompleted: (v) {print("Completed: $v");},
                    ),
                    SizedBox(height: Get.height / 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        OnButtons_short(
                          onTap: () {
                            if(OTP_API.OTP_data['status'] == true){
                              toastification.show(
                                title: Text(OTP_API.OTP_data['message'] ?? 'An error occurred'),
                                type: ToastificationType.success,
                                style: ToastificationStyle.minimal,
                                autoCloseDuration: Duration(seconds: 5),
                              );
                              OTP_API.OtpApiController_fuction(EmailOTP: Otp.Email_pincodering.text, PhoneOTP: Otp.Phone_pincodering.text, EntryTerm: '127.0.0.1');
                              Get.to(()=> Candidate_Specialization(),curve: Curves.easeOutQuad,transition: Transition.circularReveal,duration: Duration(seconds: 4));
                            }
                            String message = OTP_API.OTP_data['message'] ?? "Unknown error occurred";
                            toastification.show(
                              context: context,
                              title: Text(message),
                              type: ToastificationType.error,
                              style: ToastificationStyle.minimal,
                              autoCloseDuration: Duration(seconds: 5),
                            );
                          },
                          btn_name: Login_text.Sinup,
                          Border_color: AppColor.Button_color,
                          btn_color: AppColor.Button_color,
                          text_color: AppColor.Full_body_color,
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
