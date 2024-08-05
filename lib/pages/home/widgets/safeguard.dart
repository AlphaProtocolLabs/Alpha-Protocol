import 'dart:developer';

import 'package:alpha/theme/theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class Safeguard extends StatefulWidget {
  const Safeguard({super.key});

  @override
  State<Safeguard> createState() => _SafeguardState();
}

class _SafeguardState extends State<Safeguard> {
  Color boxColor = themeManager.isDarkMode
      ? const Color.fromARGB(121, 34, 33, 33)
      : const Color.fromRGBO(232, 228, 228, 1.0);
  void _themeChanged() {
    log("Theme changed");
    setState(() {
      themeManager.themeMode == ThemeMode.dark
          ? boxColor = const Color.fromARGB(121, 34, 33, 33)
          : boxColor = const Color.fromRGBO(232, 228, 228, 1.0);
    }); // Trigger a rebuild if necessary
  }

  @override
  void initState() {
    super.initState();
    themeManager.addListener(_themeChanged);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(2.0.sp),
        child: SizedBox(
            width: double.infinity,
            // height: 100.h,
            child: Column(
              children: [
                Text(
                  "SAFEGUARD YOUR",
                  style: GoogleFonts.cinzel(
                      fontWeight: FontWeight.w400, fontSize: 6.sp),
                  textAlign: TextAlign.center,
                ),
                Text(
                  textAlign: TextAlign.center,
                  "C O N N E C T I O N",
                  style: GoogleFonts.cinzel(
                      fontWeight: FontWeight.w900, fontSize: 8.sp),
                ),
                ConnectionWidget(
                  title: "",
                  subtitle:
                      "DOWNLOAD AND INSTALL THE\nALPHA PROTOCOL NETWORK (APN)\nTO YOUR DEVICE",
                  boxColor: boxColor,
                  isIcons: true,
                ),
                ConnectionWidget(
                  title: "CONFIGURE YOUR CONNECTION",
                  subtitle:
                      "HOST YOUR OWN PRIVATE NETWORK\nOR\nCONNECT TO ALPHA PROTOCOLS\nDECENTRALIZED NETWORK",
                  boxColor: boxColor,
                ),
                ConnectionWidget(
                  title:
                      "SECURE YOUR SYSTEMS\nAND\nEARN REWARDS FOR YOUR\nCONTRIBUTIONS TO THE NETWORK",
                  subtitle: "ENJOY!",
                  boxColor: boxColor,
                  isFlipped: true,
                )
              ],
            )),
      ),
    );
  }
}

class ConnectionWidget extends StatelessWidget {
  const ConnectionWidget({
    super.key,
    required this.title,
    required this.subtitle,
    required this.boxColor,
    this.isIcons = false,
    this.isFlipped = false,
  });
  final String title;
  final String subtitle;
  final Color boxColor;
  final bool isIcons;
  final bool isFlipped;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 7.0.sp, top: 3.0.sp),
      child: Container(
          height: 45.h,
          width: 50.w,
          decoration: BoxDecoration(
            color: boxColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              if (!isIcons)
                Text(
                  textAlign: TextAlign.center,
                  title,
                  style: GoogleFonts.cinzel(
                      fontWeight: isFlipped ? FontWeight.w400 : FontWeight.w900,
                      fontSize: 8.sp),
                ),
              Text(
                subtitle,
                style: GoogleFonts.cinzel(
                    fontWeight: isFlipped ? FontWeight.w900 : FontWeight.w400,
                    fontSize: 6.sp),
                textAlign: TextAlign.center,
              ),
              if (isIcons)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.apple,
                      size: 15.sp,
                    ),
                    Icon(
                      Icons.window,
                      size: 15.sp,
                    ),
                    Icon(Icons.android, size: 15.sp),
                  ],
                )
            ],
          )),
    );
  }
}
