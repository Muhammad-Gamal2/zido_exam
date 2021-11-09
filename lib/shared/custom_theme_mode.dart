import 'package:flutter/material.dart';

/// Responsible of handling themes.
TextTheme _textThemeLight = const TextTheme(
  headline1:
      TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w700),
  headline2:
      TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),
);

ThemeData light() {
  return ThemeData(
    primaryColor: const Color(0xff496EE3),
    scaffoldBackgroundColor:const Color(0xffE5E5E5),
    appBarTheme: const AppBarTheme(
      color: Color(0xff496EE3),
      centerTitle: true,
      elevation: 0,
    ),
    backgroundColor: const Color(0xffE5E5E5),
    fontFamily: 'NotoSansArabicUI',
    textTheme: _textThemeLight,
    splashColor: Colors.white,
  );
}

