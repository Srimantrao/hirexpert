// ignore_for_file: file_names, prefer_typing_uninitialized_variables, non_constant_identifier_names, avoid_print

import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:hirexpert/view/utils/API_Key.dart';
import 'package:hirexpert/view/utils/appUrl.dart';
import 'package:http/http.dart' as http;

class SearchApiController extends GetxController {
  var isLoding = false.obs;
  var Search_data = {}.obs;

  Future SearchApiController_fuction({
    required String Timezone,
    required String CandidateId,
    required String Tokan,
    required String IsWeb,
    required String TechId,
  }) async {
    try {
      isLoding.value = true;

      if (kDebugMode) {print("Timezone :- $Timezone"); print("CandidateId :- $CandidateId"); print("IsWeb :- $IsWeb");}

      Map<String, dynamic> body = {
        'Timezone': Timezone,
        'CandidateId': CandidateId,
        'IsWeb' : IsWeb,
        'TechId' : TechId,
      };

      if (kDebugMode) {print(body);}

      final Response = await http.post(
        Uri.parse(AppUrl.SearchJob),
        headers: {API_KEY.api_key: API_KEY.key, Clientip.clientip: Clientip.ip, Logintoken.logintoken: Tokan,},
        body: body,
      );

      if (Response.statusCode == 200 || Response.statusCode == 201) {
        Search_data.value = jsonDecode(Response.body);print("Search Job :-  $Search_data");
      } else {
        throw {" Search Job Error this :- ${Response.statusCode} , ${Response.body} "};
      }
    } catch (e) {print('Search job this Error :- $e');}
    finally {isLoding.value = false;}
  }
}
