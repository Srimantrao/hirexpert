// ignore_for_file: file_names, prefer_typing_uninitialized_variables, non_constant_identifier_names, avoid_print

import 'dart:convert';

import 'package:get/get.dart';
import 'package:hirexpert/view/utils/API_Key.dart';
import 'package:hirexpert/view/utils/appUrl.dart';
import 'package:http/http.dart' as http;

class ApplyNowController extends GetxController {
  var isLoding = false.obs;
  var Applynowcontroller_var= {}.obs;

  Future ApplynowController_fuction({
    required String Candidate,
    required String JobId,
    required String Company,
    required String Tokan,
  }) async {
    try {
      isLoding.value = true;

      final responce = await http.get(
        Uri.parse('${AppUrl.Applyed}?CandidateId=$Candidate&JobId=$JobId&CompanyId=$Company'),
        headers: {
          API_KEY.api_key: API_KEY.key,
          Clientip.clientip: Clientip.ip,
          Logintoken.logintoken: Tokan ?? ''
        },
      );

      print("CandidateID :- $Candidate");
      print("JobID :- $JobId");
      print("Company :- $Company");

      if (responce.statusCode == 200 || responce.statusCode == 201) {
        Applynowcontroller_var.value = jsonDecode(responce.body);
        print("ApplyController Data :- $Applynowcontroller_var");
      } else {
        throw {
          'ApplyController Error this Data :- '
              '${responce.statusCode} ,'
              ' ${responce.body}',
        };
      }
    } catch (e) {
      'Error this Applynowcontroller :- $e';
    } finally {
      isLoding.value = false;
    }
  }
}
