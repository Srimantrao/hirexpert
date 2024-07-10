// ignore_for_file: prefer_typing_uninitialized_variables, non_constant_identifier_names, file_names, avoid_print

import 'dart:convert';

import 'package:get/get.dart';
import 'package:hirexpert/view/utils/API_Key.dart';
import 'package:hirexpert/view/utils/appUrl.dart';
import 'package:http/http.dart' as http;

class IsapplingApiController extends GetxController {
  var isLoding = false.obs;
  var isApplingdata;

  Future IsApplingAPIController_fuction({
    required String Tokan,
    required int appling,
  }) async {
    try {
      isLoding.value = true;

      final responce = await http.get(
        Uri.parse('${AppUrl.isApplyed}?.IsApply == $appling'),
        headers: {
          API_KEY.api_key: API_KEY.key,
          Clientip.clientip: Clientip.ip,
          Logintoken.logintoken: Tokan
        },
      );
      if (responce.statusCode == 200 || responce.statusCode == 201) {
        isApplingdata = jsonDecode(responce.body);
        print('isApplingdata :- $isApplingdata');
      } else {
        throw ('isAppling Data is Error :-  ${responce.statusCode} , ${responce.body}');
      }
    } catch (e) {
      'isAppling Error $e';
    } finally {
      isLoding.value = false;
    }
  }
}
