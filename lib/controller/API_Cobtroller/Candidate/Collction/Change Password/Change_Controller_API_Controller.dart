// ignore_for_file: prefer_typing_uninitialized_variables, file_names, non_constant_identifier_names

import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:hirexpert/view/utils/API_Key.dart';
import 'package:hirexpert/view/utils/appUrl.dart';
import 'package:http/http.dart' as http;

class ChangeControllerApiController extends GetxController {
  var isLoding = false.obs;
  var ChagePassword_data;

  Future ChangeControllerApiController_Fuction({
    String? Password,
    String? OldPassword,
    String? Tokan,
  }) async {
    try {
      isLoding.value = true;

      if (kDebugMode) {
        print("Password :- $Password");
        print("OldPassword :- $OldPassword");
        print("Tokan :- $Tokan");
      }

      Map<String, dynamic> body = {
        'Password': Password ?? '',
        'OldPassword': OldPassword ?? '',
        'Tokan': Tokan ?? '',
      };

      if (kDebugMode) {
        print(body);
      }

      final Response = await http.post(
        Uri.parse(AppUrl.Change_password),
        headers: {
          API_KEY.api_key: API_KEY.key,
          Clientip.clientip: Clientip.ip,
          Logintoken.logintoken: Tokan ?? '',
        },
        body: body,
      );
      if (Response.statusCode == 200 || Response.statusCode == 201) {
        ChagePassword_data = jsonDecode(Response.body);
        if (kDebugMode) {
          print("Show Password Data :-  $ChagePassword_data");
        }
      } else {
        throw {"Password Data Error ${Response.statusCode}, ${Response.body}"};
      }
    } catch (e) {
      if (kDebugMode) {
        print("Password Data Error this :- $e");
      }
    } finally {
      isLoding.value = false;
    }
  }
}
