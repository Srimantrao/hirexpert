// ignore_for_file: non_constant_identifier_names, avoid_print, prefer_typing_uninitialized_variables

import 'dart:convert';

import 'package:get/get.dart';
import 'package:hirexpert/view/utils/API_Key.dart';
import 'package:hirexpert/view/utils/appUrl.dart';
import 'package:http/http.dart' as http;

class Jobcountsaccording extends GetxController {
  var isLoding = false.obs;
  var data = {}.obs;

  Future Jobcountsaccording_fuction({required String Tokan, required String CandidateId}) async {
    Map<String, dynamic> body = {'CandidateId': CandidateId,};
    print(body);

    try {
      isLoding.value = true;

      final responce = await http.post(
        Uri.parse(AppUrl.count),
        headers: {API_KEY.api_key: API_KEY.key, Clientip.clientip: Clientip.ip, Logintoken.logintoken: Tokan,},
        body: body,
      );

      if (responce.statusCode == 200 || responce.statusCode == 201) {
        data.value = jsonDecode(responce.body);
        print("Candidatecount :- $data");
      } else {
        throw {"Candidatecount this Error :-  ${responce.body}, ${responce.statusCode}",};
      }
    } catch (e) {print('Candiate Error :- $e');}
    finally {isLoding.value = false;}
  }
}
