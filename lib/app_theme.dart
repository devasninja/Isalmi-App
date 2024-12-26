import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color(0xffE2BE7F);
  static const Color black = Color(0xff202020);
  static const Color white = Color(0xffFFFFFF);

  static ThemeData lightTheme = ThemeData();
  static ThemeData darkTheme = ThemeData(
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: primary,
      selectedItemColor: white,
      showSelectedLabels: true,
      showUnselectedLabels: false,
      selectedLabelStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
    ),
  );
}
