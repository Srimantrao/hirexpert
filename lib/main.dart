import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hirexpert/controller/LoginControoler/LoginValidation.dart';
import 'package:hirexpert/view/screen/splash/logo.dart';
import 'package:hirexpert/view/utils/app_constance.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'controller/BottamController/MenuNavigationController.dart';
import 'controller/CollectionController/Collectiondepartment.dart';
import 'controller/DropdownController/EducationController.dart';
import 'controller/DropdownController/FresherController.dart';
import 'controller/DropdownController/PreferenceController.dart';
import 'controller/DropdownController/SpecializationController.dart';
import 'controller/LoginControoler/visibility.dart';
import 'controller/OptionController/SelectButton.dart';
import 'controller/SearchScreenController/DropdownConroller.dart';
import 'controller/SignupController/SinupController.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (Platform.isAndroid) {
    if (kDebugMode) {
      print("yes");
    }
  }
  pref = await SharedPreferences.getInstance();
  islogin = pref!.getBool("login") ?? false;
  Email = pref!.getString("Email") ?? "em";
  Password = pref!.getString("Password") ?? "pass";
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
        ChangeNotifierProvider(create: (_) => VisibilityController()),
        ChangeNotifierProvider(create: (_) => LoginValidation()),
        ChangeNotifierProvider(create: (_) => SinupController()),
        ChangeNotifierProvider(create: (_) => MenuNavigationController()),
        ChangeNotifierProvider(create: (_) => DropdownController()),
        ChangeNotifierProvider(create: (_) => Collectionpart()),
        ChangeNotifierProvider(create: (_) => SpecializationController_popup()),
        ChangeNotifierProvider(
            create: (_) => SpecializationController_Interest()),
        ChangeNotifierProvider(
            create: (_) => SpecializationController_Skillset()),
        ChangeNotifierProvider(
            create: (_) => SpecializationController_Collection()),
        ChangeNotifierProvider(create: (_) => Education_Controller()),
        ChangeNotifierProvider(create: (_) => JobTitle_Controller()),
        ChangeNotifierProvider(create: (_) => FreherController()),
        ChangeNotifierProvider(create: (_) => PreferenceController()),
        ChangeNotifierProvider(create: (_) => SetupController()),
      ],
      child: GetMaterialApp(
        theme: ThemeData(
          textTheme: GoogleFonts.interTextTheme(textTheme).copyWith(
            bodyMedium: GoogleFonts.inter(
              textStyle: textTheme.bodyMedium,
            ),
          ),
        ),
        debugShowCheckedModeBanner: false,
        home: const Logo(),
      ),
    );
  }
}
