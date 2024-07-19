// ignore_for_file: file_names, non_constant_identifier_names, prefer_typing_uninitialized_variables, avoid_print

import 'dart:convert';

import 'package:get/get.dart';
import 'package:hirexpert/view/utils/API_Key.dart';
import 'package:hirexpert/view/utils/appUrl.dart';
import 'package:http/http.dart' as http;

class DetailsControllers extends GetxController {
  var isLoding = false.obs;
  var Details_data= {}.obs;

  Future DetailsControllers_fuction(
      {required String JobID,
      required String Timezone,
      required String Tokan}) async {
    try {
      isLoding.value = true;

      print("JobId :- $JobID");
      print("Timezome :- $Timezone");
      print("Tokan :- $Tokan");

      final responce = await http.get(
        Uri.parse('${AppUrl.details}?JobId=$JobID&Timezone=$Timezone'),
        headers: {
          API_KEY.api_key: API_KEY.key,
          Clientip.clientip: Clientip.ip,
          Logintoken.logintoken: Tokan ?? ''
        },
      );
      if (responce.statusCode == 200 || responce.statusCode == 201) {
        Details_data.value = jsonDecode(responce.body);
        print("Details data : - $Details_data");
      } else {
        throw {
          'Details data Error this :-  ${responce.body}, ${responce.statusCode}'
        };
      }
    } catch (e) {
      'Details Error : - $e';
    } finally {
      isLoding.value = false;
    }
  }
}
