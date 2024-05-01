// ignore_for_file: file_names, non_constant_identifier_names, prefer_typing_uninitialized_variables, depend_on_referenced_packages

import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:hirexpert/view/utils/appUrl.dart';
import 'package:http/http.dart' as http;

class Preferredworksetup extends GetxController {
  var isloding = false.obs;
  var preferredWorkSetup_data;

  Future preferredWorkSetup_Fuction() async {
    try {
      isloding.value = true;

      final preferredWorkSetup_responce =
          await http.get(Uri.parse(AppUrl.preferredWork), headers: {
        'API-KEY': '9B14C4E5260D960613FA525AC4378BA6',
        'Clientip': '192.16.1.115',
      });
      if (preferredWorkSetup_responce.statusCode == 200 ||
          preferredWorkSetup_responce.statusCode == 201) {
        preferredWorkSetup_data = jsonDecode(preferredWorkSetup_responce.body);
        if (kDebugMode) {
          print(preferredWorkSetup_responce.body);
        }
      } else {
        if (kDebugMode) {
          print("Error => ${preferredWorkSetup_responce.statusCode} , ${preferredWorkSetup_responce.body}");
        }
      }
    } finally {
      isloding.value = false;
    }
  }
}
