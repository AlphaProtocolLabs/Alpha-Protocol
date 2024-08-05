import 'dart:developer';

import 'package:alpha/theme/theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class TradeAlpha extends StatefulWidget {
  const TradeAlpha({super.key});

  @override
  State<TradeAlpha> createState() => _TradeAlphaState();
}

class _TradeAlphaState extends State<TradeAlpha> {
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
    bool isDesktop = MediaQuery.of(context).size.width > 600;
    double screenHeight = MediaQuery.of(context).size.height;

    // Set different image sizes for mobile and desktop
    double imageHeight = isDesktop ? 40.h : 30.h; // Larger on mobile
    double imageWidth = imageHeight * 4 / 3; // Maintain 4:3 aspect ratio

    // Use a ternary operator to decide between Row (desktop) and Column (mobile)
    Widget content = isDesktop
        ? Row(
            crossAxisAlignment: CrossAxisAlignment
                .center, // Align items vertically in the center
            children: [
              Expanded(
                child: imageContainer(imageHeight, imageWidth),
              ),
              Expanded(
                child: textAndButton(),
              ),
            ],
          )
        : Column(
            children: [
              imageContainer(imageHeight, imageWidth),
              textAndButton(),
            ],
          );

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxHeight: screenHeight *
              0.5, // Limit the height to 50% of the screen height
        ),
        child: content,
      ),
    );
  }

  Widget imageContainer(double height, double width) {
    return Center(
      child: Container(
        height: height,
        width: width, // Specify width to maintain aspect ratio
        decoration: BoxDecoration(
          color: Colors.grey[300], // Placeholder color for the image
          borderRadius: BorderRadius.circular(12), // Rounded corners
        ),
      ),
    );
  }

  Widget textAndButton() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                'ALPHA RUNES',
                style: GoogleFonts.cinzel(
                    fontWeight: FontWeight.w900, fontSize: 8.sp),
                textAlign: TextAlign.center,
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: GoogleFonts.cinzel(
                    fontSize: 6.sp,
                    color:
                        themeManager.isDarkMode ? Colors.white : Colors.black,
                  ),
                  children: const <TextSpan>[
                    TextSpan(
                        text: 'BUY, SELL, AND TRADE BITCOIN INSCRIBED',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                        )),
                    TextSpan(
                        text: ' ALPHA RUNES ',
                        style: TextStyle(fontWeight: FontWeight.w800)),
                    TextSpan(
                        text: 'ON LUMINEX',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Container(
            width: 20.w,
            decoration: BoxDecoration(
              border: Border.all(
                  color: themeManager.isDarkMode ? Colors.white : Colors.black),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              "LUMINEX DEX",
              style: GoogleFonts.cinzel(
                  fontWeight: FontWeight.w400,
                  fontSize: 6.sp,
                  color: themeManager.isDarkMode ? Colors.white : Colors.black),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}
