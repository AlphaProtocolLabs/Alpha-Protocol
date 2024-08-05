import 'dart:developer';

import 'package:alpha/theme/theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class JoinUs extends StatefulWidget {
  const JoinUs({super.key});

  @override
  State<JoinUs> createState() => _JoinUsState();
}

class _JoinUsState extends State<JoinUs> {
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
    return Container(
      color: Colors.grey[600], // Set background color to grey 600
      padding: const EdgeInsets.all(16), // Add some padding for all sides
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'JOIN THE ALPHA COMMUNITY',
            textAlign: TextAlign.center,
            style: GoogleFonts.cinzel(
                fontWeight: FontWeight.w400,
                fontSize: 6.sp,
                color: themeManager.isDarkMode ? Colors.white : Colors.black),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'EMAIL',
                disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: themeManager.isDarkMode
                            ? Colors.white
                            : Colors.black)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: themeManager.isDarkMode
                            ? Colors.white
                            : Colors.black)),
                border: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: themeManager.isDarkMode
                            ? Colors.white
                            : Colors.black)),
                labelStyle: GoogleFonts.cinzel(
                    fontWeight: FontWeight.w400,
                    fontSize: 4.sp,
                    color:
                        themeManager.isDarkMode ? Colors.white : Colors.black),
              ),
              style: GoogleFonts.cinzel(
                  fontWeight: FontWeight.w400,
                  fontSize: 4.sp,
                  color: themeManager.isDarkMode
                      ? Colors.white
                      : Colors.black), // Text color inside the text field
            ),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              // Submit email action goes here
            },
            style: ElevatedButton.styleFrom(
              maximumSize: Size(30.w, 10.h),
              foregroundColor: Colors.white,
              backgroundColor: Colors.black, // Text color
            ),
            child: Text(
              'SUBMIT',
              style: GoogleFonts.cinzel(
                  fontWeight: FontWeight.w400,
                  fontSize: 4.sp,
                  color: Colors.white),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: const Icon(Icons.discord,
                    color: Colors.white), // Example icon with color
                onPressed: () {
                  // Discord action goes here
                },
              ),
              IconButton(
                icon: const Icon(Icons.close,
                    color: Colors.white), // Example icon with color
                onPressed: () {
                  // Close action goes here
                },
              ),
              IconButton(
                icon: const Icon(Icons.send,
                    color: Colors.white), // Example icon with color
                onPressed: () {
                  // Send action goes here
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
