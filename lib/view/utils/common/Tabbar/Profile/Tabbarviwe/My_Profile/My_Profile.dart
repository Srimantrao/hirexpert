// ignore_for_file: camel_case_types, file_names, non_constant_identifier_names, prefer_const_constructors_in_immutables, unnecessary_null_comparison, deprecated_member_use, avoid_print, unused_import

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hirexpert/controller/API_Controller/Candidate/Collction/Pop_Collection/CountryList_pop_controller.dart';
import 'package:hirexpert/controller/API_Controller/Candidate/Collction/Pop_Collection/DegreeList_pop_Controller.dart';
import 'package:hirexpert/controller/API_Controller/Candidate/Profile/My_Profile/Candidate_Update_Controllers.dart';
import 'package:hirexpert/controller/User_Controller/Candidate_Controller/Profile_Info_Controller/MyProfile_Controller/Address_Controller/Address_Controller.dart';
import 'package:hirexpert/view/utils/app_String.dart';
import 'package:hirexpert/view/utils/app_color.dart';
import 'package:hirexpert/view/utils/app_constance.dart';
import 'package:hirexpert/view/utils/common/Buttons/wideButtons.dart';
import 'package:hirexpert/view/utils/common/Tabbar/Profile/Tabbarviwe/My_Profile/Address.dart';
import 'package:hirexpert/view/utils/common/Tostification/Toastification_error.dart';
import 'package:hirexpert/view/utils/common/Tostification/Toastification_success.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../../../../controller/API_Controller/Candidate/Collction/Login/login_API_controller.dart';
import '../../../../../../../controller/API_Controller/Candidate/Collction/Poppup/candidateTech.dart';
import '../../../../../../../controller/API_Controller/Candidate/Menu/Home/Candidate_Details_Controllres.dart';
import '../../../../../../../controller/API_handler/Candidate/Menu/profile/myprofile/Personal_Information.dart';
import '../../../../../../../controller/User_Controller/Candidate_Controller/DropdownController/PreferenceController.dart';
import '../../../../../../../controller/User_Controller/Candidate_Controller/Logic_Conroller/Screen_Logic/Profile_Logic/My_Profile_Logic(Tabbar)/CircleAvatar_Color/(My_Profile)Circle_color.dart';
import '../../../../../../../controller/User_Controller/Candidate_Controller/Logic_Conroller/Screen_Logic/Profile_Logic/My_Profile_Logic(Tabbar)/Navi_Icons/(My_Profile)_Navi_Icons.dart';
import '../../../../../../../controller/User_Controller/Candidate_Controller/Logic_Conroller/Screen_Logic/Profile_Logic/My_Profile_Logic(Tabbar)/Pass_Error/(My_Profile)_Pass_Error.dart';
import '../../../../../../../controller/User_Controller/Candidate_Controller/MY_ProfileController/My_ProfileController.dart';
import '../../../../../app_icon.dart';
import '../../../../../app_loder.dart';
import '../../../../Container/profile_Info.dart';
import '../../../../Selection/Information_Date.dart';
import '../../../../Textfild/Inputfild.dart';
import '../../../../showpop/showbottam.dart';
import '../../../../showpop/showdialog.dart';

class MY_Profile extends StatefulWidget {
  MY_Profile({super.key});

  @override
  State<MY_Profile> createState() => _MY_ProfileState();
}

class _MY_ProfileState extends State<MY_Profile> {
  bool setectpasing = false;
  ValueNotifier<int> passYearNotifier = ValueNotifier<int>(2001);

  String SelectdYear = "";
  String Selectdmonth = "";
  
  bool Specialization_pop_bool = false;
  String Specialization_pop_ID = '';
  String Specialization_pop_name = '';
  String Specialization_post = '';

  bool Degree_pop_bool = false;
  String Degree_pop_ID  = '';
  String Degree_pop_name  = '';
  String Degree_pop_post  = '';

  String? GraduationYears;

  CandidatedetailsControllers_Controllrs Candidatedetails = Get.put(CandidatedetailsControllers_Controllrs());
  CandidateUpdateControllers CandidateUpdate = Get.put(CandidateUpdateControllers());
  CountrylistPopController Countrylist = Get.put(CountrylistPopController());
  Candidatetech candidate = Get.put(Candidatetech());
  DegreelistPopController Degree = Get.put(DegreelistPopController());

  AddressProvider Address_hendals = Get.put(AddressProvider());

  //Personal Information
  TextEditingController? JobTitle_Controllers;
  TextEditingController? FirstName_Controllers;
  TextEditingController? LastName_Controllers;
  TextEditingController? Email_Controllers;
  TextEditingController? Phone_Controllers;
  TextEditingController? DOB_Controllers;

  //Address
  TextEditingController? Street_Controllers;
  TextEditingController? Post_Controllers;
  TextEditingController? SelectProvince_Controllers;
  TextEditingController? SelectCity_Controllers;

  //Education Details
  TextEditingController? Degree_Controllers;
  TextEditingController? Specialsation_Controllers;
  TextEditingController? Institute_Controllers;

  //Work Experience
  TextEditingController? CompanyName_Controllers;
  TextEditingController? Designation_Controllers;

  //Salary
  TextEditingController? CurrentSalary_Controllers;
  TextEditingController? CurrentExpented_Controllers;

  //Work Location
  TextEditingController? CurrentSalarywork_Controllers;
  TextEditingController? PrefferedSalary_Controllers;
  TextEditingController? Prefferedwork_Controllers;
  TextEditingController? JobType_Controllers;
  TextEditingController? NoticePeriod_Controllers;

  @override
  void initState() {
    Tokans = pref!.getString('Tokan')!;
    Candidate = pref!.getString('Candidate')!;

    SharedPreferences.getInstance().then((prefs) {
      setState(() {
        pref = prefs;
        savedIndex = pref!.getInt('selectedCheckboxIndex') ?? -1;
      });
    });

    Countrylist.CountrylistPopController_fuction();

    Candidatedetails.CandidatedetailsControllers_Fuction(
      CandidateId: Candidate,
      Timezone: 'asia/kolkata',
      IsLabel: '1',
      CompanyId: '1',
      Tokan: Tokans,
    );

    candidate.Candidatetech_fuctions(
        CandidateId: Candidate,
        TechId: TechId,
        Timezone: 'asia/kolkata'
    );

    Degree.DegreelistPopController_Fuction(
      CandidateId: Candidate,
      TechId: TechId,
      Timezone: 'asia/kolkata',
    );

    var candidateData = Candidatedetails.Candidatedetails_data['data'];

    //Personal Infromation
    JobTitle_Controllers = TextEditingController(text: candidateData['JobTitle'] ?? '');
    FirstName_Controllers = TextEditingController(text: candidateData['FirstName'] ?? '');
    LastName_Controllers = TextEditingController(text: candidateData['LastName'] ?? '');
    Email_Controllers = TextEditingController(text: candidateData['Email'] ?? '');
    Phone_Controllers = TextEditingController(text: candidateData['Phone'] ?? '');
    DOB_Controllers = TextEditingController(text: candidateData['DOB'].toString());

    //Address
    Street_Controllers = TextEditingController(text: candidateData['StreetAddress'] ?? '');
    Post_Controllers = TextEditingController(text: candidateData['PostCode'] ?? '');
    SelectProvince_Controllers = TextEditingController(text: candidateData['ProvinceName'] ?? '');
    SelectCity_Controllers = TextEditingController(text: candidateData['CityName'] ?? '');

    //Educational Details
    Degree_Controllers = TextEditingController(text: candidateData['DegreeName'] ?? '');
    Specialsation_Controllers = TextEditingController(text: candidateData['QuestionList'][0]['Answer'][0] ?? '');
    Institute_Controllers = TextEditingController(text: candidateData['DegreeName'] ?? '');

    //Work Experience
    CompanyName_Controllers = TextEditingController(text: candidateData['CompanyName'] ?? '');
    Designation_Controllers = TextEditingController(text: candidateData['Designation'] ?? '');

    //Salary
    CurrentSalary_Controllers = TextEditingController(text: candidateData['CurrentCTC'] ?? '');
    CurrentExpented_Controllers = TextEditingController(text: candidateData['ExpectedSalaryTo'] ?? '');

    //Work Location
    CurrentSalarywork_Controllers = TextEditingController(text: candidateData['Salary'] ?? '');
    PrefferedSalary_Controllers = TextEditingController(text: candidateData['CurrentLocation'] ?? '');
    Prefferedwork_Controllers = TextEditingController(text: candidateData['CurrentlyWork'] ?? '');
    JobType_Controllers = TextEditingController(text: candidateData['CurrentlyWork'] ?? '');
    NoticePeriod_Controllers = TextEditingController(text: candidateData['NoticePeriod'] ?? '');

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final myProfile = Provider.of<My_ProfileController>(context, listen: false);
    return Container(
      height: Get.height,
      width: Get.width,
      decoration: BoxDecoration(color: AppColor.Full_body_color),
      child: Obx(() {
        if (Candidatedetails.isLoding.value) {
          return Center(child: Image.asset(AppLoder.infinityloder_without_background, scale: Get.width / 250));
        } else if (Candidatedetails.Candidatedetails_data == null || Candidatedetails.Candidatedetails_data['data'] == null) {
          return Center(child: Text(API_Error.null_data));
        } else {
          var candidateData = Candidatedetails.Candidatedetails_data['data'];
          if (candidateData == null) {
            return Center(child: Text(API_Error.null_data));
          } else {
            return SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Consumer<My_ProfileController>(
                    builder: (BuildContext context, value, Widget? child) {
                      return Column(
                        children: [
                          //Upload Your CV
                          GestureDetector(
                            onTap: () {myProfile.Upload_lock_fun();},
                            child: Info(
                              info: Profile_Text.Upload_Your_CV,
                              CircleAvatar_color: Change_Circle(Condition: myProfile.file != null),
                              dropicons: DropIcons(conditional_name: myProfile.Upload_lock),
                            ),
                          ),
                          Visibility(
                            visible: myProfile.Upload_lock,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: Get.height / 60),
                                Text(Profile_Text.Upload, style: TextStyle(color: AppColor.subcolor, fontSize: Get.width / 23)),
                                SizedBox(height: Get.height / 60),
                                InkWell(
                                  onTap: () {myProfile.picksinglefile();},
                                  child: DottedBorder(
                                    color: AppColor.Bottam_color,
                                    dashPattern: [15, 12],
                                    child: SizedBox(
                                      height: Get.height / 6,
                                      width: Get.width,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          SvgPicture.asset(AppIcons.PDF_Icon),
                                          SizedBox(height: Get.height / 50),
                                          Text(textAlign: TextAlign.center,
                                            candidateData['ResumeDetails'].toString(),
                                            style: TextStyle(fontSize: Get.width / 27, color: AppColor.subcolor),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: Get.height / 60),
                                Row(
                                  children: [
                                    Text(Profile_Text.Resume_Link, style: TextStyle(fontSize: Get.width / 25, fontWeight: FontWeight.w600)),
                                    Row(
                                      children: [
                                        SizedBox(width: Get.width / 25),
                                        SizedBox(
                                          width: Get.width / 2,
                                          child: Text(
                                            candidateData['ResumeDetails'].toString(),
                                            style: TextStyle(color: AppColor.Button_color, decoration: TextDecoration.underline, fontSize: Get.width / 26, fontWeight: FontWeight.w600, fontStyle: FontStyle.italic),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),

                          //Personal_Information_fun
                          GestureDetector(
                            onTap: () {myProfile.Personal_Information_fun();},
                            child: Info(
                              info: Profile_Text.Personal_Information,
                              CircleAvatar_color: Change_Circle(Condition: JobTitle_Controllers!.text.isNotEmpty && FirstName_Controllers!.text.isNotEmpty && LastName_Controllers!.text.isNotEmpty && Email_Controllers!.text.isNotEmpty && Phone_Controllers!.text.isNotEmpty && DOB_Controllers!.text.isNotEmpty && myProfile.selectedCheckboxIndex.toString().isNotEmpty),
                              dropicons: DropIcons(conditional_name: myProfile.Personal_Information),
                            ),
                          ),
                          Visibility(
                            visible: myProfile.Personal_Information,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: Get.height / 60),

                                //Job Title
                                Inputfild(
                                  onTap: () {myProfile.P_Job_Title_fun();},
                                  onChanged: (val) {myProfile.JobTitle_validation(val);},
                                  labal: Profile_Text.Job_Title,
                                  hint: Candidatedetails.Candidatedetails_data['data']['JobTitle'],
                                  controller: JobTitle_Controllers!,
                                ),
                                MyProfile_Error(throww: myProfile.onthrowError, Error: myProfile.JobTitle),
                                SizedBox(height: Get.height / 60),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    //First Name
                                    Column(
                                      children: [
                                        SizedBox(
                                          width: Get.width / 2.5,
                                          child: Inputfild(
                                            onTap: () {myProfile.P_Frist_Name_fun();},
                                            onChanged: (val) {myProfile.FristName_validation(val);},
                                            labal: Profile_Text.First_Name,
                                            hint: candidateData['FirstName'] ?? '',
                                            controller: FirstName_Controllers!,
                                          ),
                                        ),
                                        SizedBox(
                                          width: Get.width / 2.5,
                                          child: MyProfile_Error(throww: myProfile.onthrowError, Error: myProfile.FristName),
                                        ),
                                      ],
                                    ),

                                    //Last Name
                                    Column(
                                      children: [
                                        SizedBox(
                                          width: Get.width / 2.5,
                                          child: Inputfild(
                                            onTap: () {myProfile.P_Last_Name_fun();},
                                            onChanged: (val) {myProfile.LastName_validation(val);},
                                            labal: Profile_Text.Last_Name,
                                            hint: candidateData['LastName'] ?? '',
                                            controller: LastName_Controllers!,
                                          ),
                                        ),
                                        SizedBox(
                                          width: Get.width / 2.5,
                                          child: MyProfile_Error(throww: myProfile.onthrowError, Error: myProfile.LastName),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(height: Get.height / 60),

                                //Email ID
                                Inputfild(
                                  labal: Profile_Text.Email_Id,
                                  hint: candidateData['Email'] ?? '',
                                  controller: Email_Controllers!,
                                  onTap: () {myProfile.P_Email_ID_fun();},
                                  onChanged: (val) {myProfile.Email_ID_validation(val);
                                  },
                                ),
                                //Error
                                MyProfile_Error(throww: myProfile.onthrowError, Error: myProfile.Email_Id,),
                                SizedBox(height: Get.height / 60),

                                //Mobile Numbres
                                Inputfild(
                                  keyboardType: TextInputType.number,
                                  labal: Profile_Text.Mobile_Number,
                                  hint: candidateData['Phone'] ?? '',
                                  controller: Phone_Controllers!,
                                  onTap: () {myProfile.P_Mobile_Numbres_fun();},
                                  onChanged: (val) {myProfile.Mobile_Numbress_validation(val);},
                                ),
                                MyProfile_Error(throww: myProfile.onthrowError, Error: myProfile.Mobile_Numbress),
                                SizedBox(height: Get.height / 60),

                                //Gender
                                Text(Profile_Text.Gender, style: TextStyle(fontSize: Get.width / 24, color: AppColor.select_check_color)),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Radio<int>(
                                          value: 0,
                                          groupValue: savedIndex,
                                          onChanged: (int? value) {
                                            setState(() {savedIndex = value ?? -1;});
                                            pref!.setInt('selectedCheckboxIndex', savedIndex!);
                                          },
                                          activeColor: AppColor.Button_color, // Set active color for "Male"
                                        ),
                                        Text(Profile_Text.Male, style: TextStyle(fontSize: Get.width / 25, color: AppColor.subcolor)),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Radio<int>(
                                          value: 1,
                                          groupValue: savedIndex,
                                          onChanged: (int? value) {
                                            setState(() {savedIndex = value ?? -1;});
                                            pref!.setInt('selectedCheckboxIndex', savedIndex!);
                                          },
                                          activeColor: AppColor.Button_color, // Set active color for "Female"
                                        ),
                                        Text(Profile_Text.Female, style: TextStyle(fontSize: Get.width / 25, color: AppColor.subcolor)),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Radio<int>(
                                          value: 2,
                                          groupValue: savedIndex,
                                          onChanged: (int? value) {
                                            setState(() {savedIndex = value ?? -1;});
                                            pref!.setInt('selectedCheckboxIndex', savedIndex!);
                                          },
                                          activeColor: AppColor.Button_color, // Set active color for "Prefer Not to Say"
                                        ),
                                        Text(Profile_Text.PreferNot_tosay, style: TextStyle(fontSize: Get.width / 25, color: AppColor.subcolor)),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(height: Get.height / 60),

                                //Date Of Birthday
                                Inputfild(
                                  labal: Profile_Text.Date_Of_Birthday,
                                  hint: candidateData['DOB'].toString(),
                                  controller: DOB_Controllers!,
                                  onTap: () {myProfile.P_Birthday_fun();},
                                  onChanged: (val) {myProfile.Date_OF_Bithday_validation(val);},
                                ),
                                MyProfile_Error(throww: myProfile.onthrowError, Error: myProfile.Date_Of_Birth),
                              ],
                            ),
                          ),

                          //Address
                          GestureDetector(
                            onTap: () {myProfile.Address_fun();},
                            child: Obx(()=>Info(
                              CircleAvatar_color: Change_Circle(Condition: Street_Controllers!.text.isNotEmpty && Post_Controllers!.text.isNotEmpty && Address_hendals.selectedProvince.value.isNotEmpty && Address_hendals.selectedCityId.value.isNotEmpty),
                              info: Profile_Text.Address,
                              dropicons: DropIcons(conditional_name: myProfile.Address),
                            )),
                          ),
                          Visibility(
                            visible: myProfile.Address,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: Get.height / 50),

                                //Street Address
                                Inputfild(
                                  labal: Profile_Text.Street_Address,
                                  hint: candidateData['StreetAddress'] ?? '',
                                  controller: Street_Controllers!,
                                  onTap: () {myProfile.P_Street_Adress_Fun();},
                                  onChanged: (val) {myProfile.Street_Adress_validation(val);},
                                ),
                                MyProfile_Error(throww: myProfile.onthrowError, Error: myProfile.Street_Adress),

                                //Post Code
                                Inputfild(
                                  labal: Profile_Text.Post_Code,
                                  hint: candidateData['PostCode'] ?? '',
                                  controller: Post_Controllers!,
                                  onTap: () {myProfile.P_Post_Code_Fun();},
                                  onChanged: (val) {myProfile.Post_Codes_validation(val);},
                                ),
                                MyProfile_Error(throww: myProfile.onthrowError, Error: myProfile.Post_Codes),

                                //Country
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: Profile_Text.Select_Country,
                                        style: TextStyle(fontWeight: FontWeight.w400, fontSize: Get.width / 25, color: AppColor.subcolor),
                                      ),
                                      TextSpan(
                                        text: ' *',
                                        style: TextStyle(fontWeight: FontWeight.w700, fontSize: Get.width / 22, color: AppColor.Error_color),
                                      ),
                                    ],
                                  ),
                                ),
                              Obx(() => Container(
                                width: Get.width,
                                height: Get.height / 15,
                                decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: AppColor.Textfild_color)),
                                  color: AppColor.Textfild_color,
                                ),
                                child: DropdownButton<String>(
                                  items: Countrylist.countrylist['data']
                                      .map<DropdownMenuItem<String>>((value) {
                                    return DropdownMenuItem<String>(
                                      value: value['Country'],
                                      child: Text(value['Country']),
                                    );
                                  }).toList(),
                                  onChanged: (val) {
                                    if (val != null) {
                                      Address_hendals.setSelectedCountry(val); // Set the selected country
                                      print("Selected value: $val");
                                    }
                                  },
                                  icon: Icon(Icons.arrow_drop_down, size: 24), // Dropdown arrow
                                  autofocus: false,
                                  isExpanded: true,
                                  hint: Text("Select Country"),
                                  value: Address_hendals.selectedCountry.value.isNotEmpty
                                      ? Address_hendals.selectedCountry.value
                                      : null, // Bind to the selected country value
                                ),
                              )),
                                SizedBox(height: Get.height / 50),

                                //Province
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: Profile_Text.Select_Province,
                                        style: TextStyle(fontWeight: FontWeight.w400, fontSize: Get.width / 25, color: AppColor.subcolor),
                                      ),
                                      TextSpan(
                                        text: ' *',
                                        style: TextStyle(fontWeight: FontWeight.w700, fontSize: Get.width / 22, color: AppColor.Error_color),
                                      ),
                                    ],
                                  ),
                                ),
                              Obx(() => GestureDetector(
                                onTap: Address_hendals.toggleProvinceSelection,
                                child: Container(
                                  width: Get.width,
                                  height: Get.height / 15,
                                  decoration: BoxDecoration(
                                    color: AppColor.Textfild_color,
                                    border: Border(bottom: BorderSide(color: AppColor.Textfild_color)),
                                  ),
                                  child: (Address_hendals.selectedProvinceBool.value) ? DropdownButton<String>(
                                    items: Countrylist.countrylist['data'][0]['ProvinceList'].map<DropdownMenuItem<String>>((province) {
                                      String value = "${province['ProvinceId']} : ${province['Name']}";
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(province['Name']),
                                      );
                                    }).toList(),
                                    onChanged: (val) {
                                      Address_hendals.setSelectedProvince(val!);
                                      print("Selected Province: $val");
                                    },
                                    icon: SizedBox(),
                                    autofocus: false,
                                    isExpanded: true,
                                    hint: Text("Select Province"),
                                    value: (Address_hendals.selectedProvince.value.isNotEmpty)
                                        ? Address_hendals.selectedProvince.value
                                        : null,
                                  )
                                      : Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: Get.height / 70),
                                      Text(candidateData['ProvinceName'], style: TextStyle(fontSize: Get.width / 23)),
                                    ],
                                  ),
                                ),
                              )),
                                SizedBox(height: Get.height/60),

                                //City
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: Profile_Text.Select_City,
                                        style: TextStyle(fontWeight: FontWeight.w400, fontSize: Get.width / 25, color: AppColor.subcolor),
                                      ),
                                      TextSpan(
                                        text: ' *',
                                        style: TextStyle(fontWeight: FontWeight.w700, fontSize: Get.width / 22, color: AppColor.Error_color),
                                      ),
                                    ],
                                  ),
                                ),
                              Obx(() => GestureDetector(
                                onTap: Address_hendals.toggleCitySelection, // Toggle the dropdown
                                child: Container(
                                  width: Get.width,
                                  height: Get.height / 15,
                                  decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(color: AppColor.Textfild_color)),
                                    color: AppColor.Textfild_color,
                                  ),
                                  // Display the Dropdown or City Name based on `selectedProvinceBool`
                                  child: (Address_hendals.selectedProvinceBool.value) ? DropdownButton<String>(
                                    items: Address_hendals.cityList.map<DropdownMenuItem<String>>((city) {
                                      return DropdownMenuItem<String>(
                                        value: city,
                                        child: Text(city.split(':')[1].trim()), // Display city name
                                      );
                                    }).toList(),
                                    onChanged: (val) {
                                      if (val != null) {
                                        Address_hendals.setSelectedCity(val); // Set the selected city
                                        print("Selected City: $val");
                                      }
                                    },
                                    icon: SizedBox(),
                                    autofocus: false,
                                    isExpanded: true,
                                    hint: Text("Select City"),
                                    value: (Address_hendals.selectedCityId.value.isNotEmpty)
                                        ? Address_hendals.selectedCityId.value
                                        : null, // Bind selected city
                                  )
                                      : Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: Get.height / 70),
                                      Text(candidateData['CityName'], style: TextStyle(fontSize: Get.width / 23)),
                                    ],
                                  ),
                                ),
                              )),
                                SizedBox(height: Get.height / 50),
                              ],
                            ),
                          ),

                          //Education Details
                          GestureDetector(
                            onTap: () {myProfile.Education_Details_fun();},
                            child: Info(
                              CircleAvatar_color: Change_Circle(Condition: Degree_pop_name.isNotEmpty && Specialization_pop_name.isNotEmpty && Institute_Controllers!.text.isNotEmpty && passYearNotifier.value.toString() == value.toString()),
                              info: Profile_Text.Educational_Detailss,
                              dropicons: DropIcons(conditional_name: myProfile.Education_Details),
                            ),
                          ),
                          Visibility(
                            visible: myProfile.Education_Details,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: Get.height / 50),

                                //Degree
                                // Inputfild(
                                //   labal: EditProfile_text.Degree,
                                //   hint: Candidatedetails.Candidatedetails_data['data']['DegreeName'],
                                //   controller: Degree_Controllers!,
                                //   onTap: () {myProfile.P_Degree_fun();},
                                //   onChanged: (val) {myProfile.Degree_validation(val);},
                                // ),
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: EditProfile_text.Degree,
                                        style: TextStyle(fontWeight: FontWeight.w400, fontSize: Get.width / 25, color: AppColor.subcolor),
                                      ),
                                      TextSpan(
                                        text: ' *',
                                        style: TextStyle(fontWeight: FontWeight.w700, fontSize: Get.width / 22, color: AppColor.Error_color),
                                      ),
                                    ],
                                  ),
                                ),
                                GestureDetector(
                                  onTap: (){
                                    Showdialog.showdialod(
                                      height: Get.height/2,
                                        context: context,
                                        colamWidget: SizedBox(
                                          height: Get.height/1.5,
                                          child: ListView.builder(
                                            itemCount: Degree.Degree_data['data'].length,
                                            itemBuilder: (BuildContext context, int index) { 
                                              return GestureDetector(
                                                onTap: (){
                                                  setState(() {
                                                    Degree_pop_bool = true;
                                                    Degree_pop_post = Candidatedetails.Candidatedetails_data['data']['DegreeName'].toString();
                                                    Degree_pop_ID = Degree.Degree_data['data'][index]['DegreeId'];
                                                    Degree_pop_name = Degree.Degree_data['data'][index]['Name'];
                                                    ToastificationSuccess.Success('$Degree_pop_name, $Degree_pop_ID');
                                                    print('$Degree_pop_name, $Degree_pop_ID');
                                                    Degree_pop_post = Degree_pop_name;
                                                    Get.back();
                                                  });
                                                },
                                                child: SizedBox(
                                                  height: Get.height/20,
                                                    child: Text(Degree.Degree_data['data'][index]['Name'],
                                                    style: TextStyle(fontSize: Get.width/25)
                                                    ),
                                                ),
                                              );
                                            }),
                                        ),
                                        hedingtext: EditProfile_text.Degree,
                                        onTabs: () => Get.back(),
                                    );
                                  },
                                  child: Container(
                                    width: Get.width,
                                    height: Get.height/15,
                                    decoration: BoxDecoration(
                                      border: Border(bottom: BorderSide(color: AppColor.Textfild_color)),
                                      color: AppColor.Textfild_color,
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: Get.height/50),
                                        (Degree_pop_bool)
                                        ? Text(Degree_pop_name,style: TextStyle(fontSize: Get.width/25))
                                        : Text(Candidatedetails.Candidatedetails_data['data']['DegreeName'].toString(),style: TextStyle(fontSize: Get.width/25)),
                                      ],
                                    ),
                                  ),
                                ),
                                MyProfile_Error(throww: myProfile.onthrowError, Error: myProfile.Degrees),
                                SizedBox(height: Get.height / 50),

                                //Specialisation
                                // Inputfild(
                                //   labal: EditProfile_text.Specialisation,
                                //   hint: candidateData['QuestionList'][0]['Answer'][0] ?? '',
                                //   controller: Specialsation_Controllers!,
                                //   onTap: () {myProfile.P_Specialisation_fun();},
                                //   onChanged: (val) {myProfile.Specialisation_validation(val);
                                //   },
                                // ),
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: EditProfile_text.Specialisation,
                                        style: TextStyle(fontWeight: FontWeight.w400, fontSize: Get.width / 25, color: AppColor.subcolor),
                                      ),
                                      TextSpan(
                                        text: ' *',
                                        style: TextStyle(fontWeight: FontWeight.w700, fontSize: Get.width / 22, color: AppColor.Error_color),
                                      ),
                                    ],
                                  ),
                                ),
                                GestureDetector(
                                  onTap: (){
                                    Showdialog.showdialod(
                                      height: Get.height/2,
                                       context: context,
                                        colamWidget: SizedBox(
                                          height: Get.height/1.5,
                                          child: ListView.builder(
                                              itemCount: candidate.Candidatetech_data['data']['OptionList'].length,
                                              itemBuilder: (BuildContext context, int index) {
                                                if (index < candidate.Candidatetech_data['data']['OptionList'].length) {
                                                  return GestureDetector(
                                                    onTap: () {
                                                      setState(() {
                                                        Specialization_pop_bool = true;
                                                        Specialization_pop_ID = candidate.Candidatetech_data['data']['OptionList'][index]['QDetailId'];
                                                        Specialization_pop_name = candidate.Candidatetech_data['data']['OptionList'][index]['QueAnswer'];
                                                        Specialization_post = Specialization_pop_name;
                                                        Get.back();
                                                        ToastificationSuccess.Success('$Specialization_pop_ID, $Specialization_pop_name');
                                                      });
                                                    },
                                                    child: SizedBox(
                                                      height: Get.height / 20,
                                                      child: Text(
                                                        candidate.Candidatetech_data['data']['OptionList'][index]['QueAnswer'],
                                                        style: TextStyle(fontSize: Get.width / 25),
                                                      ),
                                                    ),
                                                  );
                                                } else {
                                                  return Container(); // Or some placeholder widget
                                                }
                                              }
                                          ),
                                        ),
                                        hedingtext: EditProfile_text.Specialisation,
                                        onTabs: () => Get.back(),
                                    );
                                  },
                                  child: Container(
                                    width: Get.width,
                                    height: Get.height/15,
                                    decoration: BoxDecoration(
                                      border: Border(bottom: BorderSide(color: AppColor.Textfild_color)),
                                      color: AppColor.Textfild_color,
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: Get.height/50),
                                        (Specialization_pop_bool)
                                            ? Text(Specialization_pop_name,style: TextStyle(fontSize: Get.width/25))
                                            : Text(candidateData['QuestionList'][0]['Answer'].toString() ,style: TextStyle(fontSize: Get.width/25)),
                                      ],
                                    )
                                  ),
                                ),
                                MyProfile_Error(throww: myProfile.onthrowError, Error: myProfile.Specialisations),
                                SizedBox(height: Get.height / 50),

                                //Institute Name
                                Inputfild(
                                  labal: EditProfile_text.Institute_Name,
                                  hint: candidateData['DegreeName'] ?? '',
                                  controller: Institute_Controllers!,
                                  onTap: () {myProfile.P_Instiute_name_fun();},
                                  onChanged: (val) {myProfile.Institute_name_validation(val);
                                  },
                                ),
                                MyProfile_Error(throww: myProfile.onthrowError, Error: myProfile.Institute_names),
                                SizedBox(height: Get.height / 70),

                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: EditProfile_text.Passing_Yea,
                                        style: TextStyle(fontWeight: FontWeight.w400, fontSize: Get.width / 25, color: AppColor.subcolor),
                                      ),
                                      TextSpan(
                                        text: ' *',
                                        style: TextStyle(fontWeight: FontWeight.w700, fontSize: Get.width / 22, color: AppColor.Error_color),
                                      ),
                                    ],
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    showDialog(
                                      context: context,
                                      builder: (context) {
                                        return AlertDialog(
                                          backgroundColor: AppColor.Full_body_color,
                                          content: ValueListenableBuilder(
                                            valueListenable: passYearNotifier,
                                            builder: (context, int value, child) {
                                              return Container(
                                                height: Get.height / 4,
                                                width: Get.width,
                                                decoration: BoxDecoration(color: AppColor.Full_body_color),
                                                child: NumberPicker(
                                                  step: 1,
                                                  minValue: 1900, // Specify a minimum value for the picker
                                                  maxValue: 2025,
                                                  itemHeight: Get.height / 12,
                                                  selectedTextStyle: TextStyle(color: AppColor.black_all, fontSize: Get.width / 20),
                                                  decoration: BoxDecoration(
                                                    border: Border(
                                                      top: BorderSide(color: AppColor.subcolor),
                                                      bottom: BorderSide(color: AppColor.subcolor),
                                                    ),
                                                  ),
                                                  value: value,
                                                  onChanged: (newValue) {
                                                    setectpasing = true;
                                                    passYearNotifier.value = newValue;
                                                  }
                                                ),
                                              );
                                            },
                                          ),
                                          actions: [
                                            OnButtons(onTap: () {
                                              GraduationYears = Candidatedetails.Candidatedetails_data['data']['GraduationYears'];
                                              Get.back();}, Button_Color: AppColor.Button_color, btn_name: 'Save'),
                                          ],
                                        );
                                      },
                                    );
                                  },
                                  child: ValueListenableBuilder(
                                    valueListenable: passYearNotifier,
                                    builder: (BuildContext context, value, Widget? child) {
                                      return Container(
                                        height: Get.height / 20,
                                        width: Get.width,
                                        decoration: BoxDecoration(border: Border(bottom: BorderSide(color: AppColor.select_check_color))),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text((setectpasing) ? value.toString() : Candidatedetails.Candidatedetails_data['data']['GraduationYears'].toString() ?? '',style: TextStyle(fontSize: Get.width/23)),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                SizedBox(height: Get.height / 30),

                                //Add Education Details
                                Text(Profile_Text.Add_Educational_Details, style: TextStyle(fontSize: Get.width / 24, fontWeight: FontWeight.w600, color: AppColor.Button_color)),
                                SizedBox(height: Get.height / 30),
                              ],
                            ),
                          ),

                          //Work Experience
                          GestureDetector(
                            onTap: () {myProfile.Work_Experience_fun();},
                            child: Info(
                              CircleAvatar_color: Change_Circle(Condition: myProfile.P_fresher == 6 || myProfile.P_Years_Selection == 0 && myProfile.P_Month_Selection == 1 && myProfile.P_Company_Name == 2 && myProfile.P_Designation == 3),
                              info: Profile_Text.Work_Experience,
                              dropicons: DropIcons(conditional_name: myProfile.Work_Experience),
                            ),
                          ),
                          Visibility(
                            visible: myProfile.Work_Experience,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: Get.height / 50),

                                //I'm Not a Fresher
                                Container(
                                  height: Get.height / 20,
                                  width: Get.width,
                                  decoration: BoxDecoration(border: Border(bottom: BorderSide(color: AppColor.select_check_color))),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(Profile_Text.fresher, style: TextStyle(fontSize: Get.width / 24)),
                                      GestureDetector(
                                        onTap: () {myProfile.Freshers_fun();},
                                        child: Switch(
                                          materialTapTargetSize: MaterialTapTargetSize.padded,
                                          thumbColor: MaterialStatePropertyAll(AppColor.Full_body_color),
                                          activeColor: AppColor.Button_color,
                                          value: myProfile.fresher,
                                          onChanged: (val) {myProfile.Fresher_fun(val);},
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(height: Get.height / 50),
                                Visibility(
                                  visible: myProfile.fresher,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(Profile_Text.Total_Experience, style: TextStyle(fontSize: Get.width / 24, color: AppColor.select_check_color)),

                                      //Total Experience
                                      // Row(
                                      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      //   children: [
                                      //     SizedBox(
                                      //       width: Get.width / 2.5,
                                      //       child: Infromation_Selection(
                                      //         SelectonTap_Button: () {
                                      //           myProfile.P_Years_Selection_fun();
                                      //           Get.back();
                                      //         },
                                      //         Hadline: Profile_Text.Enter_Year,
                                      //         Selectedtext: SelectdYear,
                                      //         onSelectedItemChanged: (int index) {
                                      //           setState(() {
                                      //             SelectdYear = Years[index];
                                      //           });
                                      //         },
                                      //         children: List.generate(
                                      //           Years.length,
                                      //           (index) => Text(Years[index], style: TextStyle(fontSize: Get.width / 20)),
                                      //         ),
                                      //       ),
                                      //     ),
                                      //     SizedBox(
                                      //       width: Get.width / 2.5,
                                      //       child: Infromation_Selection(
                                      //         SelectonTap_Button: () {
                                      //           myProfile.P_Month_Selection_fun();
                                      //           Get.back();
                                      //         },
                                      //         Hadline: Profile_Text.Enter_Month,
                                      //         Selectedtext: Selectdmonth,
                                      //         onSelectedItemChanged: (int index) {
                                      //           setState(() {
                                      //             Selectdmonth = Month[index];
                                      //           });
                                      //         },
                                      //         children: List.generate(
                                      //           Month.length,
                                      //           (index) => Text(Month[index], style: TextStyle(fontSize: Get.width / 20)),
                                      //         ),
                                      //       ),
                                      //     ),
                                      //   ],
                                      // ),
                                      // SizedBox(height: Get.height / 50),

                                      //Company Name
                                      GestureDetector(
                                        onTap: () {
                                          showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return StatefulBuilder(
                                                builder: (BuildContext context, inchange) {
                                                  return AlertDialog(
                                                    backgroundColor: AppColor.Full_body_color,
                                                    content: Container(
                                                      height: Get.height / 3,
                                                      width: Get.width,
                                                      decoration: BoxDecoration(color: AppColor.Full_body_color),
                                                      child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          SizedBox(
                                                            width: Get.width / 3.04,
                                                            child: NumberPicker(
                                                              step: 1,
                                                              minValue: passYearNotifier.value,
                                                              maxValue: 2025,
                                                              itemHeight:
                                                              Get.height / 12,
                                                              selectedTextStyle: TextStyle(color: AppColor.black_all, fontSize: Get.width /20),
                                                              decoration: BoxDecoration(
                                                                border: Border(
                                                                  top: BorderSide(color: AppColor.subcolor),
                                                                  bottom: BorderSide(color: AppColor.subcolor),
                                                                ),
                                                              ),
                                                              value: passYearNotifier.value,
                                                              onChanged: (value) {
                                                                passYearNotifier.value = value;
                                                                setectpasing = true;
                                                                inchange(() {});
                                                              },
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            width: Get.width / 3.04,
                                                            child: NumberPicker(
                                                              step: 1,
                                                              minValue: passYearNotifier.value,
                                                              maxValue: 2025,
                                                              itemHeight: Get.height / 12,
                                                              selectedTextStyle: TextStyle(color: AppColor.black_all, fontSize: Get.width / 20),
                                                              decoration: BoxDecoration(
                                                                border: Border(
                                                                  top: BorderSide(color: AppColor.subcolor),
                                                                  bottom: BorderSide(color: AppColor.subcolor),
                                                                ),
                                                              ),
                                                              value: passYearNotifier.value,
                                                              onChanged: (value) {
                                                                passYearNotifier.value = value;
                                                                setectpasing = true;
                                                                inchange(() {});
                                                              },
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    actions: [
                                                      OnButtons(onTap: () {Get.back();}, Button_Color: AppColor.Button_color, btn_name: 'Save'),
                                                    ],
                                                  );
                                                },
                                              );
                                            },
                                          );
                                        },
                                        child: ValueListenableBuilder(
                                          valueListenable: passYearNotifier,
                                          builder: (BuildContext context, value,
                                              Widget? child) {
                                            return Container(
                                              height: Get.height / 20,
                                              width: Get.width,
                                              decoration: BoxDecoration(
                                                border: Border(bottom: BorderSide(color: AppColor.select_check_color)),
                                              ),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Text((setectpasing) ? value.toString() : EditProfile_text.Passing_Yea),
                                                ],
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                      SizedBox(height: Get.height / 30),

                                      Inputfild(
                                        labal: Profile_Text.Company_Name,
                                        hint: candidateData['CompanyName'],
                                        controller: CompanyName_Controllers!,
                                        onTap: () {myProfile.P_Company_Name_fun();},
                                        onChanged: (val) {myProfile.Companys_names_validation(val);},
                                      ),
                                      MyProfile_Error(throww: myProfile.onthrowError, Error: myProfile.Companys_names),
                                      SizedBox(height: Get.height / 50),

                                      //Designation
                                      Inputfild(
                                        labal: Profile_Text.Designation,
                                        hint: candidateData['Designation'] ?? '',
                                        controller: Designation_Controllers!,
                                        onTap: () {myProfile.P_Designation_fun();},
                                        onChanged: (val) {myProfile.Designations_validation(val);
                                        },
                                      ),
                                      MyProfile_Error(throww: myProfile.onthrowError, Error: myProfile.Designations),
                                      SizedBox(height: Get.height / 50),

                                      //Duration
                                      Text(Profile_Text.Designation, style: TextStyle(fontSize: Get.width / 24, color: AppColor.select_check_color)),
                                      SizedBox(height: Get.height / 50),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          SizedBox(
                                            width: Get.width / 2.5,
                                            child: DatePickerWidget(initialDate: DateTime.now(), onDateSelected: (DateTime selectedDate) {},
                                            ),
                                          ),
                                          SizedBox(
                                            width: Get.width / 2.5,
                                            child: DatePickerWidget(
                                              initialDate: DateTime.now(),
                                              onDateSelected: (DateTime selectedDate) {},
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(height: Get.height / 50),
                                      Column(
                                        children: [
                                          Row(
                                            children: [
                                              Checkbox(
                                                value: myProfile.I_currently_workhere,
                                                onChanged: (val) {myProfile.Work_Check(val);},
                                              ),
                                              Text(Profile_Text.I_currently_work_here, style: TextStyle(fontSize: Get.width / 24, color: AppColor.subcolor)),
                                            ],
                                          )
                                        ],
                                      ),
                                      SizedBox(height: Get.height / 50),
                                      Text(Profile_Text.Add_Work_Experience, style: TextStyle(fontSize: Get.width / 24, fontWeight: FontWeight.w600, color: AppColor.Button_color)),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),

                          //Salary
                          GestureDetector(
                            onTap: () {myProfile.Salary_fun();},
                            child: Info(
                              CircleAvatar_color: Change_Circle(Condition: CurrentSalary_Controllers!.text.isNotEmpty && CurrentExpented_Controllers!.text.isNotEmpty),
                              info: Profile_Text.Salarys,
                              dropicons: DropIcons(conditional_name: myProfile.Salary),
                            ),
                          ),
                          Visibility(
                            visible: myProfile.Salary,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: Get.height / 50),

                                //CTC
                                Inputfild(
                                  labal: Profile_Text.CTC,
                                  hint: candidateData['CurrentCTC'] ?? '',
                                  controller: CurrentSalary_Controllers!,
                                  onTap: () {myProfile.CTC_Fun();},
                                  onChanged: (val) {myProfile.CTCs_Validation(val);},
                                ),
                                MyProfile_Error(throww: myProfile.onthrowError, Error: myProfile.CTCS),
                                SizedBox(height: Get.height / 50),

                                //Expected
                                Inputfild(
                                  labal: Profile_Text.CTC,
                                  hint: candidateData['ExpectedSalaryTo'] ?? '',
                                  controller: CurrentExpented_Controllers!,
                                  onTap: () {myProfile.Expected_Fun();},
                                  onChanged: (val) {myProfile.Expected_Validation(val);},
                                ),
                                MyProfile_Error(throww: myProfile.onthrowError, Error: myProfile.Expecteds),
                                SizedBox(height: Get.height / 50),
                              ],
                            ),
                          ),

                          //Work Location
                          GestureDetector(
                            onTap: () {myProfile.Work_Location_fun();},
                            child: Info(
                              CircleAvatar_color: Change_Circle(Condition: myProfile.P_CTC_Current == 0 && myProfile.Preffered_Working == 1 && myProfile.Preffered_Work_Working == 2 && myProfile.Job_Type_Preferrence == 3 && myProfile.Notice_Period == 4),
                              info: Profile_Text.Work_Location,
                              dropicons: DropIcons(conditional_name: myProfile.Work_Location),
                            ),
                          ),
                          Visibility(
                            visible: myProfile.Work_Location,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: Get.height / 50),

                                //CTC
                                Inputfild(
                                  labal: Profile_Text.Current_CTC_per_annum,
                                  hint: candidateData['CurrentCTC'],
                                  controller: CurrentSalarywork_Controllers!,
                                  onTap: () {myProfile.P_CTC_Current_fun();},
                                  onChanged: (val) {myProfile.P_CTC_Currents_validation(val);},
                                ),
                                MyProfile_Error(throww: myProfile.onthrowError, Error: myProfile.P_CTC_Currents),
                                SizedBox(height: Get.height / 50),

                                //Preffered Working Location
                                Inputfild(
                                  labal: Profile_Text.Preffered_Working_Location,
                                  hint: candidateData['CurrentLocation'],
                                  controller: PrefferedSalary_Controllers!,
                                  onTap: () {myProfile.Preffered_Working_fun();},
                                  onChanged: (val) {myProfile.Preffered_Workings_validation(val);},
                                ),
                                MyProfile_Error(throww: myProfile.onthrowError, Error: myProfile.Preffered_Workings),
                                SizedBox(height: Get.height / 50),

                                //Preffered Working Setup
                                Inputfild(
                                  labal: Profile_Text.Preffered_Work_Setup,
                                  hint: candidateData['CurrentlyWork'],
                                  controller: Prefferedwork_Controllers!,
                                  onTap: () {myProfile.Preffered_Work_Working_fun();},
                                  onChanged: (val) {myProfile.Preffered_Work_Workings_validation(val);},
                                ),
                                MyProfile_Error(throww: myProfile.onthrowError, Error: myProfile.PPreffered_Work_Workings),
                                SizedBox(height: Get.height / 50),

                                //Job Type Preferrence
                                Inputfild(
                                  labal: Profile_Text.Job_Type_Preferrence,
                                  hint: candidateData['CurrentlyWork'],
                                  controller: JobType_Controllers!,
                                  onTap: () {myProfile.Job_Type_Preferrence_fun();},
                                  onChanged: (val) {myProfile.Job_Type_Preferrences_validation(val);},
                                ),
                                MyProfile_Error(throww: myProfile.onthrowError, Error: myProfile.Job_Type_Preferrences),
                                SizedBox(height: Get.height / 50),

                                //Notice Period (days)(Optional)
                                Inputfild(
                                  labal: Profile_Text.Notice_Period_days_Optional,
                                  hint: candidateData['NoticePeriod'],
                                  controller: NoticePeriod_Controllers!,
                                  onTap: () {myProfile.Notice_Period_fun();},
                                  onChanged: (val) {myProfile.Notice_Periods_validation(val);},
                                ),
                                MyProfile_Error(throww: myProfile.onthrowError, Error: myProfile.Notice_Periods),
                                SizedBox(height: Get.height / 50),
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                  SizedBox(height: Get.height / 10),

                  //Buttons
                  OnButtons(
                    onTap: () {
                      setState(() {
                        CandidateUpdate.CandidateUpdateControllers_Fuction(
                          CandidateId: Candidate,
                          Tokan: Tokans,
                          UserId: Candidatedetails.Candidatedetails_data['data']['UserId'],
                          Timezone: 'asia/kolkata',

                          //Personal Information
                          FirstName: FirstName_Controllers!.text,
                          JobTitle: JobTitle_Controllers!.text,
                          Phone: Phone_Controllers!.text,
                          DOB: DOB_Controllers!.text,
                          Gender: myProfile.selectedCheckboxIndex.toString(),

                          //Address
                          StreetAddress: Street_Controllers!.text,
                          PostCode: Post_Controllers!.text,
                          ProvinceId: Address_hendals.provinceId.value.toString(),
                          CityId: Address_hendals.selectedCityId.value.toString(),

                          //Educational Details
                          DegreeIdProfile: Degree_pop_ID,
                          GraduationYear: GraduationYears,

                          //Salary
                          CurrentCTC: CurrentSalary_Controllers!.text,
                          ExpectedSalary: CurrentExpented_Controllers!.text,
                          SpecialisationProfile: Specialization_pop_name.toString(),
                        );
                      });
                        ToastificationSuccess.Success(CandidateUpdate.CandidateUpdate['message']);
                    },
                    Button_Color: AppColor.Button_color,
                    btn_name: Profile_Text.Buttion_name,
                  ),
                ],
              ),
            );
          }
        }
      }),
    );
  }
}
