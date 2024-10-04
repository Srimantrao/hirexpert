// ignore_for_file: non_constant_identifier_names, camel_case_types, prefer_typing_uninitialized_variables, avoid_print

import 'dart:convert';

import 'package:get/get.dart';
import 'package:hirexpert/view/utils/API_Key.dart';
import 'package:hirexpert/view/utils/appUrl.dart';
import 'package:http/http.dart' as http;

class CandidatedetailsControllers_Controllrs extends GetxController {
  var isLoding = false.obs;
  var Candidatedetails_data;

  // ignore: non_constant_identifier_names
  Future CandidatedetailsControllers_Fuction({required String CandidateId, required String Timezone, required String IsLabel, required String CompanyId, required String Tokan}) async {
    try{
      isLoding.value = true;
      final responce = await http.get(
          Uri.parse('${AppUrl.CandidateDetails}?CandidateId=6&Timezone=asia/kolkata&IsLabel=1&CompanyId=1'),
          headers: {API_KEY.api_key: API_KEY.key, Clientip.clientip: Clientip.ip, Logintoken.logintoken: Tokan ?? ''});
      if(responce.statusCode == 200 || responce.statusCode == 201){
        Candidatedetails_data = jsonDecode(responce.body);
        print(Candidatedetails_data);
      }else{
        throw{'Candidatedetails_data Error :- ${responce.statusCode}, ${responce.body}'};
      }
    }catch(e){'Candidatedetails Data Error :- $Candidatedetails_data';}
    finally{
      isLoding.value = false;
    }
  }
}