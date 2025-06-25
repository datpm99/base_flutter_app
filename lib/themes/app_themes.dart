import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AppThemes {
  static Color primaryColor = Color(0xFFE11D48);
  static bool isDarkMode = false;

  static void changeTheme() async {
    Get.changeThemeMode(Get.isDarkMode ? ThemeMode.light : ThemeMode.dark);
    await 0.3.delay();
    isDarkMode = Get.isDarkMode;
  }

  static final lightTheme = ThemeData.light(useMaterial3: false).copyWith(
    primaryColor: primaryColor,

    scaffoldBackgroundColor: Colors.white,
    iconTheme: const IconThemeData(color: Colors.white),
    appBarTheme: AppBarTheme(backgroundColor: primaryColor),
    textTheme: GoogleFonts.interTextTheme(ThemeData.light(useMaterial3: false).textTheme),
  );

  static final darkTheme = ThemeData.dark(useMaterial3: false).copyWith(
    primaryColor: primaryColor,
    scaffoldBackgroundColor: Colors.white,
    iconTheme: const IconThemeData(color: Colors.white),
    appBarTheme:  AppBarTheme(backgroundColor: primaryColor),
    textTheme: GoogleFonts.interTextTheme(ThemeData.dark(useMaterial3: false).textTheme),
  );
}
