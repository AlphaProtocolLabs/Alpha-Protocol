import 'package:flutter/material.dart';
import 'package:alpha/theme/theme.dart';
import 'package:alpha/theme/theme_manager.dart';
import 'package:page_transition/page_transition.dart';
import 'pages/home.dart';
import 'pages/learn/screen/information.dart';
import 'pages/develop.dart';
import 'pages/network.dart';
import 'pages/explore.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static Route<dynamic> _onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return PageTransition(
          child: Home(),
          duration: const Duration(milliseconds: 300),
          type: PageTransitionType.fade,
          settings: settings,
        );
      case '/information':
        return PageTransition(
          child: Information(),
          duration: const Duration(milliseconds: 300),
          type: PageTransitionType.fade,
          settings: settings,
        );
      case '/develop':
        return PageTransition(
          child: Develop(),
          duration: const Duration(milliseconds: 300),
          type: PageTransitionType.fade,
          settings: settings,
        );
      case '/network':
        return PageTransition(
          child: Network(),
          duration: const Duration(milliseconds: 300),
          type: PageTransitionType.fade,
          settings: settings,
        );
      case '/explore':
        return PageTransition(
          child: Explore(),
          duration: const Duration(milliseconds: 300),
          type: PageTransitionType.fade,
          settings: settings,
        );

      default:
        throw UnsupportedError('Unknown route: ${settings.name}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: themeManager,
      builder: (BuildContext context, Widget? child) {
        return Sizer(builder: (context, orientation, deviceType) {
          return MaterialApp(
            title: 'Powerclub Global',
            theme: MyAppThemes.lightTheme,
            darkTheme: MyAppThemes.darkTheme,
            themeMode: themeManager.themeMode,
            debugShowCheckedModeBanner: false,
            onGenerateRoute: _onGenerateRoute,
            // routes: {
            //   '/': (context) => Home(),
            //   '/information': (context) => Information(),
            //   '/develop': (context) => Develop(),
            //   '/network': (context) => Network(),
            //   '/explore': (context) => Explore(),
            //   //'/contactUsPage': (context) => const ContactUsPage(),
            //   //'/careersPage': (context) => CareersPage(),
            // },
          );
        });
      },
    );
  }
}
