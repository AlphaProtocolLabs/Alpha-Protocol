import 'dart:developer';

import 'package:alpha/theme/theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class SpectrumWidget extends StatefulWidget {
  const SpectrumWidget({super.key});

  @override
  State<SpectrumWidget> createState() => _SpectrumWidgetState();
}

class _SpectrumWidgetState extends State<SpectrumWidget> {
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
          height: 90.h,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(),
              const Spacer(),
              SizedBox(
                  height: 40.h,
                  width: double.infinity,
                  child: Image(
                    image: AssetImage(themeManager.isDarkMode
                        ? 'assets/spectrum_icon_dark.png'
                        : 'assets/spectrum_icon.png'),
                    fit: BoxFit.contain,
                  )),
              Text(
                "DECENTRALIZED NETWORK INFRASTRUCTURE FOR\nTHE MODERN HUMAN",
                style: GoogleFonts.cinzel(
                    fontWeight: FontWeight.w400, fontSize: 5.sp),
                textAlign: TextAlign.center,
              ),
              const Spacer(),
              Text(
                "ALL FOR ONE AND ONE FOR ALL",
                style: GoogleFonts.cinzel(
                    fontWeight: FontWeight.w400, fontSize: 5.sp),
                textAlign: TextAlign.center,
              ),
            ],
          )),
    );
  }
}
