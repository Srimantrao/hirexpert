// ignore_for_file: avoid_print, camel_case_types, prefer_typing_uninitialized_variables, non_constant_identifier_names

import 'dart:convert';

import 'package:get/get.dart';
import 'package:hirexpert/view/utils/API_Key.dart';
import 'package:hirexpert/view/utils/appUrl.dart';
import 'package:http/http.dart' as http;

class Candidate_update_controller extends GetxController {
  var isLoding = false.obs;
  var candidateupdate_data;

  Future Candidate_update_fuction({
    required String CandidateId,
    required String FirstName,
    required String UserId,
    required String Timezone,
    String? Tokan
  }) async {
    isLoding.value = true;
    update();

    try {
      final body = {
        'CandidateId': CandidateId,
        'FirstName' : FirstName,
        'UserId' : UserId,
        'Timezone': Timezone,
      };

      final responce = await http.post(
        Uri.parse(AppUrl.CandidateUpdate),
        headers: {API_KEY.api_key: API_KEY.key, Clientip.clientip: Clientip.ip, Logintoken.logintoken: 'Tkon'},
        body: body,
      );

      if (responce.statusCode == 200 || responce.statusCode == 201) {
        candidateupdate_data = jsonDecode(responce.body);
        print("Your candidateupdatedata $candidateupdate_data");
      } else {
        throw{
          'This is Error candidateupdatedata ${responce.statusCode}, ${responce.body}',
        };
      }
    } catch (e) {
      'this Error candidate Error $e';
    } finally {
      isLoding.value = false;
      update();
    }
  }
}
