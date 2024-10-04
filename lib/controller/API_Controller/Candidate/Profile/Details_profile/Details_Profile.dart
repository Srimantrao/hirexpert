// ignore_for_file: avoid_print, non_constant_identifier_names, prefer_typing_uninitialized_variables, camel_case_types

import 'dart:convert';
import 'package:get/get.dart';
import 'package:hirexpert/view/utils/API_Key.dart';
import 'package:hirexpert/view/utils/appUrl.dart';
import 'package:http/http.dart' as http;

class DetailsProfile_Controls extends GetxController {
  var isloding = false.obs;
  var DetailsProfile_data;

  Future<void> DetailsProfile_Controls_Fuction({required String JobId, required String Timezone, required String CandidateId, required String IsInterview,required String Tokan}) async {
    try {
      isloding.value = true;

      final responce = await http.get(Uri.parse('${AppUrl.CanJobDetails}?JobId=$JobId&Timezone=$Timezone&CandidateId=$CandidateId&IsInterview=$IsInterview'),
          headers: {API_KEY.api_key: API_KEY.key, Clientip.clientip: Clientip.ip, Logintoken.logintoken: Tokan ?? ''});

      if (responce.statusCode == 200 || responce.statusCode == 201) {
        DetailsProfile_data = jsonDecode(responce.body);
        print("DetailsProfile_data :- $DetailsProfile_data");
      } else {
        throw {'DetailsProfile_data Error :- ${responce.statusCode}, ${responce.body}',};
      }
    } catch (e) {
      "DetailsProfile Controllers Error :- $e";
    } finally {
      isloding.value = false;

    }
  }
}
