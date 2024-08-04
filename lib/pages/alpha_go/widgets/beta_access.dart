import 'dart:developer';

import 'package:alpha/theme/theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BetaAccessWidget extends StatefulWidget {
  const BetaAccessWidget({super.key});

  @override
  State<BetaAccessWidget> createState() => _BetaAccessWidgetState();
}

class _BetaAccessWidgetState extends State<BetaAccessWidget> {
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
    return Center(
      child: SizedBox(
          height: 100.h,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  height: 40.h,
                  width: double.infinity,
                  child: Image(
                    image: AssetImage('assets/alpha_go_icon.png'),
                    fit: BoxFit.contain,
                  ))
            ],
          )),
    );
  }
}
