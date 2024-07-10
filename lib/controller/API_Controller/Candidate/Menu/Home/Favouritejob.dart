// ignore_for_file: file_names, non_constant_identifier_names, prefer_typing_uninitialized_variables, avoid_print

import 'dart:convert';

import 'package:get/get.dart';
import 'package:hirexpert/view/utils/API_Key.dart';
import 'package:hirexpert/view/utils/appUrl.dart';
import 'package:http/http.dart' as http;

class Favouritejob extends GetxController {
  var isloding = false.obs;
  var data;

  Future Favouritejob_fuction({
    required String CandidateId,
    required String Page,
    required String Timezone,
    required String Tokan,
  }) async {
    try {
      isloding.value = true;

      final responce = await http.get(
        Uri.parse(
          '${AppUrl.savelist}?CandidateId=$CandidateId&Page=$Page&Timezone=$Timezone',
        ),
        headers: {
          API_KEY.api_key: API_KEY.key,
          Clientip.clientip: Clientip.ip,
          Logintoken.token: Tokan,
        },
      );
      if (responce.statusCode == 200 || responce.statusCode == 201) {
        data = jsonDecode(responce.body);
        print("data :- $data");
      } else {
        throw {
          'Saving Data Error this :-  ${responce.body}, ${responce.statusCode}'
        };
      }
    } catch (e) {
      print(
        'Error this :- $e',
      );
    } finally {
      isloding.value = false;
    }
  }
}