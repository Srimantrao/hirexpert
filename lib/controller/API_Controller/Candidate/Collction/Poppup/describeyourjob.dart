// ignore_for_file: prefer_typing_uninitialized_variables, non_constant_identifier_names, avoid_print

import 'dart:convert';

import 'package:get/get.dart';
import 'package:hirexpert/view/utils/API_Key.dart';
import 'package:hirexpert/view/utils/appUrl.dart';
import 'package:http/http.dart' as http;

class Describeyourjob extends GetxController {
  var isloding = false.obs;
  var Describeyourjob_data = {}.obs;

  Future Describeyourjob_fuction() async {
    try {
      isloding.value = true;

      final responce = await http.get(
        Uri.parse(AppUrl.describe_your_job),
        headers: {
          API_KEY.api_key: API_KEY.key,
          Clientip.clientip: Clientip.ip,
        },
      );

      if (responce.statusCode == 200 || responce.statusCode == 201) {
        Describeyourjob_data.value = jsonDecode(responce.body);
        print("Describeyourjob_data:- $Describeyourjob_data");
      } else {
        throw {'Describeyourjob_data Error:- ${responce.statusCode} , ${responce.body}'};
      }
    } catch (e) {
      print("Describeyourjob_data Error this :- $e");
    } finally {
      isloding.value = false;
    }
  }
}
