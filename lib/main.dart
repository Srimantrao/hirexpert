// ignore_for_file: avoid_print, prefer_const_constructors, deprecated_member_use

// Platform  Firebase App Id
// web       1:435726694932:web:fe8e283cd3e26528410501
// android   1:435726694932:android:cdf2eba093c19c1a410501
// ios       1:435726694932:ios:bea68d2cf6fa55d0410501
// macos     1:435726694932:ios:7e2f495edde32823410501

import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hirexpert/controller/User_Controller/Candidate_Controller/DatailsController/Details_Appild.dart';
import 'package:hirexpert/controller/User_Controller/Candidate_Controller/DatailsController/Details_Declined.dart';
import 'package:hirexpert/controller/User_Controller/Candidate_Controller/DatailsController/Details_Hired.dart';
import 'package:hirexpert/controller/User_Controller/Candidate_Controller/DatailsController/Details_Interviwe.dart';
import 'package:hirexpert/controller/User_Controller/Candidate_Controller/DatailsController/Details_Offer.dart';
import 'package:hirexpert/controller/User_Controller/Candidate_Controller/OTP_Controller/OTP_Controller.dart';
import 'package:hirexpert/controller/User_Controller/Candidate_Controller/Profile_Info_Controller/Document_Info_Controller.dart';
import 'package:hirexpert/controller/User_Controller/Candidate_Controller/SettingController/Setting_Screen_Controller.dart';
import 'package:hirexpert/controller/User_Controller/Candidate_Controller/UserJob_Search_listing_Controller/User_Search_Controller.dart';
import 'package:hirexpert/view/screen/splash/logo.dart';
import 'package:hirexpert/view/utils/app_color.dart';
import 'package:hirexpert/view/utils/app_constance.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'controller/User_Controller/Candidate_Controller/BottamController/MenuNavigationController.dart';
import 'controller/User_Controller/Candidate_Controller/ButtonsController/SearchButtonsController.dart';
import 'controller/User_Controller/Candidate_Controller/ButtonsController/SearchJobController.dart';
import 'controller/User_Controller/Candidate_Controller/Change_PasswordController/Change_Password_Controller.dart';
import 'controller/User_Controller/Candidate_Controller/CheckMarkController/Notification_Controller.dart';
import 'controller/User_Controller/Candidate_Controller/ChoseFileController/ChosefileController.dart';
import 'controller/User_Controller/Candidate_Controller/CollectionController/Collectiondepartment.dart';
import 'controller/User_Controller/Candidate_Controller/DropdownController/EducationController.dart';
import 'controller/User_Controller/Candidate_Controller/DropdownController/FresherController.dart';
import 'controller/User_Controller/Candidate_Controller/DropdownController/PreferenceController.dart';
import 'controller/User_Controller/Candidate_Controller/DropdownController/SpecializationController.dart';
import 'controller/User_Controller/Candidate_Controller/LoginControoler/LoginValidation.dart';
import 'controller/User_Controller/Candidate_Controller/LoginControoler/visibility.dart';
import 'controller/User_Controller/Candidate_Controller/MY_ProfileController/My_ProfileController.dart';
import 'controller/User_Controller/Candidate_Controller/SearchScreenController/DropdownConroller.dart';
import 'controller/User_Controller/Candidate_Controller/SignupController/SinupController.dart';
import 'controller/User_Controller/Candidate_Controller/TabbarController/Tabcontroller.dart';
import 'controller/User_Controller/Employer_Controller/DropdownController/SpecializationController.dart';
import 'controller/User_Controller/Employer_Controller/LoginControoler/LoginValidation.dart';
import 'controller/User_Controller/Employer_Controller/LoginControoler/visibility.dart';
import 'controller/User_Controller/Employer_Controller/SignupController/SinupController.dart';
import 'controller/User_Controller/Option_Controller/SelectButton.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (Platform.isAndroid) {
    if (kDebugMode) {
      print("yes");
    }
  }

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  pref = await SharedPreferences.getInstance();

  Frist_name = pref!.getString('FristName') ?? 'FristName :- ';
  Last_name = pref!.getString('LastName') ?? 'LastName :- ';
  Email = pref!.getString('Email') ?? 'LastName :- ';
  Phone = pref!.getString('Phone') ?? 'Phone :- ';
  Password = pref!.getString('Password') ?? 'Password :- ';

  islogin = pref!.getBool("Login") ?? false;

  print("FristName :- $Frist_name");
  print("LastName :- $Last_name");
  print("Email :- $Email");
  print("Phone :- $Phone");
  print("Password :- $Password");


  print("isLogin :- $islogin");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SelectButtonsController()),
        ChangeNotifierProvider(create: (_) => Candidate_VisibilityController()),
        ChangeNotifierProvider(create: (_) => Candidate_LoginValidation()),
        ChangeNotifierProvider(create: (_) => Candidate_SinupController()),
        ChangeNotifierProvider(create: (_) => MenuNavigationController()),
        ChangeNotifierProvider(create: (_) => DropdownController()),
        ChangeNotifierProvider(create: (_) => Collectionpart()),
        ChangeNotifierProvider(create: (_) => JobTitle_Controller()),
        ChangeNotifierProvider(create: (_) => FreherController()),
        ChangeNotifierProvider(create: (_) => PreferenceController()),
        ChangeNotifierProvider(create: (_) => SearchJobController()),
        ChangeNotifierProvider(create: (_) => SearchButtonsController()),
        ChangeNotifierProvider(create: (_) => TabbarController()),
        ChangeNotifierProvider(create: (_) => Notification_Controller()),
        ChangeNotifierProvider(create: (_) => My_ProfileController()),
        ChangeNotifierProvider(create: (_) => ChosefileController()),
        ChangeNotifierProvider(create: (_) => Employer_LoginValidation()),
        ChangeNotifierProvider(create: (_) => Employer_VisibilityController()),
        ChangeNotifierProvider(create: (_) => Employer_SinupController()),
        ChangeNotifierProvider(create: (_) => ChangePasswordController()),
        ChangeNotifierProvider(create: (_) => OtpController()),
        ChangeNotifierProvider(create: (_) => Specializationcontroller()),
        ChangeNotifierProvider(create: (_) => Employer_SpecializationController_popup()),
        ChangeNotifierProvider(create: (_) => Employer_SpecializationController_popup()),
        ChangeNotifierProvider(create: (_) => Employer_SpecializationController_Interest()),
        ChangeNotifierProvider(create: (_) => Employer_SpecializationController_Interest()),
        ChangeNotifierProvider(create: (_) => Employer_SpecializationController_Skillset()),
        ChangeNotifierProvider(create: (_) => Employer_SpecializationController_Collection()),
        ChangeNotifierProvider(create: (_) => SettingScreenController()),
        ChangeNotifierProvider(create: (_) => DetailsAppild()),
        ChangeNotifierProvider(create: (_) => DetailsDeclined()),
        ChangeNotifierProvider(create: (_) => DetailsHired()),
        ChangeNotifierProvider(create: (_) => DetailsInterviwe()),
        ChangeNotifierProvider(create: (_) => DetailsOffer()),
        ChangeNotifierProvider(create: (_) => DocumentInfoController()),
        ChangeNotifierProvider(create: (_) => Education_Controller()),
        ChangeNotifierProvider(create: (_) => UserSearchController())
      ],
      child: GetMaterialApp(
        theme: ThemeData(
          textTheme: GoogleFonts.interTextTheme(textTheme).copyWith(bodyMedium: GoogleFonts.inter(textStyle: textTheme.bodyMedium)),
          scrollbarTheme: ScrollbarThemeData(
            thumbColor: MaterialStateProperty.all<Color>(AppColor.Full_body_color),
          ),
        ),
        debugShowCheckedModeBanner: false,
        home: Logo(),
      ),
    );
  }
}
