import 'package:flutter/material.dart';
import 'package:alpha/theme/theme.dart';
import 'package:alpha/theme/theme_manager.dart';
import 'pages/home.dart';
import 'pages/information.dart';
import 'pages/develop.dart';
import 'pages/network.dart';
import 'pages/explore.dart';
//import 'pages/contact.dart';
//import 'pages/careers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: themeManager,
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          title: 'Powerclub Global',
          theme: MyAppThemes.lightTheme,
          darkTheme: MyAppThemes.darkTheme,
          themeMode: themeManager.themeMode,
          debugShowCheckedModeBanner: false,
          routes: {
            '/': (context) => Home(),
            '/information': (context) => Information(),
            '/develop': (context) => Develop(),
            '/network': (context) => Network(),
            '/explore': (context) => Explore(),
            //'/contactUsPage': (context) => const ContactUsPage(),
            //'/careersPage': (context) => CareersPage(),
          },
        );
      },
    );
  }
}
