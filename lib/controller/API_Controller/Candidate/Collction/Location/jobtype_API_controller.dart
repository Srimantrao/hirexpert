// ignore_for_file: prefer_typing_uninitialized_variables, file_names, non_constant_identifier_names

import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:hirexpert/view/utils/appUrl.dart';
import 'package:http/http.dart' as http;

import '../../../../../view/utils/API_Key.dart';

class JobtypeApiController extends GetxController {
  var isloding = false.obs;
  var jobtype_data = {}.obs;

  Future JobtypeApiController_Fuction() async {
    try {
      final responce = await http.get(Uri.parse(AppUrl.Jobtype), headers: {
        API_KEY.api_key: API_KEY.key,
        Clientip.clientip: Clientip.ip,
      });
      if (responce.statusCode == 200 || responce.statusCode == 201) {
        jobtype_data.value = jsonDecode(responce.body);
        if (kDebugMode) {
          print("jobtype_data :- $jobtype_data");
        }
      } else {
        if (kDebugMode) {
          print("Eror this :- ${responce.statusCode} , ${responce.body}");
        }
      }
    } finally {
      isloding.value = false;
    }
  }
}
