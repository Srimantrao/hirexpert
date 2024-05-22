// ignore_for_file: file_names, prefer_typing_uninitialized_variables, non_constant_identifier_names

import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:hirexpert/view/utils/API_Key.dart';
import 'package:hirexpert/view/utils/appUrl.dart';
import 'package:http/http.dart' as http;

class SinupApiController extends GetxController {
  var isLoding = false.obs;
  var Sinup_data;

  Future SinupApiController_faction({
    required String FirstName,
    String? MiddleName,
    required String LastName,
    required String Email,
    required String Password,
    required String Phone,
  }) async {
    try {
      if (kDebugMode) {
        print('FirstName :- $FirstName');
        print('MiddleName :- $MiddleName');
        print('LastName :- $LastName');
        print('Email :- $Email');
        print('Password :- $Password');
        print('Phone :- $Phone');
      }

      Map<String, dynamic> body = {
        'FirstName': FirstName,
        'MiddleName': MiddleName ?? '',
        'LastName': LastName,
        'Email': Email,
        'Password': Password,
        'Phone': Phone,
      };

      if (kDebugMode) {
        print(body);
      }

      final responce = await http.post(
        Uri.parse(AppUrl.Sinup),
        headers: {
          API_KEY.api_key: API_KEY.key,
          Clientip.clientip: Clientip.ip,
        },
        body: body,
      );
      if (responce.statusCode == 200 || responce.statusCode == 201) {
        Sinup_data = jsonDecode(responce.body);
        if (kDebugMode) {
          print("Sinup Data :-$Sinup_data");
        }
      } else {
        throw {
          "Sinup Data Error this :- ${responce.statusCode} , ${responce.body}"
        };
      }
    } catch (e) {
      if (kDebugMode) {
        print("Sinup Data Error = $e");
      }
    } finally {
      isLoding.value = false;
    }
  }
}
