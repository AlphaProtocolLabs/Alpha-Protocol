import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class InternetBrokenWidget extends StatelessWidget {
  const InternetBrokenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: double.infinity,
        height: 100.h,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // Main content goes here
          children: [
            Padding(
              padding: EdgeInsets.all(3.0.sp),
              child: Text(
                'THE INTERNET IS BROKEN',
                style: GoogleFonts.cinzel(
                    fontWeight: FontWeight.w900, fontSize: 11.sp),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(3.0.sp),
              child: Text(
                "TODAY THE WORLD WIDE WEB IS\nCONTROLLED BY AN EXTREMELY\nCONCENTRATED GROUP OF\nCORPORATIONS WHO USE THEIR\nMONOPOLIZATION OF ACCESS TO\nSENSOR, SERVILE, AND PROFIT FROM\nTHE INDIVIDUALS WHO USE IT.",
                style: GoogleFonts.cinzel(
                    fontWeight: FontWeight.w400, fontSize: 7.sp),
                textAlign: TextAlign.center,
              ),
            ),

            // Add more content here as needed
          ],
        ),
      ),
    );
  }
}
