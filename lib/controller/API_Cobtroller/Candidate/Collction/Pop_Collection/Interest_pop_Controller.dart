// ignore_for_file: prefer_typing_uninitialized_variables, file_names, non_constant_identifier_names

import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:hirexpert/view/utils/API_Key.dart';
import 'package:hirexpert/view/utils/appUrl.dart';
import 'package:http/http.dart' as http;

class InterestPopController extends GetxController {
  var isLoding = false.obs;
  var Interest_pop;

  Future InterestPopController_Fuction({
    required String CandidateId,
    required String TechId,
    required String Timezone,
  }) async {
    try {
      isLoding.value = true;

      if (kDebugMode) {
        print("CandidateId :- $CandidateId");
        print("CandidateId :- $TechId");
        print("CandidateId :- $Timezone");
      }

      Map<String, dynamic> body = {
        'CandidateId': CandidateId,
        'TechId': TechId,
        'Timezone': Timezone,
      };

      if (kDebugMode) {
        print(body);
      }

      final Response = await http.post(
        Uri.parse(
          AppUrl.interest,
        ),
        headers: {
          API_KEY.api_key: API_KEY.key,
          Clientip.clientip: Clientip.ip,
        },
        body: body,
      );
      if (Response.statusCode == 200 || Response.statusCode == 201) {
        Interest_pop = jsonDecode(Response.body);
        if (kDebugMode) {
          print("Interest_POP :- $Interest_pop");
        }
      } else {
        throw {
          " Interest_POP Error this :- ${Response.statusCode} , ${Response.body} "
        };
      }
    } catch (e) {
      if (kDebugMode) {
        print("Interest Erro :- $e");
      }
    } finally {
      isLoding.value = false;
    }
  }
}
