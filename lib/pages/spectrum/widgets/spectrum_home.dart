import 'dart:developer';

import 'package:alpha/theme/theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class SpectrumHome extends StatefulWidget {
  const SpectrumHome({super.key});

  @override
  State<SpectrumHome> createState() => _SpectrumHomeState();
}

class _SpectrumHomeState extends State<SpectrumHome> {
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
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                  height: 60.h,
                  width: double.infinity,
                  child: Image(
                    image: AssetImage(themeManager.isDarkMode
                        ? 'assets/spectrum_home_dark.png'
                        : 'assets/spectrum_home.jpg'),
                    fit: BoxFit.contain,
                  )),
              Text(
                "SPECTRUM\nSMART HOME",
                style: GoogleFonts.cinzel(
                    fontWeight: FontWeight.w400, fontSize: 5.sp),
                textAlign: TextAlign.center,
              ),
            ],
          )),
    );
  }
}
