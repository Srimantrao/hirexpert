// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../app_String.dart';
import '../../../common/Textfild/Inputfild.dart';

class Inputing extends StatelessWidget {
  const Inputing({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController jobtital = TextEditingController();
    TextEditingController fristName = TextEditingController();
    TextEditingController lastName = TextEditingController();
    TextEditingController email = TextEditingController();
    TextEditingController mobile = TextEditingController();

    return Column(
      children: [
        Inputfild(
          labal: EditProfile_text.Job_Title,
          hint: EditProfile_text.Enter_Job_Title,
          controller: jobtital,
        ),
        SizedBox(height: Get.height / 50),
        Inputfild(
          labal: EditProfile_text.First_Name,
          hint: EditProfile_text.Enter_Frist,
          controller: fristName,
        ),
        SizedBox(height: Get.height / 50),
        Inputfild(
          labal: EditProfile_text.Last_Name,
          hint: EditProfile_text.Enter_Last,
          controller: lastName,
        ),
        SizedBox(height: Get.height / 50),
        Inputfild(
          labal: EditProfile_text.Email_Id,
          hint: EditProfile_text.Enter_Email,
          controller: email,
        ),
        SizedBox(height: Get.height / 50),
        Inputfild(
          keyboardType: TextInputType.number,
          labal: EditProfile_text.Mobile_Number,
          hint: EditProfile_text.Enter_Email,
          controller: mobile,
        ),
      ],
    );
  }
}
