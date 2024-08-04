import 'dart:developer';

import 'package:alpha/theme/theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                  height: 40.h,
                  width: double.infinity,
                  child: Image(
                    image: AssetImage(themeManager.isDarkMode
                        ? 'assets/alpha_go_icon_dark.png'
                        : 'assets/alpha_go_icon.png'),
                    fit: BoxFit.contain,
                  )),
              Container(
                width: 40.w,
                child: Column(
                  children: [
                    Text(
                      "REQUEST BETA ACCESS",
                      style: GoogleFonts.cinzel(
                          fontWeight: FontWeight.w400, fontSize: 5.sp),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 2.h),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: themeManager.isDarkMode
                              ? const Color.fromARGB(121, 34, 33, 33)
                              : const Color.fromRGBO(232, 228, 228, 1.0)),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Enter your email",
                            hintStyle: GoogleFonts.cinzel(
                                fontWeight: FontWeight.w400, fontSize: 4.sp)),
                      ),
                    ),
                    SizedBox(height: 2.h),
                    SizedBox(
                      height: 7.h,
                      width: 11.w,
                      child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Submit",
                            style: GoogleFonts.cinzel(
                                fontWeight: FontWeight.w400,
                                fontSize: 4.sp,
                                color: themeManager.isDarkMode
                                    ? Colors.white
                                    : Colors.black),
                          )),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
