import 'dart:developer';

import 'package:alpha/theme/theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class DecentralizedInfoWidget extends StatefulWidget {
  const DecentralizedInfoWidget({super.key});

  @override
  State<DecentralizedInfoWidget> createState() =>
      _DecentralizedInfoWidgetState();
}

class _DecentralizedInfoWidgetState extends State<DecentralizedInfoWidget> {
  Color boxColor = themeManager.isDarkMode
      ? const Color.fromARGB(121, 34, 33, 33)
      : const Color.fromRGBO(232, 228, 228, 1.0);
  void _themeChanged() {
    log("Theme changed");
    setState(() {
      themeManager.themeMode == ThemeMode.dark
          ? boxColor = Color.fromARGB(121, 34, 33, 33)
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
      child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              DecentralizedWidget(
                title: "DECENTRALIZED WEB NODES",
                subtitle:
                    "HOST PRIVATE NETWORKS AND\nCONNECT THE DECENTRALIZED WEB",
                boxColor: boxColor,
              ),
              DecentralizedWidget(
                title: "DECENTRALIZED IDENTIFIERS",
                subtitle: "OWN AND CONTROL YOUR IDENTITIES",
                boxColor: boxColor,
              ),
              DecentralizedWidget(
                title: "DECENTRALIZED APPLICATIONS",
                subtitle: "OWN AND CONTROL YOUR IDENTITIES",
                boxColor: boxColor,
              )
            ],
          )),
    );
  }
}

class DecentralizedWidget extends StatelessWidget {
  const DecentralizedWidget({
    super.key,
    required this.title,
    required this.subtitle,
    required this.boxColor,
  });
  final String title;
  final String subtitle;
  final Color boxColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10.0.sp),
      child: Container(
          height: 40.h,
          width: 50.w,
          decoration: BoxDecoration(
            color: boxColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                textAlign: TextAlign.center,
                title,
                style: GoogleFonts.cinzel(
                    fontWeight: FontWeight.w900, fontSize: 8.sp),
              ),
              Text(
                subtitle,
                style: GoogleFonts.cinzel(
                    fontWeight: FontWeight.w400, fontSize: 6.sp),
                textAlign: TextAlign.center,
              ),
            ],
          )),
    );
  }
}
