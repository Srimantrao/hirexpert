// ignore_for_file: file_names, prefer_typing_uninitialized_variables, non_constant_identifier_names, avoid_print

import 'dart:convert';

import 'package:get/get.dart';
import 'package:hirexpert/view/utils/API_Key.dart';
import 'package:hirexpert/view/utils/appUrl.dart';
import 'package:http/http.dart' as http;

class Candidatetech extends GetxController {
  var isLoding = false.obs;
  var Candidatetech_data= {}.obs;

  Future Candidatetech_fuctions({
    required String CandidateId,
    required String TechId,
    required String Timezone,
  }) async {
    try {
      isLoding.value = true;

      Map<String, dynamic> body = {
        'CandidateId': CandidateId,
        'TechId': TechId,
        'Timezone': Timezone,
      };

      print('CandidateId :- $CandidateId');
      print('Techld :- $TechId');
      print('Timezone :- $Timezone');

      print(body);

      final responce = await http.post(
        Uri.parse(AppUrl.candidateTech),
        headers: {
          API_KEY.api_key: API_KEY.key,
          Clientip.clientip: Clientip.ip,
        },
        body: body,
      );

      if (responce.statusCode == 200 || responce.statusCode == 201) {
        Candidatetech_data.value = jsonDecode(responce.body);
        print('Candidatetech_data :- $Candidatetech_data');
      } else {
        throw {'${responce.statusCode} , ${responce.body}'};
      }
    } catch (e) {
      print("Candidatetech Item Error this : - $e");
    } finally {
      isLoding.value = false;
    }
  }
}
