// ignore_for_file: prefer_typing_uninitialized_variables, file_names, non_constant_identifier_names

import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:hirexpert/view/utils/API_Key.dart';
import 'package:hirexpert/view/utils/appUrl.dart';
import 'package:http/http.dart' as http;

class TechnologylistPopController extends GetxController {
  var isLoding = false.obs;
  var TechnologylistPop_data= {}.obs;

  Future TechnologylistPopController_Fuction() async {
    try {
      isLoding.value = true;

      final Response =
          await http.get(Uri.parse(AppUrl.technologyList), headers: {
        API_KEY.api_key: API_KEY.key,
        Clientip.clientip: Clientip.ip,
      });
      if (Response.statusCode == 200 || Response.statusCode == 201) {
        TechnologylistPop_data.value = jsonDecode(Response.body);
        if (kDebugMode) {
          print("TechnologyList Data :- $TechnologylistPop_data");
        }
      } else {
        throw {
          "TechnologyList Data Error this :- ${Response.statusCode}, ${Response.body}"
        };
      }
    } catch (e) {
      "Tecnologylittpop Error :- $e";
    } finally {
      isLoding.value = false;
    }
  }
}
