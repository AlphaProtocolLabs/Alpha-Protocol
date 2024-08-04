import 'dart:developer';

import 'package:alpha/theme/theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class FixTogetherWidget extends StatefulWidget {
  const FixTogetherWidget({super.key});

  @override
  State<FixTogetherWidget> createState() => _FixTogetherWidgetState();
}

class _FixTogetherWidgetState extends State<FixTogetherWidget> {
  void _themeChanged() {
    log("Theme changed");
    setState(() {}); // Trigger a rebuild if necessary
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    themeManager.addListener(_themeChanged);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // Main content goes here
            children: [
              Padding(
                padding: EdgeInsets.all(8.0.sp),
                child: Text(
                  "TOGETHER, WE WILL FIX IT",
                  style: GoogleFonts.cinzel(
                      fontWeight: FontWeight.w900, fontSize: 12.sp),
                ),
              ),
              LearnImageWidget(
                imagePath: themeManager.isDarkMode
                    ? "assets/learn_1_dark.png"
                    : "assets/learn_1.png",
              ),
              const SecondaryHeading(
                text:
                    "ENABLING DEVICES TO CONNECT DIRECTLY\nAND EXCHANGE DATA AS PEERS",
              ),
              const SecondaryHeading(
                text: "PEER TO PEER NETWORKING",
                isBold: true,
              ),
              LearnImageWidget(
                imagePath: themeManager.isDarkMode
                    ? "assets/learn_2_dark.png"
                    : "assets/learn_2.png",
              ),
              const SecondaryHeading(
                text:
                    "EXPAND COVERAGE TO COMMON DEVICE TYPES\nIOS. ANDROID. WINDOWS. MAC OS. LINUX",
              ),
              LearnImageWidget(
                imagePath: themeManager.isDarkMode
                    ? "assets/learn_3_dark.png"
                    : "assets/learn_3.png",
              ),
              const SecondaryHeading(
                text: "TOKENIZED REWARD\nINCENTIVIZE NETWORK PARTICIPATION",
              ),
              LearnImageWidget(
                imagePath: themeManager.isDarkMode
                    ? "assets/learn_4_dark.png"
                    : "assets/learn_4.png",
              ),
              const SecondaryHeading(
                text: "LOCALIZED MICROGRIDS\nPRIVATE AND PUBLIC USE NETWORKS",
              ),
              LearnImageWidget(
                imagePath: themeManager.isDarkMode
                    ? "assets/learn_5_dark.png"
                    : "assets/learn_5.png",
              ),
              const SecondaryHeading(
                text:
                    "CONNECT LOCALIZED MICROGRIDS\nGLOBAL DECENTRALIZED NETWORK",
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 2.0.sp),
              ),
              // Add more content here as needed
            ],
          ),
        ),
      ),
    );
  }
}

class SecondaryHeading extends StatelessWidget {
  const SecondaryHeading({
    super.key,
    this.isBold = false,
    required this.text,
  });
  final bool isBold;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.cinzel(
          fontWeight: isBold ? FontWeight.w800 : FontWeight.w400,
          fontSize: 8.sp),
      textAlign: TextAlign.center,
    );
  }
}

class LearnImageWidget extends StatelessWidget {
  const LearnImageWidget({
    super.key,
    required this.imagePath,
  });
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 2.0.sp, bottom: 2.0.sp),
      child: SizedBox(
        height: 20.h,
        width: 15.w,
        child: Image(
          fit: BoxFit.contain,
          image: AssetImage(
            imagePath,
          ),
        ),
      ),
    );
  }
}
