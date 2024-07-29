// ignore_for_file: file_names, prefer_typing_uninitialized_variables, non_constant_identifier_names, avoid_print

import 'dart:convert';

import 'package:get/get.dart';
import 'package:hirexpert/view/utils/API_Key.dart';
import 'package:hirexpert/view/utils/appUrl.dart';
import 'package:http/http.dart' as http;

class Taglist extends GetxController {
  var isloding = false.obs;
  var taglist = {}.obs;

  Future Taglist_fuction() async {
    try {
      final responce = await http.get(Uri.parse(AppUrl.tagList), headers: {
        API_KEY.api_key: API_KEY.key,
        Clientip.clientip: Clientip.ip
      });
      if (responce.statusCode == 200 || responce.statusCode == 201) {
        taglist = jsonDecode(responce.body);
        print("taglist data :- $taglist");
      } else {
        throw {'taglist data Error :- ${responce.statusCode},${responce.body}'};
      }
    } catch (e) {
      print('Error Taglist $e');
    } finally {
      isloding.value = false;
    }
  }
}
