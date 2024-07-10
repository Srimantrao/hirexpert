// ignore_for_file: file_names, non_constant_identifier_names, avoid_print, prefer_typing_uninitialized_variables

import 'dart:convert';

import 'package:get/get.dart';
import 'package:hirexpert/view/utils/API_Key.dart';
import 'package:hirexpert/view/utils/appUrl.dart';
import 'package:http/http.dart' as http;

class Taglist extends GetxController {
  var isLoding = false.obs;
  var Taglist_data;

  Future Taglist_Fuction() async {
    try {
      final Response = await http.get(
        Uri.parse(AppUrl.tagList),
        headers: {
          API_KEY.api_key: API_KEY.key,
          Clientip.clientip: Clientip.ip,
        },
      );
      if (Response.statusCode == 200 || Response.statusCode == 201) {
        Taglist_data = jsonDecode(Response.body);
        print("Taglist_data:- $Taglist_data");
      } else {
        throw {
          "Taglist_data list Error ${Response.statusCode},${Response.body}"
        };
      }
    } catch (e) {
      print("This Tag List :- $e");
    } finally {
      isLoding.value = false;
    }
  }
}
