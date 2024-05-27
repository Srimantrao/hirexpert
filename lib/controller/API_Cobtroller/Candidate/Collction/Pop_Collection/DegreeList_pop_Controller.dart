// ignore_for_file: non_constant_identifier_names, file_names, prefer_typing_uninitialized_variables

import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:hirexpert/view/utils/API_Key.dart';
import 'package:hirexpert/view/utils/appUrl.dart';
import 'package:http/http.dart' as http;

class DegreelistPopController extends GetxController {
  var isLoding = false.obs;
  var Degree_data;

  Future DegreelistPopController_Fuction() async {
    try {
      isLoding.value = true;

      final Response = await http.get(
        Uri.parse(AppUrl.degreeList),
        headers: {API_KEY.api_key: API_KEY.key, Clientip.clientip: Clientip.ip},
      );
      if (Response.statusCode == 200 || Response.statusCode == 201) {
        Degree_data = jsonDecode(Response.body);
        if (kDebugMode) {
          print("Degree_data :-  $Degree_data");
        }
      } else {
        throw {
          "Degree_data Error this :- ${Response.statusCode} , ${Response.body}"
        };
      }
    } catch (e) {
      if (kDebugMode) {
        print("This is Error on Degree Data :- $e");
      }
    } finally {
      isLoding.value = false;
    }
  }
}
