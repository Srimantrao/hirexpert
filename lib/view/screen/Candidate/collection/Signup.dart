// ignore_for_file: non_constant_identifier_names, file_names, camel_case_types, must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:hirexpert/controller/API_Cobtroller/Candidate/Collction/Sinup/sinup_API_controller.dart';
import 'package:hirexpert/view/screen/Candidate/collection/OTP_Scrren.dart';
import 'package:hirexpert/view/screen/Candidate/collection/specialization.dart';
import 'package:hirexpert/view/utils/app_String.dart';
import 'package:hirexpert/view/utils/app_color.dart';
import 'package:hirexpert/view/utils/common/Buttons/wideButtons.dart';
import 'package:provider/provider.dart';
import '../../../../controller/User_Controller/Candidate_Controller/LoginControoler/visibility.dart';
import '../../../../controller/User_Controller/Candidate_Controller/SignupController/SinupController.dart';
import '../../../utils/app_icon.dart';
import '../../../utils/app_loder.dart';
import '../../../utils/common/Textfild/Inputfild.dart';

class candidate_Signup extends StatelessWidget {
  SinupApiController Sinup_API = Get.put(SinupApiController());

  candidate_Signup({super.key});

  @override
  Widget build(BuildContext context) {
    final vail = Provider.of<Candidate_SinupController>(context, listen: false);
    final vis =
        Provider.of<Candidate_VisibilityController>(context, listen: false);
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
                        // onChanged: (FrisName) {
                        //   vail.fristname_vail(FrisName);
                        // },
                        labal: Signup_text.First_Name,
                        hint: Signup_text.Enter_First_Name,
                        controller: vail.frist_name,
                      ),
                      // (vail.isError)
                      //     ? Text(
                      //         vail.isError ? vail.throwFristnameError : "",
                      //         style: TextStyle(
                      //           fontSize: Get.width / 25,
                      //           color: AppColor.Error_color,
                      //         ),
                      //       )
                      //     : const SizedBox(),
                      SizedBox(height: Get.height / 50),

                      //Last Name
                      Inputfild(
                        // onChanged: (Lastname) {
                        //   vail.lastname_vail(Lastname);
                        // },
                        labal: Signup_text.Last_Name,
                        hint: Signup_text.Enter_last_Name,
                        controller: vail.last_name,
                      ),
                      // (vail.isError)
                      //     ? Text(
                      //         vail.isError ? vail.throwLastnameError : "",
                      //         style: TextStyle(
                      //           fontSize: Get.width / 25,
                      //           color: AppColor.Error_color,
                      //         ),
                      //       )
                      //     : const SizedBox(),
                      SizedBox(height: Get.height / 50),

                      //Email
                      Inputfild(
                        // onChanged: (Email) {
                        //   vail.Email_vali(Email);
                        // },
                        labal: Signup_text.Email_Id,
                        hint: Signup_text.Enter_Email_Address,
                        controller: vail.email,
                      ),
                      // (vail.isError)
                      //     ? Text(
                      //         vail.isError ? vail.throwEmailnameError : "",
                      //         style: TextStyle(
                      //           fontSize: Get.width / 25,
                      //           color: AppColor.Error_color,
                      //         ),
                      //       )
                      //     : const SizedBox(),
                      SizedBox(height: Get.height / 50),

                      //Phone Number
                      Inputfild(
                        keyboardType: TextInputType.number,
                        // onChanged: (Phonevalue) {
                        //   vail.Phone_vail(Phonevalue);
                        // },
                        labal: Signup_text.Phone_Number,
                        hint: Signup_text.Enter_Phone_Number,
                        controller: vail.phone,
                      ),
                      // (vail.isError)
                      //     ? Text(
                      //         vail.isError ? vail.throwPhoneNumberError : "",
                      //         style: TextStyle(
                      //           fontSize: Get.width / 25,
                      //           color: AppColor.Error_color,
                      //         ),
                      //       )
                      //     : const SizedBox(),

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
                              vail.password_vali(valuepassword);
                            },
                            labal: Signup_text.Password,
                            hint: Signup_text.Enter_last_Name,
                            controller: vail.password,
                          );
                        },
                      ),
                      // (vail.isError)
                      //     ? Text(
                      //         vail.isError ? vail.throwPasswordError : "",
                      //         style: TextStyle(
                      //           fontSize: Get.width / 25,
                      //           color: AppColor.Error_color,
                      //         ),
                      //       )
                      //     : const SizedBox(),
                      SizedBox(height: Get.height / 50),
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
                            onChanged: (confirmpassword) {
                              vail.confirm_password_vail(confirmpassword);
                            },
                            labal: Signup_text.Confirm_Password,
                            hint: Signup_text.Confirm_Password,
                            controller: vail.confirm_password,
                          );
                        },
                      ),
                      // (vail.isError)
                      //     ? Text(
                      //         vail.isError
                      //             ? vail.throwConfirmPasswordError
                      //             : "",
                      //         style: TextStyle(
                      //           fontSize: Get.width / 25,
                      //           color: AppColor.Error_color,
                      //         ),
                      //       )
                      //     : const SizedBox(),
                      SizedBox(height: Get.height / 20),
                      InkWell(
                        onTap: () {
                          vail.SingupValidation();
                          // Get.to(
                          //   () => const Candidate_Specialization(),
                          // );
                        },
                        child: (Sinup_API.isLoding.value)
                            ? Center(
                                child: Image.asset(
                                    AppLoder.infinityloder_without_background),
                              )
                            : OnButtons(
                                onTap: () {
                                  Sinup_API.SinupApiController_faction(
                                    FirstName: vail.frist_name.text,
                                    LastName: vail.last_name.text,
                                    Email: vail.email.text,
                                    Password: vail.password.text,
                                    Phone: vail.phone.text,
                                  );
                                  if (Sinup_API.Sinup_data['status'] == true) {
                                    Get.to(() => OTP());
                                  } else {
                                    Get.showSnackbar(
                                      GetBar(
                                        duration: const Duration(seconds: 2),
                                        message:
                                            Sinup_API.Sinup_data['message'],
                                      ),
                                    );
                                  }
                                  Get.to(
                                    () => Candidate_Specialization(
                                      first_name: vail.frist_name.text,
                                      last_name: vail.last_name.text,
                                    ),
                                  );
                                },
                                Button_Color: AppColor.Button_color,
                                btn_name: Signup_text.Sign_Up,
                              ),
                      ),
                      SizedBox(height: Get.height / 50),
                      Row(
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
