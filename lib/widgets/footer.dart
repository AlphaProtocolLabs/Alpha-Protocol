import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:alpha/theme/theme_manager.dart';

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  void _themeChanged() {
    log("Theme changed");
    setState(() {}); // Trigger a rebuild if necessary
  }

  @override
  void initState() {
    super.initState();
    themeManager.addListener(_themeChanged);
  }

  @override
  Widget build(BuildContext context) {
    Color overlineColor =
        themeManager.isDarkMode ? Colors.white : const Color(0xFFB4914C);

    String imageSuffix = themeManager.isDarkMode ? "_d" : "";

    return Material(
      elevation: 5,
      color: themeManager.isDarkMode ? Colors.black : Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 1.0,
            color: overlineColor,
          ),
          const SizedBox(height: 20),
          // Social Media Icons
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/facebook_icon$imageSuffix.png',
                width: 30,
                height: 30,
              ),
              const SizedBox(width: 10),
              Image.asset(
                'assets/x_icon$imageSuffix.png',
                width: 30,
                height: 30,
              ),
              const SizedBox(width: 10),
              Image.asset(
                'assets/google_icon$imageSuffix.png',
                width: 30,
                height: 30,
              ),
            ],
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Center(
              child: Text(
                "Alpha Protocol by Powerclub Global",
                style: TextStyle(
                  fontSize: 10.0,
                  fontFamily: 'Cinzel',
                  color: themeManager.isDarkMode ? Colors.white : Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
