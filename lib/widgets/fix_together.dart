import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class FixTogetherWidget extends StatelessWidget {
  const FixTogetherWidget({super.key});

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
              Padding(
                padding: EdgeInsets.only(top: 2.0.sp, bottom: 2.0.sp),
                child: Image(
                  image: AssetImage(
                    "learn_1.png",
                  ),
                ),
              ),
              Text(
                "ENABLING DEVICES TO CONNECT DIRECTLY\nAND EXCHANGE DATA AS PEERS",
                style: GoogleFonts.cinzel(
                    fontWeight: FontWeight.w400, fontSize: 8.sp),
                textAlign: TextAlign.center,
              ),
              Text(
                "PEER TO PEER NETWORKING",
                style: GoogleFonts.cinzel(
                    fontWeight: FontWeight.w800, fontSize: 8.sp),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: EdgeInsets.only(top: 2.0.sp, bottom: 2.0.sp),
                child: Image(
                  image: AssetImage(
                    "learn_2.png",
                  ),
                ),
              ),
              Text(
                "EXPAND COVERAGE TO COMMON DEVICE TYPES\nIOS. ANDROID. WINDOWS. MAC OS. LINUX",
                style: GoogleFonts.cinzel(
                    fontWeight: FontWeight.w400, fontSize: 8.sp),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: EdgeInsets.only(top: 2.0.sp, bottom: 2.0.sp),
                child: Image(
                  image: AssetImage(
                    "learn_3.png",
                  ),
                ),
              ),
              Text(
                "TOKENIZED REWARD\nINCENTIVIZE NETWORK PARTICIPATION",
                style: GoogleFonts.cinzel(
                    fontWeight: FontWeight.w400, fontSize: 8.sp),
                textAlign: TextAlign.center,
              ),
              Padding(
                  padding: EdgeInsets.only(top: 2.0.sp, bottom: 2.0.sp),
                  child: Image(
                    image: AssetImage(
                      "assets/learn_4.png",
                    ),
                  )),
              Text(
                "LOCALIZED MICROGRIDS\nPRIVATE AND PUBLIC USE NETWORKS",
                style: GoogleFonts.cinzel(
                    fontWeight: FontWeight.w400, fontSize: 8.sp),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: EdgeInsets.only(top: 2.0.sp, bottom: 2.0.sp),
                child: Image(
                  image: AssetImage(
                    "assets/learn_5.png",
                  ),
                ),
              ),
              Text(
                "CONNECT LOCALIZED MICROGRIDS\nGLOBAL DECENTRALIZED NETWORK",
                style: GoogleFonts.cinzel(
                    fontWeight: FontWeight.w400, fontSize: 8.sp),
                textAlign: TextAlign.center,
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
