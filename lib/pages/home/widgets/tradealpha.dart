import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class TradeAlpha extends StatelessWidget {
  const TradeAlpha({super.key});

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
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'ALPHA RUNES\n\nBUY, SELL, AND TRADE BITCOIN INSCRIBED ALPHA RUNES ON LUMINEX',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        TextButton(
          onPressed: () {
            // Call to action goes here
          },
          style: TextButton.styleFrom(
            foregroundColor: Colors.black, // Text Color
          ),
          child: const Text('LUMINEX DEX'),
        ),
      ],
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: Scaffold(body: TradeAlpha()),
  ));
}
