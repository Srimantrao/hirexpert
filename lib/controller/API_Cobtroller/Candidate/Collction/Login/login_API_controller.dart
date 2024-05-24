// ignore_for_file: non_constant_identifier_names, file_names, prefer_typing_uninitialized_variables

import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:hirexpert/view/utils/appUrl.dart';
import 'package:http/http.dart' as http;
import '../../../../../view/utils/API_Key.dart';

class OptionApiController extends GetxController {
  var isLodingvalue = false.obs;
  var option_data;

  Future OptionApiController_fuction({
    String? Email,
    String? Password,
    String? UserType,
  }) async {
    try {
      isLodingvalue.value = true;

      if (kDebugMode) {
        print("Email: $Email");
        print("Password: $Password");
        print("UserType: $UserType");
        print("Timezone: asia/kolkata");
      }
      
      Map<String, dynamic> body = {
        'Email': Email ?? '',
        'Password': Password ?? '',
        'UserType': UserType ?? '',
        'Timezone': 'asia/kolkata',
      };

      if (kDebugMode) {
        print(body);
      }

      final responce = await http.post(
        Uri.parse(AppUrl.login),
        body: body,
        headers: {
          API_KEY.api_key: API_KEY.key,
          Clientip.clientip: Clientip.ip,
        },
      );
      if (responce.statusCode == 200 || responce.statusCode == 201) {
        option_data = jsonDecode(responce.body);
        if (kDebugMode) {
          print("option_data :- $option_data");
        }
      } else {
        throw {"option_data Error :- ${responce.statusCode}, ${responce.body}"};
      }
    } catch (e) {
      if (kDebugMode) {
        print("optaion Data Error :- $e");
      }
    } finally {
      isLodingvalue.value = false;
    }
  }
}
