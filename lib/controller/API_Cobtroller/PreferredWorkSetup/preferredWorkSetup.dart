// ignore_for_file: file_names, non_constant_identifier_names, prefer_typing_uninitialized_variables

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:hirexpert/view/utils/appUrl.dart';

class Preferredworksetup extends GetxController {
  final dio = Dio();
  var isloding;

  var preferredWorkSetup_data;

  Future preferredWorkSetup_Fuction() async {
    try {
      isloding = true;

      final preferredWorkSetup_responce = await dio.get(
        AppUrl.preferredWork,
        options: Options(headers: {
          'API-KEY': '9B14C4E5260D960613FA525AC4378BA6',
          'Clientip': '192.16.1.115',
        }),
      );
      if (preferredWorkSetup_responce.statusCode == 200 ||
          preferredWorkSetup_responce.statusCode == 201) {
        preferredWorkSetup_data =
            jsonDecode(preferredWorkSetup_responce.data['data']);
      } else {
        if (kDebugMode) {
          print(preferredWorkSetup_responce.statusCode);
        }
      }
    } finally {
      isloding = false;
    }
  }
}
