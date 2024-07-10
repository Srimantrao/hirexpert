// ignore_for_file: file_names, non_constant_identifier_names, prefer_typing_uninitialized_variables, avoid_print

import 'dart:convert';

import 'package:get/get.dart';
import 'package:hirexpert/view/utils/API_Key.dart';
import 'package:hirexpert/view/utils/appUrl.dart';
import 'package:http/http.dart' as http;

class ConcernApiController extends GetxController {
  var isLoding = false.obs;
  var Concer_data;

  Future ConcernApi_fuction({
    required String JobId,
    required String Comment,
  }) async {
    try {
      isLoding.value = true;

      print('JobId :- $JobId');
      print('Comment :- $Comment');

      Map<String, dynamic> body = {
        'JobId': JobId,
        'Comment': Comment,
      };

      print(body);

      final Response = await http.post(
        Uri.parse(AppUrl.Concern),
        headers: {
          API_KEY.api_key: API_KEY.key,
          Clientip.clientip: Clientip.ip,
        },
        body: body,
      );
      if (Response.statusCode == 200 || Response.statusCode == 201) {
        Concer_data = jsonDecode(Response.body);
        print("Concer Data:-  $Concer_data");
      } else {
        throw {
          "Concer Data Error this :- ${Response.statusCode} , ${Response.body}"
        };
      }
    } catch (e) {
      print("Concer data Error:- $Concer_data");
    } finally {
      isLoding.value = false;
    }
  }
}
