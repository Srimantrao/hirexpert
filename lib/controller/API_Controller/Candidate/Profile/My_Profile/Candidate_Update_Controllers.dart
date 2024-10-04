// ignore_for_file: avoid_print, non_constant_identifier_names, prefer_typing_uninitialized_variables

import 'dart:convert';
import 'dart:io';

import 'package:get/get.dart';
import 'package:hirexpert/view/utils/API_Key.dart';
import 'package:hirexpert/view/utils/appUrl.dart';
import 'package:http/http.dart' as http;

class CandidateUpdateControllers extends GetxController{
  var isLoding = true.obs;
  var CandidateUpdate;

  Future<void> CandidateUpdateControllers_Fuction({required String CandidateId, required String FirstName, required String UserId, required String Timezone, File? Profile})async{
    Map<String, dynamic> body = {'Timezone': Timezone, 'CandidateId': CandidateId, 'FirstName' : FirstName, 'UserId' : UserId, 'Profile' : Profile};

    try{
      final responce = await http.post(Uri.parse(AppUrl.CandidateUpdate),
          headers: {API_KEY.api_key : API_KEY.key, Clientip.clientip : Clientip.ip, Logintoken.logintoken : ''},
          body: body,
      );

      if(responce.statusCode == 200 || responce.statusCode == 200){
        CandidateUpdate = jsonDecode("CandidateId :- $CandidateId");
        print(CandidateId);
      }else{
        throw{"CandidateId Data Error :- ${responce.statusCode}, ${responce.body}"};
      }
    }catch(e){"CandidateUpdate Data Error :- $e";}
    finally{isLoding.value = false;}
  }
}