// ignore_for_file: file_names, non_constant_identifier_names, prefer_typing_uninitialized_variables

import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:hirexpert/view/utils/API_Key.dart';
import 'package:hirexpert/view/utils/appUrl.dart';
import 'package:http/http.dart' as http;

class EmployerApiSinupController extends GetxController {
  var isLodind = false.obs;
  var Employer_Sinup= {}.obs;

  Future EmployerApiSinupController_Fuction({
    required String Email,
    required String Password,
    required String FirstName,
    required String LastName,
    required String ComName,
  }) async {
    try {
      isLodind.value = true;

      if (kDebugMode) {
        print("Email : $Email");
        print("Password : $Password");
        print("FirstName : $FirstName");
        print("LastName : $LastName");
        print("ComName : $ComName");
      }

      Map<String, dynamic> body = {
        'Email': Email,
        'Password': Password,
        'FirstName': FirstName,
        'LastName': LastName,
        'ComName': ComName,
      };

      if (kDebugMode) {
        print(body);
      }

      final Response = await http.post(
        Uri.parse(AppUrl.Employer_Signup),
        headers: {
          API_KEY.api_key: API_KEY.key,
          Clientip.clientip: Clientip.ip,
          Logintoken.logintoken: Logintoken.token,
        },
        body: body,
      );
      if (Response.statusCode == 200 || Response.statusCode == 201) {
        Employer_Sinup.value = jsonDecode(Response.body);
        if (kDebugMode) {
          print("Employer Sinup :- $Employer_Sinup");
        }
      } else {
        throw {
          " Employer Sinup This Error :- ${Response.statusCode} , ${Response.body} "
        };
      }
    } catch (e) {
      if (kDebugMode) {
        print("Employer Sinup Error :- $e");
      }
    } finally {
      isLodind.value = false;
    }
  }
}
