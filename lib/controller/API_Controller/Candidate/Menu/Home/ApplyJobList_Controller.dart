// ignore_for_file: avoid_print, prefer_typing_uninitialized_variables, non_constant_identifier_names

import 'dart:convert';

import 'package:get/get.dart';
import 'package:hirexpert/view/utils/API_Key.dart';
import 'package:hirexpert/view/utils/appUrl.dart';
import 'package:hirexpert/view/utils/common/Tostification/Toastification_error.dart';
import 'package:http/http.dart' as http;

import '../../../../../view/utils/common/Tostification/Toastification_success.dart';

class ApplyjoblistController extends GetxController {
  var isLoding = false.obs;
  var ApplyJobList_data={}.obs;

  Future<void> ApplyjoblistController_Fuction(
      {required String CandidateId, required String Timezone, required String Tokan}) async {
    try {
      isLoding.value = true;

      final responce = await http.get(
          Uri.parse('${AppUrl.ApplyJobList}?CandidateId=$CandidateId&Timezone=$Timezone'),
          headers: {
            API_KEY.api_key: API_KEY.key,
            Clientip.clientip: Clientip.ip,
            Logintoken.logintoken: Tokan ?? '',
          });
      if (responce.statusCode == 200 || responce.statusCode == 201) {
        ApplyJobList_data.value = jsonDecode(responce.body);
        ToastificationSuccess.Success('Saved data Successfully');
        print('ApplyJobList_data : - $ApplyJobList_data');
      } else {
        throw {
          ToastificationError.Error('${responce.statusCode}, ${responce.body}'),
          'ApplyJobList_data Error : - ${responce.statusCode}, ${responce.body}'
        };
      }
    } catch (e) {
      print('ApplyJobList_data Error: - $e');
      ToastificationError.Error('$e');
    } finally {
      isLoding.value = false;
    }
  }
}