import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'home/home.dart';
import 'shared/custom_theme_mode.dart';

void main() {
  runApp(EasyLocalization(
      supportedLocales: const <Locale>[Locale('en'), Locale('ar')],
      path: 'assets/translation',
      fallbackLocale: const Locale('ar'),
      saveLocale: true,
      startLocale: const Locale('en'),
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: 'Zido Exam',
      theme: light(),
      home: const TabBarPage(),
    );
  }
}
