// ignore_for_file: prefer_typing_uninitialized_variables, non_constant_identifier_names, file_names

import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:hirexpert/view/utils/API_Key.dart';
import 'package:hirexpert/view/utils/appUrl.dart';
import 'package:http/http.dart' as http;

class NotificationApiController extends GetxController {
  var isLoding = false.obs;
  var Notification_data;

  Future NotificationApiController_fuction() async {
    try {
      isLoding.value = true;

      final Response = await http.get(Uri.parse(AppUrl.Notification), headers: {
        API_KEY.api_key: API_KEY.key,
        Clientip.clientip: Clientip.ip,
        Logintoken.logintoken: Logintoken.token,
      });
      if (Response.statusCode == 200 || Response.statusCode == 201) {
        Notification_data = jsonDecode(Response.body);
        if (kDebugMode) {
          print("Notification Data :- $Notification_data");
        }
      } else {
        throw {
          "Notification Data this Error :- ${Response.statusCode}, ${Response.body}"
        };
      }
    } catch (e) {
      if (kDebugMode) {
        print("Notification Error this :- $e");
      }
    } finally {
      isLoding.value = false;
    }
  }
}
