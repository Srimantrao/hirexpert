import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hirexpert/controller/LoginControoler/LoginValidation.dart';
import 'package:hirexpert/view/screen/splash/logo.dart';
import 'package:provider/provider.dart';

import 'controller/BottamController/MenuNavigationController.dart';
import 'controller/LoginControoler/visibility.dart';
import 'controller/OptionController/SelectButton.dart';
import 'controller/SignupController/SinupController.dart';

void main() {
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
