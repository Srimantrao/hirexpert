// ignore_for_file: avoid_print, file_names, camel_case_types, prefer_typing_uninitialized_variables, non_constant_identifier_names

import 'dart:convert';

import 'package:get/get.dart';
import 'package:hirexpert/view/utils/API_Key.dart';
import 'package:hirexpert/view/utils/appUrl.dart';
import 'package:http/http.dart' as http;


class candidate_BIO_Controller extends GetxController {
  var isLoding = false.obs;
  var candidate_BIO_data;

  Future<void> candi_candidate_fuction({
    required String CandidateId,
    required String BIO,
    required String Timezone,
    String? Tokan
  }) async {
    isLoding.value = true;
    update();

    try {
      final body = {
        'CandidateId': CandidateId,
        'BIO': BIO,
        'Timezone': Timezone,
      };

      final responce = await http.post(Uri.parse(AppUrl.candidateBIO),
          body: body,
          headers: {
            API_KEY.api_key: API_KEY.key,
            Clientip.clientip: Clientip.ip,
            Logintoken.logintoken: 'Tokan'
          });

      if (responce.statusCode == 200 || responce.statusCode == 201) {
        candidate_BIO_data = jsonDecode(responce.body);
        print('This is Your candidate Data :- $candidate_BIO_data');
      } else {
        throw{
          'This is Your candidate Data Error :- ${responce.statusCode}, ${responce.body}'
        };
      }
    } catch (e) {
      'this is canidate error :- $e';
    }
    finally {
      isLoding.value = false;
      update();
    }
  }
}
