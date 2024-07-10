// ignore_for_file: prefer_typing_uninitialized_variables, file_names, non_constant_identifier_names, avoid_print

import 'dart:convert';

import 'package:get/get.dart';
import 'package:hirexpert/view/utils/API_Key.dart';
import 'package:hirexpert/view/utils/appUrl.dart';
import 'package:http/http.dart' as http;

class JobinterviweApiController extends GetxController {
  var isloding = false.obs;
  var JobInterviwe_data;

  Future JobinterviweApiController_Fuction({
    required String page,
    required String Timezone,
    required String CandidateID,
    required String Tokan,
  }) async {
    try {
      isloding.value = true;

      final Response = await http.get(
        Uri.parse(
          '${AppUrl.JobInterviewList}?Page=$page&Timezone=$Timezone&CandidateId=$CandidateID',
        ),
        headers: {
          API_KEY.api_key: API_KEY.key,
          Clientip.clientip: Clientip.ip,
          Logintoken.logintoken: Tokan,
        },
      );
      if (Response.statusCode == 200 || Response.statusCode == 201) {
        JobInterviwe_data = jsonDecode(Response.body);
        print("JobInterviwe_data $JobInterviwe_data");
      } else {
        throw {
          "this is JobInterviwe Error this ${Response.statusCode} , ${Response.body}"
        };
      }
    } catch (e) {
      print("this Job Error :- $e");
    } finally {
      isloding.value = false;
    }
  }
}
