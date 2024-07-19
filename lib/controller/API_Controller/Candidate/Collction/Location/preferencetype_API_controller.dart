// ignore_for_file: file_names, prefer_typing_uninitialized_variables, non_constant_identifier_names

import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:hirexpert/view/utils/API_Key.dart';
import 'package:hirexpert/view/utils/appUrl.dart';
import 'package:http/http.dart' as http;

class PreferencetypeApiController extends GetxController {
  var islodind = false.obs;
  var Preferencetype_data= {}.obs;

  Future PreferencetypeApiController_fuction() async {
    try {
      final response =
          await http.get(Uri.parse(AppUrl.preferredWork), headers: {
        API_KEY.api_key: API_KEY.key,
        Clientip.clientip: Clientip.ip,
      });
      if (response.statusCode == 200 || response.statusCode == 201) {
        Preferencetype_data.value = jsonDecode(response.body);
        if (kDebugMode) {
          print("Preference_data :- $Preferencetype_data");
        }
      } else {
        if (kDebugMode) {
          print("Preference_data Error:- ${response.statusCode}, ${response.body}");
        }
      }
    } finally {
      islodind.value = false;
    }
  }
}
