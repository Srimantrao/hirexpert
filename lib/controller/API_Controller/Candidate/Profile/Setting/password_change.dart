// ignore_for_file: file_names, prefer_typing_uninitialized_variables, non_constant_identifier_names, avoid_print

import 'dart:convert';

import 'package:get/get.dart';
import 'package:hirexpert/view/utils/API_Key.dart';
import 'package:hirexpert/view/utils/appUrl.dart';
import 'package:http/http.dart' as http;

class PasswordChange extends GetxController {
  var isLoding = false.obs;
  var Passwordchange;

  Future PasswordChange_fuction({required String Password, required String OldPassword, required String Tokan}) async {
    try {
      isLoding.value = true;

      final body = {
        'Password': Password,
        'OldPassword': OldPassword,
      };

      final responce = await http.post(
        Uri.parse(AppUrl.password_change),
        headers: {
          API_KEY.api_key: API_KEY.key,
          Clientip.clientip: Clientip.ip,
          Logintoken.logintoken: Tokan,
        },
        body: body,
      );

      if (responce.statusCode == 200 || responce.statusCode == 201) {
        Passwordchange = jsonDecode(responce.body);
        print('Password Chage Data :-  $Passwordchange');
      } else {
        throw {
          'Password Chage Data Erro :- ${responce.statusCode} ${responce.body}'
        };
      }
    } catch (e) {
      print('Password Change Error :- $e');
    } finally {
      isLoding.value = false;
    }
  }
}
