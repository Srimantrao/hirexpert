// ignore_for_file: file_names, non_constant_identifier_names, prefer_typing_uninitialized_variables, avoid_print

import 'dart:convert';

import 'package:get/get.dart';
import 'package:hirexpert/view/utils/API_Key.dart';
import 'package:hirexpert/view/utils/appUrl.dart';
import 'package:http/http.dart' as http;

class CountrylistPopController extends GetxController {
  var isLoding = false.obs;
  var countrylist;

  @override
  void onInit() {
    CountrylistPopController_fuction();
    super.onInit();
  }

  Future<void> CountrylistPopController_fuction() async {
    try {
      isLoding.value = true;

      final responce = await http.get(Uri.parse(AppUrl.CountryList), headers: {
        API_KEY.api_key: API_KEY.key,
        Clientip.clientip: Clientip.ip,
      });
      if (responce.statusCode == 200 || responce.statusCode == 201) {
        countrylist = jsonDecode(responce.body);
        print('countrylist data :- $countrylist');
      } else {
        throw {'countrylist data :- ${responce.statusCode} , ${responce.body}'};
      }
    } catch (e) {
      'Countrylist Error :- $e';
    } finally {
      isLoding.value = false;
    }
  }
}
