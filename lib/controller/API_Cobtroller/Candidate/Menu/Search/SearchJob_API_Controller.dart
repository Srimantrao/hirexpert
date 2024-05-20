// ignore_for_file: file_names, non_constant_identifier_names, prefer_typing_uninitialized_variables, camel_case_types

import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:hirexpert/view/utils/API_Key.dart';
import 'package:hirexpert/view/utils/appUrl.dart';
import 'package:http/http.dart' as http;

class SearchjobApiController_API extends GetxController {
  var isLoding = false.obs;
  var Search_job;

  Future SearchjobController_Fuction({
    required String Timezone,
    required String CandidateId,
  }) async {
    try {
      final responce = await http.put(
        Uri.parse(AppUrl.SearchJob),
        headers: {
          API_KEY.api_key: API_KEY.key,
          Clientip.clientip: Clientip.ip,
          Logintoken.logintoken: Logintoken.token,
        },
        body: jsonEncode({
          'Timezone': Timezone,
          'CandidateId': CandidateId,
        }),
      );
      if (responce.statusCode == 200 || responce.statusCode == 201) {
        Search_job = jsonDecode(responce.body);
        if (kDebugMode) {
          print("Search_JOB :- $Search_job");
        }
      } else {
        if (kDebugMode) {
          print("Search_JOB ERROR:- ${responce.statusCode} , ${responce.body}");
        }
      }
    } finally {
      isLoding.value = false;
    }
  }
}
