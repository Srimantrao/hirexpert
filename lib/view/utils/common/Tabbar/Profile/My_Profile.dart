// ignore_for_file: camel_case_types, file_names, non_constant_identifier_names

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hirexpert/view/utils/app_String.dart';
import 'package:hirexpert/view/utils/app_color.dart';
import 'package:hirexpert/view/utils/app_icon.dart';
import 'package:hirexpert/view/utils/common/Buttons/wideButtons.dart';

import '../../Container/profile_Info.dart';

class MY_Profile extends StatefulWidget {
  const MY_Profile({super.key});

  @override
  State<MY_Profile> createState() => _MY_ProfileState();
}

class _MY_ProfileState extends State<MY_Profile> {
  //Visibility
  bool Upload_lock = false;
  bool Personal_Information = false;
  bool Address = false;
  bool Education_Details = false;
  bool Work_Experience = false;
  bool Salary = false;
  bool Work_Location = false;

  //Switch
  bool fresher = true;

  //Check Box
  bool male = false;
  bool Fe_male = false;
  bool Othrs = false;
  bool I_currently_workhere = false;

  //TextEding Controller
  TextEditingController Job_Titales = TextEditingController();
  TextEditingController Frist_Name_Profile = TextEditingController();
  TextEditingController Last_Name_Profile = TextEditingController();
  TextEditingController Email_id_Profile = TextEditingController();
  TextEditingController BirthDay = TextEditingController();
  TextEditingController Street_Address = TextEditingController();
  TextEditingController Post_Code = TextEditingController();
  TextEditingController Select_Province = TextEditingController();
  TextEditingController Select_City = TextEditingController();
  TextEditingController Degree = TextEditingController();
  TextEditingController Specialisation = TextEditingController();
  TextEditingController Institute_Name = TextEditingController();
  TextEditingController Passing_Year = TextEditingController();
  TextEditingController Enter_The_Comppany_name = TextEditingController();
  TextEditingController Designation = TextEditingController();
  TextEditingController Year = TextEditingController();
  TextEditingController CTC = TextEditingController();
  TextEditingController CTC2 = TextEditingController();
  TextEditingController Expanded = TextEditingController();
  TextEditingController Preffered_Working_Location = TextEditingController();
  TextEditingController Preffered_Work_Setup = TextEditingController();
  TextEditingController Job_Type_Preferrence = TextEditingController();
  TextEditingController Enter_Notice_Period = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: Get.width / 70,
      ),
      child: Container(
        height: Get.height / 1.52,
        width: Get.width,
        decoration: BoxDecoration(
          color: AppColor.Full_body_color,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(height: Get.height / 60),

              //Upload Your CV
              InkWell(
                onTap: () {
                  Upload_lock = !Upload_lock;
                  setState(() {});
                },
                child: Info(
                  info: Profile_Text.Upload_Your_CV,
                  CircleAvatar_color: AppColor.select_check_color,
                  dropicons: (Upload_lock)
                      ? Icon(
                          Icons.navigate_next,
                          color: AppColor.select_check_color,
                          size: 31,
                        )
                      : Icon(
                          Icons.arrow_downward,
                          color: AppColor.select_check_color,
                          size: 31,
                        ),
                ),
              ),
              Visibility(
                visible: Upload_lock,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: Get.height / 60),
                    Text(
                      Profile_Text.Upload,
                      style: TextStyle(
                        color: AppColor.subcolor,
                        fontSize: Get.width / 23,
                      ),
                    ),
                    SizedBox(height: Get.height / 60),
                    DottedBorder(
                      color: AppColor.Bottam_color,
                      dashPattern: const [15, 12],
                      child: SizedBox(
                        height: Get.height / 6,
                        width: Get.width,
                        child: Center(
                          child: Text(
                            textAlign: TextAlign.center,
                            Profile_Text.resume,
                            style: TextStyle(
                              fontSize: Get.width / 27,
                              color: AppColor.subcolor,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: Get.height / 60),
                    Text(
                      Profile_Text.Resume_Link,
                      style: TextStyle(
                        fontSize: Get.width / 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),

              //Personal Information
              InkWell(
                onTap: () {
                  Personal_Information = !Personal_Information;
                  setState(() {});
                },
                child: Info(
                  info: Profile_Text.Personal_Information,
                  CircleAvatar_color: AppColor.select_check_color,
                  dropicons: (Personal_Information)
                      ? Icon(
                          Icons.navigate_next,
                          color: AppColor.select_check_color,
                          size: 31,
                        )
                      : Icon(
                          Icons.arrow_downward,
                          color: AppColor.select_check_color,
                          size: 31,
                        ),
                ),
              ),
              Visibility(
                visible: Personal_Information,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: Get.height / 60),
                    Text(
                      Profile_Text.Job_Title,
                      style: TextStyle(
                        fontSize: Get.width / 24,
                        color: AppColor.select_check_color,
                      ),
                    ),
                    TextField(
                      controller: Job_Titales,
                      decoration: InputDecoration(
                          hintText: Profile_Text.Enter_Tital_job,
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: AppColor.select_check_color,
                            ),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: AppColor.select_check_color,
                            ),
                          )),
                    ),
                    SizedBox(height: Get.height / 60),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              Profile_Text.First_Name,
                              style: TextStyle(
                                fontSize: Get.width / 24,
                                color: AppColor.select_check_color,
                              ),
                            ),
                            SizedBox(
                              width: Get.width / 2.5,
                              child: TextField(
                                controller: Frist_Name_Profile,
                                decoration: InputDecoration(
                                    hintText:
                                        Profile_Text.Enter_The_Frist_Name,
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: AppColor.select_check_color,
                                      ),
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: AppColor.select_check_color,
                                      ),
                                    )),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              Profile_Text.Last_Name,
                              style: TextStyle(
                                fontSize: Get.width / 24,
                                color: AppColor.select_check_color,
                              ),
                            ),
                            SizedBox(
                              width: Get.width / 2.5,
                              child: TextField(
                                controller: Last_Name_Profile,
                                decoration: InputDecoration(
                                    hintText:
                                        Profile_Text.Enter_The_Last_Name,
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: AppColor.select_check_color,
                                      ),
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: AppColor.select_check_color,
                                      ),
                                    )),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: Get.height / 60),
                    Text(
                      Profile_Text.Email_Id,
                      style: TextStyle(
                        fontSize: Get.width / 24,
                        color: AppColor.select_check_color,
                      ),
                    ),
                    TextField(
                      controller: Email_id_Profile,
                      decoration: InputDecoration(
                        hintText: Profile_Text.Enter_Email_Id,
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColor.select_check_color,
                          ),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColor.select_check_color,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: Get.height / 60),
                    Text(
                      Profile_Text.Mobile_Number,
                      style: TextStyle(
                        fontSize: Get.width / 24,
                        color: AppColor.select_check_color,
                      ),
                    ),
                    TextField(
                      keyboardType: TextInputType.number,
                      controller: Email_id_Profile,
                      decoration: InputDecoration(
                        hintText: Profile_Text.Enter_Mobile_Number,
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColor.select_check_color,
                          ),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColor.select_check_color,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: Get.height / 60),
                    Text(
                      Profile_Text.Gender,
                      style: TextStyle(
                        fontSize: Get.width / 24,
                        color: AppColor.select_check_color,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                                side: BorderSide(
                                  color: AppColor.Buttom_color,
                                ),
                                value: male,
                                onChanged: (val) {
                                  male = val!;
                                  setState(() {});
                                }),
                            Text(
                              Profile_Text.Male,
                              style: TextStyle(
                                fontSize: Get.width / 25,
                                color: AppColor.subcolor,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                                side: BorderSide(
                                  color: AppColor.Buttom_color,
                                ),
                                value: Fe_male,
                                onChanged: (val) {
                                  Fe_male = val!;
                                  setState(() {});
                                }),
                            Text(
                              Profile_Text.Female,
                              style: TextStyle(
                                fontSize: Get.width / 25,
                                color: AppColor.subcolor,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                                side: BorderSide(
                                  color: AppColor.Buttom_color,
                                ),
                                value: Othrs,
                                onChanged: (val) {
                                  Othrs = val!;
                                  setState(() {});
                                }),
                            Text(
                              Profile_Text.PreferNot_tosay,
                              style: TextStyle(
                                fontSize: Get.width / 25,
                                color: AppColor.subcolor,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          Profile_Text.Date_Of_Birthday,
                          style: TextStyle(
                            fontSize: Get.width / 24,
                            color: AppColor.select_check_color,
                          ),
                        )
                      ],
                    ),
                    TextField(
                      keyboardType: TextInputType.number,
                      controller: BirthDay,
                      decoration: InputDecoration(
                        hintText: Profile_Text.Date_OF_Bithday,
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColor.select_check_color,
                          ),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColor.select_check_color,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //Adress
              InkWell(
                onTap: () {
                  Address = !Address;
                  setState(() {});
                },
                child: Info(
                  info: Profile_Text.Address,
                  CircleAvatar_color: AppColor.select_check_color,
                  dropicons: (Address)
                      ? Icon(
                          Icons.navigate_next,
                          color: AppColor.select_check_color,
                          size: 31,
                        )
                      : Icon(
                          Icons.arrow_downward,
                          color: AppColor.select_check_color,
                          size: 31,
                        ),
                ),
              ),
              Visibility(
                visible: Address,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: Get.height / 50),

                    //Street Address
                    Text(
                      Profile_Text.Street_Address,
                      style: TextStyle(
                        fontSize: Get.width / 24,
                        color: AppColor.select_check_color,
                      ),
                    ),
                    TextField(
                      controller: Street_Address,
                      decoration: InputDecoration(
                        hintText: Profile_Text.Street_Address,
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColor.select_check_color,
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColor.select_check_color,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: Get.height / 50),

                    //Post Code
                    Text(
                      Profile_Text.Post_Code,
                      style: TextStyle(
                        fontSize: Get.width / 24,
                        color: AppColor.select_check_color,
                      ),
                    ),
                    TextField(
                      keyboardType: TextInputType.number,
                      controller: Post_Code,
                      decoration: InputDecoration(
                        hintText: Profile_Text.Post_Code,
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColor.select_check_color,
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColor.select_check_color,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: Get.height / 50),

                    //Select Province
                    Text(
                      Profile_Text.Select_Province,
                      style: TextStyle(
                        fontSize: Get.width / 24,
                        color: AppColor.select_check_color,
                      ),
                    ),
                    TextField(
                      keyboardType: TextInputType.number,
                      controller: Select_Province,
                      decoration: InputDecoration(
                        hintText: Profile_Text.Select_Province,
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColor.select_check_color,
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColor.select_check_color,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: Get.height / 50),

                    //Select city
                    Text(
                      Profile_Text.Select_City,
                      style: TextStyle(
                        fontSize: Get.width / 24,
                        color: AppColor.select_check_color,
                      ),
                    ),
                    TextField(
                      keyboardType: TextInputType.number,
                      controller: Select_City,
                      decoration: InputDecoration(
                        hintText: Profile_Text.Select_City,
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColor.select_check_color,
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColor.select_check_color,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: Get.height / 50),
                  ],
                ),
              ),

              //Educational Details
              InkWell(
                onTap: () {
                  Education_Details = !Education_Details;
                  setState(() {});
                },
                child: Info(
                  info: Profile_Text.Educational_Detailss,
                  CircleAvatar_color: AppColor.select_check_color,
                  dropicons: (Education_Details)
                      ? Icon(
                          Icons.navigate_next,
                          color: AppColor.select_check_color,
                          size: 31,
                        )
                      : Icon(
                          Icons.arrow_downward,
                          color: AppColor.select_check_color,
                          size: 31,
                        ),
                ),
              ),
              Visibility(
                visible: Education_Details,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: Get.height / 50),

                    //Degree
                    Text(
                      EditProfile_text.Degree,
                      style: TextStyle(
                        fontSize: Get.width / 24,
                        color: AppColor.select_check_color,
                      ),
                    ),
                    TextField(
                      controller: Degree,
                      decoration: InputDecoration(
                        hintText: Profile_Text.Degree,
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColor.select_check_color,
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColor.select_check_color,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: Get.height / 50),

                    //Specialisation
                    Text(
                      EditProfile_text.Specialisation,
                      style: TextStyle(
                        fontSize: Get.width / 24,
                        color: AppColor.select_check_color,
                      ),
                    ),
                    TextField(
                      controller: Specialisation,
                      decoration: InputDecoration(
                        hintText: Profile_Text.Specialisation,
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColor.select_check_color,
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColor.select_check_color,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: Get.height / 50),

                    //Institute Name
                    Text(
                      EditProfile_text.Institute_Name,
                      style: TextStyle(
                        fontSize: Get.width / 24,
                        color: AppColor.select_check_color,
                      ),
                    ),
                    TextField(
                      controller: Institute_Name,
                      decoration: InputDecoration(
                        hintText: Profile_Text.Institute_Name,
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColor.select_check_color,
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColor.select_check_color,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: Get.height / 50),

                    //Passing Year
                    Text(
                      EditProfile_text.Passing_Yea,
                      style: TextStyle(
                        fontSize: Get.width / 24,
                        color: AppColor.select_check_color,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                backgroundColor: AppColor.Full_body_color,
                                elevation: 0,
                                title: Container(
                                  height: Get.height / 20,
                                  width: Get.width,
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        color: AppColor.Bottam_color,
                                      ),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const SizedBox(),
                                      Text(
                                        Profile_Text.Select_City,
                                        style: TextStyle(
                                          fontSize: Get.width / 23,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      InkWell(
                                          onTap: () {
                                            Get.back();
                                          },
                                          child: SvgPicture.asset(
                                              AppIcons.cancel)),
                                    ],
                                  ),
                                ),
                                content: Container(
                                  height: Get.height / 5,
                                  width: Get.width,
                                  decoration: BoxDecoration(
                                    color: AppColor.Full_body_color,
                                  ),
                                  child: CupertinoPicker(
                                    selectionOverlay: Container(
                                      height: Get.height / 15,
                                      width: Get.width,
                                      decoration: BoxDecoration(
                                        border: Border(
                                          bottom: BorderSide(
                                            color:
                                                AppColor.select_check_color,
                                          ),
                                          top: BorderSide(
                                            color:
                                                AppColor.select_check_color,
                                          ),
                                        ),
                                      ),
                                    ),
                                    itemExtent: 30,
                                    onSelectedItemChanged: (int value) {},
                                    children: [
                                      const Text("2021"),
                                      SizedBox(height: Get.height / 50),
                                      const Text("2022"),
                                      SizedBox(height: Get.height / 50),
                                      const Text("2023"),
                                      SizedBox(height: Get.height / 50),
                                      const Text("2024"),
                                    ],
                                  ),
                                ),
                              );
                            });
                      },
                      child: Container(
                        height: Get.height / 20,
                        width: Get.width,
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                          color: AppColor.select_check_color,
                        ))),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(Profile_Text.Select_City),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: Get.height / 50),

                    //Passing Year
                    Text(
                      Profile_Text.Add_Educational_Details,
                      style: TextStyle(
                        fontSize: Get.width / 24,
                        fontWeight: FontWeight.w600,
                        color: AppColor.Button_color,
                      ),
                    ),
                  ],
                ),
              ),

              //Work Experience
              InkWell(
                onTap: () {
                  Work_Experience = !Work_Experience;
                  setState(() {});
                },
                child: Info(
                  info: Profile_Text.Work_Experience,
                  CircleAvatar_color: AppColor.select_check_color,
                  dropicons: (Work_Location)
                      ? Icon(
                          Icons.navigate_next,
                          color: AppColor.select_check_color,
                          size: 31,
                        )
                      : Icon(
                          Icons.arrow_downward,
                          color: AppColor.select_check_color,
                          size: 31,
                        ),
                ),
              ),
              Visibility(
                  visible: Work_Experience,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: Get.height / 50),
                      Container(
                        height: Get.height / 20,
                        width: Get.width,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: AppColor.select_check_color,
                            ),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              Profile_Text.fresher,
                              style: TextStyle(
                                fontSize: Get.width / 24,
                              ),
                            ),
                            Switch(
                                materialTapTargetSize:
                                    MaterialTapTargetSize.padded,
                                thumbColor: MaterialStatePropertyAll(
                                    AppColor.Full_body_color),
                                activeColor: AppColor.Button_color,
                                value: fresher,
                                onChanged: (val) {
                                  fresher = val;
                                  setState(() {});
                                })
                          ],
                        ),
                      ),
                      SizedBox(height: Get.height / 50),
                      Visibility(
                        visible: fresher,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              Profile_Text.Total_Experience,
                              style: TextStyle(
                                fontSize: Get.width / 24,
                                color: AppColor.select_check_color,
                              ),
                            ),

                            //Total Experience
                            Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: Get.width / 2.5,
                                  child: InkWell(
                                    onTap: () {
                                      showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return AlertDialog(
                                              backgroundColor:
                                                  AppColor.Full_body_color,
                                              elevation: 0,
                                              title: Container(
                                                height: Get.height / 20,
                                                width: Get.width,
                                                decoration: BoxDecoration(
                                                    border: Border(
                                                  bottom: BorderSide(
                                                    color: AppColor
                                                        .Bottam_color,
                                                  ),
                                                )),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    const SizedBox(),
                                                    Text(
                                                      Profile_Text.E_Year,
                                                      style: TextStyle(
                                                        fontSize:
                                                            Get.width / 23,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                    ),
                                                    InkWell(
                                                        onTap: () {
                                                          Get.back();
                                                        },
                                                        child: SvgPicture
                                                            .asset(AppIcons
                                                                .cancel))
                                                  ],
                                                ),
                                              ),
                                              content: Container(
                                                height: Get.height / 5,
                                                width: Get.width,
                                                decoration: BoxDecoration(
                                                  color: AppColor
                                                      .Full_body_color,
                                                ),
                                                child: CupertinoPicker(
                                                  selectionOverlay:
                                                      Container(
                                                    height: Get.height / 15,
                                                    width: Get.width,
                                                    decoration: BoxDecoration(
                                                        border: Border(
                                                            bottom: BorderSide(
                                                              color: AppColor
                                                                  .select_check_color,
                                                            ),
                                                            top: BorderSide(
                                                              color: AppColor
                                                                  .select_check_color,
                                                            ))),
                                                  ),
                                                  itemExtent: 30,
                                                  onSelectedItemChanged:
                                                      (int index) {},
                                                  children: [
                                                    const Text("1 Year"),
                                                    SizedBox(
                                                        height: Get.height /
                                                            50),
                                                    const Text("2 Year"),
                                                    SizedBox(
                                                        height: Get.height /
                                                            50),
                                                    const Text("3 Year"),
                                                    SizedBox(
                                                        height: Get.height /
                                                            50),
                                                    const Text("4 Year"),
                                                    SizedBox(
                                                        height: Get.height /
                                                            50),
                                                    const Text("5 Year"),
                                                    SizedBox(
                                                        height: Get.height /
                                                            50),
                                                    const Text("6 Year"),
                                                    SizedBox(
                                                        height: Get.height /
                                                            50),
                                                    const Text("7 Year"),
                                                    SizedBox(
                                                        height: Get.height /
                                                            50),
                                                    const Text("10 Year"),
                                                    SizedBox(
                                                        height: Get.height /
                                                            50),
                                                    const Text("11 Year"),
                                                    SizedBox(
                                                        height: Get.height /
                                                            50),
                                                    const Text("12 Year"),
                                                    SizedBox(
                                                        height: Get.height /
                                                            50),
                                                    const Text("13 Year"),
                                                  ],
                                                ),
                                              ),
                                            );
                                          });
                                    },
                                    child: Container(
                                      height: Get.height / 20,
                                      width: Get.width,
                                      decoration: BoxDecoration(
                                        border: Border(
                                          bottom: BorderSide(
                                            color:
                                                AppColor.select_check_color,
                                          ),
                                        ),
                                      ),
                                      child: const Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(Profile_Text.Enter_Year),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: Get.width / 2.5,
                                  child: InkWell(
                                    onTap: () {
                                      showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return AlertDialog(
                                              backgroundColor:
                                                  AppColor.Full_body_color,
                                              elevation: 0,
                                              title: Container(
                                                height: Get.height / 20,
                                                width: Get.width,
                                                decoration: BoxDecoration(
                                                    border: Border(
                                                  bottom: BorderSide(
                                                    color: AppColor
                                                        .Bottam_color,
                                                  ),
                                                )),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    const SizedBox(),
                                                    Text(
                                                      Profile_Text.E_Year,
                                                      style: TextStyle(
                                                        fontSize:
                                                            Get.width / 23,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                    ),
                                                    InkWell(
                                                        onTap: () {
                                                          Get.back();
                                                        },
                                                        child: SvgPicture
                                                            .asset(AppIcons
                                                                .cancel))
                                                  ],
                                                ),
                                              ),
                                              content: Container(
                                                height: Get.height / 5,
                                                width: Get.width,
                                                decoration: BoxDecoration(
                                                  color: AppColor
                                                      .Full_body_color,
                                                ),
                                                child: CupertinoPicker(
                                                  selectionOverlay:
                                                      Container(
                                                    height: Get.height / 15,
                                                    width: Get.width,
                                                    decoration: BoxDecoration(
                                                        border: Border(
                                                            bottom: BorderSide(
                                                              color: AppColor
                                                                  .select_check_color,
                                                            ),
                                                            top: BorderSide(
                                                              color: AppColor
                                                                  .select_check_color,
                                                            ))),
                                                  ),
                                                  itemExtent: 30,
                                                  onSelectedItemChanged:
                                                      (int index) {},
                                                  children: [
                                                    const Text("1 Month"),
                                                    SizedBox(
                                                        height: Get.height /
                                                            50),
                                                    const Text("2 Month"),
                                                    SizedBox(
                                                        height: Get.height /
                                                            50),
                                                    const Text("3 Month"),
                                                    SizedBox(
                                                        height: Get.height /
                                                            50),
                                                    const Text("4 Month"),
                                                    SizedBox(
                                                        height: Get.height /
                                                            50),
                                                    const Text("5 Month"),
                                                    SizedBox(
                                                        height: Get.height /
                                                            50),
                                                    const Text("6 Month"),
                                                    SizedBox(
                                                        height: Get.height /
                                                            50),
                                                    const Text("7 Month"),
                                                    SizedBox(
                                                        height: Get.height /
                                                            50),
                                                    const Text("10 Month"),
                                                    SizedBox(
                                                        height: Get.height /
                                                            50),
                                                    const Text("11 Month"),
                                                  ],
                                                ),
                                              ),
                                            );
                                          });
                                    },
                                    child: Container(
                                      height: Get.height / 20,
                                      width: Get.width,
                                      decoration: BoxDecoration(
                                        border: Border(
                                          bottom: BorderSide(
                                            color:
                                                AppColor.select_check_color,
                                          ),
                                        ),
                                      ),
                                      child: const Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(Profile_Text.Enter_Month),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: Get.height / 50),

                            //Company Name
                            Text(
                              Profile_Text.Company_Name,
                              style: TextStyle(
                                  fontSize: Get.width / 24,
                                  color: AppColor.select_check_color),
                            ),
                            TextField(
                              controller: Enter_The_Comppany_name,
                              decoration: InputDecoration(
                                hintText:
                                    Profile_Text.Enter_The_Comppany_name,
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: AppColor.select_check_color,
                                  ),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: AppColor.select_check_color,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: Get.height / 50),

                            //Designation
                            Text(
                              Profile_Text.Designation,
                              style: TextStyle(
                                  fontSize: Get.width / 24,
                                  color: AppColor.select_check_color),
                            ),
                            TextField(
                              controller: Designation,
                              decoration: InputDecoration(
                                hintText:
                                    Profile_Text.Enter_The_Designation,
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: AppColor.select_check_color,
                                  ),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: AppColor.select_check_color,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: Get.height / 50),

                            //Duration
                            Text(
                              Profile_Text.Designation,
                              style: TextStyle(
                                  fontSize: Get.width / 24,
                                  color: AppColor.select_check_color),
                            ),
                            Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: Get.width / 2.5,
                                  child: TextField(
                                    onTap: () {
                                      showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return AlertDialog(
                                              backgroundColor:
                                                  AppColor.Full_body_color,
                                              elevation: 0,
                                              title: Container(
                                                height: Get.height / 20,
                                                width: Get.width,
                                                decoration: BoxDecoration(
                                                  border: Border(
                                                    bottom: BorderSide(
                                                        color: AppColor
                                                            .Bottam_color),
                                                  ),
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    const SizedBox(),
                                                    Text(
                                                      Profile_Text
                                                          .Starting_date,
                                                      style: TextStyle(
                                                        fontSize:
                                                            Get.width / 23,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                    ),
                                                    InkWell(
                                                        onTap: () {
                                                          Get.back();
                                                        },
                                                        child: SvgPicture
                                                            .asset(AppIcons
                                                                .cancel))
                                                  ],
                                                ),
                                              ),
                                              content: Container(
                                                height: Get.height / 2,
                                                width: Get.width,
                                                decoration: BoxDecoration(
                                                  color: AppColor
                                                      .Full_body_color,
                                                ),
                                                child:
                                                    DateRangePickerDialog(
                                                  firstDate: DateTime(1990),
                                                  lastDate: DateTime(2030),
                                                ),
                                              ),
                                            );
                                          });
                                    },
                                    controller: Year,
                                    readOnly: true,
                                    decoration: InputDecoration(
                                      suffixIcon: Icon(
                                        Icons.calendar_month_sharp,
                                        color: AppColor.select_check_color,
                                      ),
                                      hintText: Profile_Text.Enter_Year,
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color:
                                              AppColor.select_check_color,
                                        ),
                                      ),
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color:
                                              AppColor.select_check_color,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: Get.width / 2.5,
                                  child: TextField(
                                    onTap: () {
                                      showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return AlertDialog(
                                            backgroundColor:
                                                AppColor.Full_body_color,
                                            elevation: 0,
                                            title: Container(
                                              height: Get.height / 20,
                                              width: Get.width,
                                              decoration: BoxDecoration(
                                                border: Border(
                                                  bottom: BorderSide(
                                                      color: AppColor
                                                          .Bottam_color),
                                                ),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  const SizedBox(),
                                                  Text(
                                                    Profile_Text
                                                        .Starting_date,
                                                    style: TextStyle(
                                                      fontSize:
                                                          Get.width / 23,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                  ),
                                                  InkWell(
                                                      onTap: () {
                                                        Get.back();
                                                      },
                                                      child:
                                                          SvgPicture.asset(
                                                              AppIcons
                                                                  .cancel))
                                                ],
                                              ),
                                            ),
                                            content: Container(
                                              height: Get.height / 2,
                                              width: Get.width,
                                              decoration: BoxDecoration(
                                                color: AppColor
                                                    .Full_body_color,
                                              ),
                                              child: DateRangePickerDialog(
                                                firstDate: DateTime(1990),
                                                lastDate: DateTime(2030),
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                    },
                                    controller: Designation,
                                    readOnly: true,
                                    decoration: InputDecoration(
                                      hintText: Profile_Text
                                          .Enter_The_Designation,
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color:
                                              AppColor.select_check_color,
                                        ),
                                      ),
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color:
                                              AppColor.select_check_color,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: Get.height / 50),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Checkbox(
                                        value: I_currently_workhere,
                                        onChanged: (val) {
                                          I_currently_workhere = val!;
                                          setState(() {});
                                        }),
                                    Text(
                                      Profile_Text.I_currently_work_here,
                                      style: TextStyle(
                                        fontSize: Get.width / 24,
                                        color: AppColor.subcolor,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(height: Get.height / 50),
                            Text(
                              Profile_Text.Add_Work_Experience,
                              style: TextStyle(
                                fontSize: Get.width / 24,
                                fontWeight: FontWeight.w600,
                                color: AppColor.Button_color,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  )),

              //Salary
              InkWell(
                onTap: () {
                  Salary = !Salary;
                  setState(() {});
                },
                child: Info(
                  info: Profile_Text.Salarys,
                  CircleAvatar_color: AppColor.select_check_color,
                  dropicons: (Salary)
                      ? Icon(
                          Icons.navigate_next,
                          color: AppColor.select_check_color,
                          size: 31,
                        )
                      : Icon(
                          Icons.arrow_downward,
                          color: AppColor.select_check_color,
                          size: 31,
                        ),
                ),
              ),
              Visibility(
                visible: Salary,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: Get.height / 50),

                    //CTC
                    Text(
                      Profile_Text.CTC,
                      style: TextStyle(
                        fontSize: Get.width / 24,
                        color: AppColor.select_check_color,
                      ),
                    ),
                    TextField(
                      controller: CTC,
                      decoration: InputDecoration(
                        hintText: Profile_Text.Enter_CTC,
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColor.Bottam_color,
                          ),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColor.Bottam_color,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: Get.height / 50),

                    //Expected
                    Text(
                      Profile_Text.CTC,
                      style: TextStyle(
                        fontSize: Get.width / 24,
                        color: AppColor.select_check_color,
                      ),
                    ),
                    TextField(
                      controller: Expanded,
                      decoration: InputDecoration(
                        hintText: Profile_Text.Enter_Expected,
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColor.Bottam_color,
                          ),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColor.Bottam_color,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: Get.height / 50),
                  ],
                ),
              ),

              //Work Location
              InkWell(
                onTap: () {
                  Work_Location = !Work_Location;
                  setState(() {});
                },
                child: Info(
                  info: Profile_Text.Work_Location,
                  CircleAvatar_color: AppColor.select_check_color,
                  dropicons: (Work_Location)
                      ? Icon(
                          Icons.navigate_next,
                          color: AppColor.select_check_color,
                          size: 31,
                        )
                      : Icon(
                          Icons.arrow_downward,
                          color: AppColor.select_check_color,
                          size: 31,
                        ),
                ),
              ),
              Visibility(
                visible: Work_Location,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: Get.height / 50),

                    //CTC
                    Text(
                      Profile_Text.Current_CTC_per_annum,
                      style: TextStyle(
                        fontSize: Get.width / 24,
                        color: AppColor.select_check_color,
                      ),
                    ),
                    TextField(
                      controller: CTC2,
                      decoration: InputDecoration(
                        hintText: Profile_Text.Enter_CTC,
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: AppColor.select_check_color),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: AppColor.select_check_color),
                        ),
                      ),
                    ),
                    SizedBox(height: Get.height / 50),

                    //Preffered Working Location
                    Text(
                      Profile_Text.Preffered_Working_Location,
                      style: TextStyle(
                        fontSize: Get.width / 24,
                        color: AppColor.select_check_color,
                      ),
                    ),
                    TextField(
                      controller: Preffered_Working_Location,
                      decoration: InputDecoration(
                        hintText:
                            Profile_Text.Enter_Preffered_Working_location,
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: AppColor.select_check_color),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: AppColor.select_check_color),
                        ),
                      ),
                    ),
                    SizedBox(height: Get.height / 50),

                    //Preffered Working Location
                    Text(
                      Profile_Text.Preffered_Work_Setup,
                      style: TextStyle(
                        fontSize: Get.width / 24,
                        color: AppColor.select_check_color,
                      ),
                    ),
                    TextField(
                      controller: Preffered_Work_Setup,
                      decoration: InputDecoration(
                        hintText:
                            Profile_Text.Enter_the_Preffered_Work_Setup,
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: AppColor.select_check_color),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: AppColor.select_check_color),
                        ),
                      ),
                    ),
                    SizedBox(height: Get.height / 50),

                    //Job Type Preferrence
                    Text(
                      Profile_Text.Job_Type_Preferrence,
                      style: TextStyle(
                        fontSize: Get.width / 24,
                        color: AppColor.select_check_color,
                      ),
                    ),
                    TextField(
                      controller: Job_Type_Preferrence,
                      decoration: InputDecoration(
                        hintText: Profile_Text.Job_Type_Preferrence,
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: AppColor.select_check_color),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: AppColor.select_check_color),
                        ),
                      ),
                    ),
                    SizedBox(height: Get.height / 50),

                    //Notice Period (days)(Optional)
                    Text(
                      Profile_Text.Notice_Period_days_Optional,
                      style: TextStyle(
                        fontSize: Get.width / 24,
                        color: AppColor.select_check_color,
                      ),
                    ),
                    TextField(
                      controller: Enter_Notice_Period,
                      decoration: InputDecoration(
                        hintText: Profile_Text.Enter_Notice_Period,
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: AppColor.select_check_color),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: AppColor.select_check_color),
                        ),
                      ),
                    ),
                    SizedBox(height: Get.height / 50),
                  ],
                ),
              ),
              SizedBox(height: Get.height/10),


              //Buttons
              OnButtons(
                Button_Color: AppColor.Button_color,
                btn_name: Profile_Text.Buttion_name,
              )
            ],
          ),
        ),
      ),
    );
  }
}
