import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:alpha/theme/theme_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class HeroWidget extends StatefulWidget {
  const HeroWidget({
    super.key,
    required this.pageController,
    required this.firstFoldHeight,
  });
  final PageController pageController;
  final double firstFoldHeight;

  @override
  State<HeroWidget> createState() => _HeroWidgetState();
}

class _HeroWidgetState extends State<HeroWidget> {
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
    return Column(
      children: [
        SizedBox(
            height: widget.firstFoldHeight *
                0.5, // 70% of the first fold height for the hero image
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "WHERE THE WEB",
                  style: GoogleFonts.cinzel(
                      fontWeight: FontWeight.w400, fontSize: 11.sp),
                  textAlign: TextAlign.center,
                ),
                Text(
                  'B E G I N S',
                  style: GoogleFonts.cinzel(
                      fontWeight: FontWeight.w800, fontSize: 14.sp),
                  textAlign: TextAlign.center,
                ),
                Text(
                  'ALPHA PROTOCOL IS A\nDECENTRALIZED WEB SOLUTION\nWITH BITCOIN INCENTIVES',
                  style: GoogleFonts.cinzel(
                      fontWeight: FontWeight.w400, fontSize: 6.sp),
                  textAlign: TextAlign.center,
                ),
              ],
            )),
        SizedBox(
            height: 0.2 * widget.firstFoldHeight,
            child: Center(
                child: TextButton(
                    onPressed: () {},
                    child: Container(
                      width: 15.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                              color: themeManager.isDarkMode
                                  ? Colors.white
                                  : Colors.black,
                              width: 2)),
                      child: Text(
                        "ENTER",
                        style: GoogleFonts.cinzel(
                            fontWeight: FontWeight.w400,
                            fontSize: 7.sp,
                            color: themeManager.isDarkMode
                                ? Colors.white
                                : Colors.black),
                        textAlign: TextAlign.center,
                      ),
                    )))),
        Column(
          children: [
            Text(
              'BETA PROJECTS',
              style: GoogleFonts.cinzel(
                  fontWeight: FontWeight.w400, fontSize: 6.sp),
              textAlign: TextAlign.center,
            ),
            Container(
              height: widget.firstFoldHeight *
                  0.3, // 30% of the first fold height for the carousel
              color: themeManager.isDarkMode ? Colors.black : Colors.white,
              child: PageView.builder(
                controller: widget.pageController,
                itemCount: 99999, // Consider reducing this for practicality
                itemBuilder: (context, index) {
                  List<List<String>> imgPaths = [
                    [
                      'assets/alpha_go_icon.png',
                      'assets/alpha_go_icon_dark.png',
                    ],
                    [
                      'assets/omega_wireless_icon.png',
                      'assets/omega_wireless_icon_dark.png',
                    ],
                    [
                      'assets/spectrum_icon.png',
                      'assets/spectrum_icon_dark.png'
                    ]
                  ];
                  List<String> routes = [
                    '/AlphaGo',
                    '/OmegaWireless',
                    '/Spectrum'
                  ];

                  return InkWell(
                    onTap: () async {
                      Navigator.pushNamed(context, routes[index % 3]);
                    },
                    child: Image(
                      image: AssetImage(themeManager.isDarkMode
                          ? imgPaths[index % 3][1]
                          : imgPaths[index % 3][0]),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
