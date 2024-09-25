// ignore_for_file: non_constant_identifier_names, prefer_typing_uninitialized_variables, file_names, camel_case_types, avoid_print

import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:hirexpert/view/utils/API_Key.dart';
import 'package:hirexpert/view/utils/appUrl.dart';
import 'package:http/http.dart' as http;

class OtpApiController_API extends GetxController {
  var isLoding = false.obs;
  var OTP_data = {}.obs;

  Future OtpApiController_fuction({required String EmailOTP, String? PhoneOTP, required String EntryTerm,}) async {
    try {
      isLoding.value = true;

        print('EmailOTP :  $EmailOTP');
        print('PhoneOTP :  $PhoneOTP');
        print('EntryTerm :  $EntryTerm');

      Map<String, dynamic> body = {'EmailOTP': EmailOTP, 'PhoneOTP': PhoneOTP ?? '', 'EntryTerm': EntryTerm,};
      print(body);

      final responce = await http.post(
        Uri.parse(AppUrl.OTP),
        headers: {API_KEY.api_key: API_KEY.key, Clientip.clientip: Clientip.ip},
        body: body,
      );
      if (responce.statusCode == 200 || responce.statusCode == 201) {
        OTP_data.value = jsonDecode(responce.body);
        print("Otpdata :- $OTP_data");
      } else {
        throw {
          "OtpData Error this:- ${responce.statusCode} , ${responce.body}"
        };
      }
    } catch (e) {
      if (kDebugMode) {
        print("Otp Errr :- $e");
      }
    } finally {
      isLoding.value = false;
    }
  }
}
