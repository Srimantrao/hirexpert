// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hirexpert/view/utils/app_color.dart';
import '../../../../../controller/SwichController/Swichcon.dart';
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

    SwichController Swich = Get.put(SwichController());

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
        SizedBox(height: Get.height / 50),
        Inputfild(
          labal: EditProfile_text.Marital_Status,
          hint: EditProfile_text.Enter_Email,
          controller: mobile,
        ),
        SizedBox(height: Get.height / 50),
        Inputfild(
          labal: EditProfile_text.Date_Of_Birthday,
          hint: EditProfile_text.Enter_Email,
          controller: mobile,
        ),
        SizedBox(height: Get.height / 50),
        Inputfild(
          labal: EditProfile_text.Gender,
          hint: EditProfile_text.Enter_Email,
          controller: mobile,
        ),
        SizedBox(height: Get.height / 30),
        Text(
          EditProfile_text.Address,
          style: TextStyle(
            fontSize: Get.width / 19,
            fontWeight: FontWeight.w900,
          ),
        ),
        SizedBox(height: Get.height / 30),
        Inputfild(
          labal: EditProfile_text.Street_Address,
          hint: EditProfile_text.Enter_Email,
          controller: mobile,
        ),
        SizedBox(height: Get.height / 50),
        Inputfild(
          labal: EditProfile_text.Post_Code,
          hint: EditProfile_text.Enter_Email,
          controller: mobile,
        ),
        SizedBox(height: Get.height / 50),
        Inputfild(
          labal: EditProfile_text.Select_Country,
          hint: EditProfile_text.Enter_Email,
          controller: mobile,
        ),
        SizedBox(height: Get.height / 50),
        Inputfild(
          labal: EditProfile_text.Select_Country,
          hint: EditProfile_text.Enter_Email,
          controller: mobile,
        ),
        SizedBox(height: Get.height / 50),
        Inputfild(
          labal: EditProfile_text.Select_Province,
          hint: EditProfile_text.Enter_Email,
          controller: mobile,
        ),
        SizedBox(height: Get.height / 50),
        Inputfild(
          labal: EditProfile_text.Select_City,
          hint: EditProfile_text.Enter_Email,
          controller: mobile,
        ),
        SizedBox(height: Get.height / 30),
        Text(
          EditProfile_text.Educational_Details,
          style: TextStyle(
            fontSize: Get.width / 19,
            fontWeight: FontWeight.w900,
          ),
        ),
        SizedBox(height: Get.height / 30),
        Inputfild(
          labal: EditProfile_text.Degree,
          hint: EditProfile_text.Enter_Email,
          controller: mobile,
        ),
        SizedBox(height: Get.height / 50),
        Inputfild(
          labal: EditProfile_text.Specialisation,
          hint: EditProfile_text.Enter_Email,
          controller: mobile,
        ),
        SizedBox(height: Get.height / 50),
        Inputfild(
          labal: EditProfile_text.Institute_Name,
          hint: EditProfile_text.Enter_Email,
          controller: mobile,
        ),
        SizedBox(height: Get.height / 50),
        Inputfild(
          labal: EditProfile_text.Passing_Yea,
          hint: EditProfile_text.Enter_Email,
          controller: mobile,
        ),
        SizedBox(height: Get.height / 50),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              child: Container(
                height: Get.height / 18,
                width: Get.width / 2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    Get.width / 60,
                  ),
                  color: AppColor.Button_color,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.add,
                      size: Get.width / 25,
                      color: AppColor.Full_body_color,
                    ),
                    Text(
                      EditProfile_text.Add_Educational_Details,
                      style: TextStyle(
                        fontSize: Get.width / 30,
                        color: AppColor.Full_body_color,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: Get.height / 30),
        Text(
          EditProfile_text.Work_Experience,
          style: TextStyle(
            fontSize: Get.width / 19,
            fontWeight: FontWeight.w900,
          ),
        ),
        SizedBox(height: Get.height / 50),
        Container(
          height: Get.height / 18,
          width: Get.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              Get.width / 30,
            ),
            border: Border.all(
              color: AppColor.Bottam_color,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: Get.width / 30,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  EditProfile_text.IM,
                  style: TextStyle(
                    fontSize: Get.width / 23,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Obx(
                  () => Switch(
                    trackOutlineColor: MaterialStatePropertyAll(
                      AppColor.Full_body_color,
                    ),
                    thumbColor: MaterialStatePropertyAll(
                      AppColor.Full_body_color,
                    ),
                    value: Swich.value.value,
                    onChanged: (value) {
                      Swich.Value(value);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: Get.height / 50),
        Inputfild(
          labal: EditProfile_text.Total_Experience,
          hint: EditProfile_text.Enter_Email,
          controller: mobile,
        ),
        SizedBox(height: Get.height / 50),
        Inputfild(
          labal: EditProfile_text.Company_Name,
          hint: EditProfile_text.Enter_Email,
          controller: mobile,
        ),
        SizedBox(height: Get.height / 50),
        Inputfild(
          labal: EditProfile_text.Designation,
          hint: EditProfile_text.Enter_Email,
          controller: mobile,
        ),
        SizedBox(height: Get.height / 50),
        Inputfild(
          labal: EditProfile_text.Duration,
          hint: EditProfile_text.Enter_Email,
          controller: mobile,
        ),
        SizedBox(height: Get.height / 50),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              child: Container(
                height: Get.height / 18,
                width: Get.width / 2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    Get.width / 60,
                  ),
                  color: AppColor.Button_color,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.add,
                      size: Get.width / 25,
                      color: AppColor.Full_body_color,
                    ),
                    Text(
                      EditProfile_text.Add_Educational_Details,
                      style: TextStyle(
                        fontSize: Get.width / 30,
                        color: AppColor.Full_body_color,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: Get.height / 50),
        Text(
          EditProfile_text.Salary,
          style: TextStyle(
            fontSize: Get.width / 19,
            fontWeight: FontWeight.w900,
          ),
        ),
        SizedBox(height: Get.height / 50),
        Inputfild(
          labal: EditProfile_text.Current_CTC_per_annum,
          hint: EditProfile_text.Enter_Email,
          controller: mobile,
        ),
        SizedBox(height: Get.height / 50),
        Inputfild(
          labal: EditProfile_text.Expected_Salary,
          hint: EditProfile_text.Enter_Email,
          controller: mobile,
        ),
        SizedBox(height: Get.height / 50),
        Text(
          EditProfile_text.Work_Location,
          style: TextStyle(
            fontSize: Get.width / 19,
            fontWeight: FontWeight.w900,
          ),
        ),
        SizedBox(height: Get.height / 50),
        Inputfild(
          labal: EditProfile_text.Current_Working_Location,
          hint: EditProfile_text.Enter_Email,
          controller: mobile,
        ),
        SizedBox(height: Get.height / 50),
        Inputfild(
          labal: EditProfile_text.Preffered_Working_Location,
          hint: EditProfile_text.Enter_Email,
          controller: mobile,
        ),
        SizedBox(height: Get.height / 50),
        Inputfild(
          labal: EditProfile_text.Preffered_Work_Setup,
          hint: EditProfile_text.Enter_Email,
          controller: mobile,
        ),
        SizedBox(height: Get.height / 50),
        Inputfild(
          labal: EditProfile_text.Notice_Period_days_Optional,
          hint: EditProfile_text.Enter_Email,
          controller: mobile,
        ),
        SizedBox(height: Get.height / 50),
        Inputfild(
          labal: EditProfile_text.Job_Type_Preferrence,
          hint: EditProfile_text.Enter_Email,
          controller: mobile,
        ),
        SizedBox(height: Get.height / 50),
        Text(
          EditProfile_text.About_Me,
          style: TextStyle(
            fontSize: Get.width / 19,
            fontWeight: FontWeight.w900,
          ),
        ),
        SizedBox(height: Get.height / 50),
        Text(
          EditProfile_text.AMe,
          style: TextStyle(
            fontSize: Get.width / 25,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: Get.height / 50),
      ],
    );
  }
}
