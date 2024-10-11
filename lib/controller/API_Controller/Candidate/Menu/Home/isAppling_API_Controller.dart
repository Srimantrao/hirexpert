// ignore_for_file: prefer_typing_uninitialized_variables, non_constant_identifier_names, file_names, avoid_print

import 'dart:convert';
import 'dart:developer';

import 'package:get/get.dart';
import 'package:hirexpert/view/utils/API_Key.dart';
import 'package:hirexpert/view/utils/appUrl.dart';
import 'package:http/http.dart' as http;

class IsapplingApiController extends GetxController {
  var isLoding = false.obs;
  var isApplingdata= {}.obs;
  var appling = 0.obs;

  @override
  void onInit() {
    IsApplingAPIController_fuction();
    super.onInit();
  }

  Future IsApplingAPIController_fuction({
     String? Tokan,
     String? Candidate,
     String? JobId,
     String? Timezone,
  }) async {
    try {
      isLoding.value = true;

      print("Tokan :- $Tokan");
      print("Tokan :- $Candidate");
      print("Tokan :- $JobId");
      print("Tokan :- $Timezone");

      final responce = await http.get(
        Uri.parse('${AppUrl.isApplyed}?CandidateId=$Candidate&JobId=$JobId&Timezone=$Timezone'),
        headers: {
          API_KEY.api_key: API_KEY.key,
          Clientip.clientip: Clientip.ip,
          Logintoken.logintoken: Tokan ?? '',
        },
      );
      if (responce.statusCode == 200 || responce.statusCode == 201) {
        isApplingdata.value = jsonDecode(responce.body);
        log('isApplingdata :- $isApplingdata');
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
