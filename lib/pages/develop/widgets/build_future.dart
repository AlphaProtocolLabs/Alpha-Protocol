import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class BuildFutureWidget extends StatelessWidget {
  const BuildFutureWidget({super.key});

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
                textAlign: TextAlign.center,
                'BUILDING THE\nFUTURE',
                style: GoogleFonts.cinzel(
                    fontWeight: FontWeight.w900, fontSize: 11.sp),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(3.0.sp),
              child: Text(
                "DECENTRALIZED INTERNET IS THE\nNEXT EVOLUTION OF THE WORLD\nWIDE WEB.",
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
