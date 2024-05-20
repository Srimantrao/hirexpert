// ignore_for_file: file_names, prefer_typing_uninitialized_variables, non_constant_identifier_names, camel_case_types

import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:hirexpert/view/utils/API_Key.dart';
import 'package:hirexpert/view/utils/appUrl.dart';
import 'package:http/http.dart' as http;

class SearchJobController_API extends GetxController {
  var isLoding = false.obs;
  var JobData;

  Future SearchJobController_Fuction() async {
    try {
      final responce = await http.get(Uri.parse(AppUrl.Search_Job), headers: {
        API_KEY.api_key: API_KEY.key,
        Clientip.clientip: Clientip.ip,
        Logintoken.logintoken: Logintoken.token,
      });
      if (responce.statusCode == 200 || responce.statusCode == 201) {
        JobData = jsonDecode(responce.body);
        if (kDebugMode) {
          print("JobData :- $JobData");
        }
      } else {
        if (kDebugMode) {
          print(
              "Error JobData this :- ( ${responce.statusCode}, and ${responce.body})");
        }
      }
    } finally {
      isLoding.value = false;
    }
  }
}
