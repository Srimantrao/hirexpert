// ignore_for_file: file_names, non_constant_identifier_names, prefer_typing_uninitialized_variables, avoid_print

import 'dart:convert';

import 'package:get/get.dart';
import 'package:hirexpert/view/utils/API_Key.dart';
import 'package:hirexpert/view/utils/appUrl.dart';
import 'package:http/http.dart' as http;

class OfferController extends GetxController {
  var isLoding = false.obs;
  var data= {}.obs;

  Future OfferController_fuction({
    required String CompanyId,
    required String Page,
    required String Timezone,
    required String JobStatus,
    required String Tokan,
  }) async {
    try {
      isLoding.value = true;

      final responce = await http.get(
        Uri.parse(
          '${AppUrl.Offer}?CompanyId=$CompanyId&Page=$Page&Timezone=$Timezone&JobStatus=$JobStatus',
        ),
        headers: {
          API_KEY.api_key: API_KEY.key,
          Clientip.clientip: Clientip.ip,
          Logintoken.logintoken: Tokan,
        },
      );
      if (responce.statusCode == 200 || responce.statusCode == 201) {
        data.value = jsonDecode(responce.body);
        print('Offer data :- $data');
      } else {
        throw {
          'Offer data Error this :-  ${responce.statusCode} ${responce.body}'
        };
      }
    } catch (e) {
      "Offer data Error $e";
    } finally {
      isLoding.value = false;
    }
  }
}
