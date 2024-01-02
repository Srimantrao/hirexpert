import 'dart:io';

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
import 'controller/DropdownController/Specialization_con.dart';
import 'controller/LoginControoler/visibility.dart';
import 'controller/OptionController/SelectButton.dart';
import 'controller/SearchScreenController/DropdownConroller.dart';
import 'controller/SignupController/SinupController.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (Platform.isAndroid) {
    print("yes");
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
        ChangeNotifierProvider(create: (_) => SpecializationController()),
        ChangeNotifierProvider(create: (_) => Collectionpart()),
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
