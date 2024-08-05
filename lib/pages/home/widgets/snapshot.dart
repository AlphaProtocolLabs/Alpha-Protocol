import 'dart:developer';

import 'package:alpha/theme/theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class Snapshot extends StatefulWidget {
  const Snapshot({super.key});

  @override
  State<Snapshot> createState() => _SnapshotState();
}

class _SnapshotState extends State<Snapshot> {
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
    var screenSize = MediaQuery.of(context).size;
    bool isDesktop = screenSize.width > 600;
    double padding = 20.0; // Standard padding for the sides
    double verticalSpacing =
        screenSize.height * 0.01; // Reduced vertical spacing

    return SizedBox(
      height: screenSize.height,
      child: isDesktop
          ? Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  flex: 4,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(
                        padding, verticalSpacing, padding, verticalSpacing),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          textAlign: TextAlign.center,
                          "NETWORK SNAPSHOT",
                          style: GoogleFonts.cinzel(
                              fontWeight: FontWeight.w900, fontSize: 8.sp),
                        ),
                        SizedBox(height: verticalSpacing),
                        TextButton(
                          onPressed: () {},
                          child: Container(
                            width: 20.w,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: themeManager.isDarkMode
                                      ? Colors.white
                                      : Colors.black),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              "BECOME A NODE",
                              style: GoogleFonts.cinzel(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 6.sp,
                                  color: themeManager.isDarkMode
                                      ? Colors.white
                                      : Colors.black),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Padding(
                    padding: EdgeInsets.all(padding),
                    child: snapshotData(context),
                  ),
                ),
              ],
            )
          : Padding(
              padding: EdgeInsets.all(padding),
              child: Column(
                mainAxisAlignment:
                    MainAxisAlignment.spaceEvenly, // Evenly distribute space
                children: [
                  const Text(
                    'NETWORK SNAPSHOT',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  snapshotData(context),
                  TextButton(
                    onPressed: () {},
                    child: Container(
                      width: 20.w,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: themeManager.isDarkMode
                                ? Colors.white
                                : Colors.black),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        "BECOME A NODE",
                        style: GoogleFonts.cinzel(
                            fontWeight: FontWeight.w400,
                            fontSize: 6.sp,
                            color: themeManager.isDarkMode
                                ? Colors.white
                                : Colors.black),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
    );
  }

  Widget snapshotData(BuildContext context) {
    List<Map<String, String>> data = [
      {
        'title': 'TOTAL NETWORK NODES',
        'value': '000,011',
      },
      {
        'title': 'NETWORK BANDWIDTH',
        'value': '11.11 GB/S',
      },
      {
        'title': 'CLOUD DATABASE',
        'value': '5,000 TB',
      },
    ];

    return Column(
      mainAxisAlignment:
          MainAxisAlignment.spaceAround, // Distribute spacing evenly
      children: data.map((item) {
        return Padding(
          padding: const EdgeInsets.symmetric(
              vertical: 10.0), // Adjusted padding between elements
          child: Column(
            children: [
              Text(
                item['title']!,
                style: GoogleFonts.cinzel(
                    fontWeight: FontWeight.w400, fontSize: 6.sp),
              ),
              const SizedBox(
                  height: 5), // Reduced space between title and value
              Text(
                item['value']!,
                style: GoogleFonts.cinzel(
                    fontWeight: FontWeight.w900, fontSize: 8.sp),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}
