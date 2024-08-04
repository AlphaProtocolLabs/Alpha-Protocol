import 'package:flutter/material.dart';
import 'package:alpha/theme/theme_manager.dart';
import 'package:url_launcher/url_launcher.dart';

class HeroWidget extends StatelessWidget {
  final PageController pageController;
  final double firstFoldHeight;

  const HeroWidget({
    super.key,
    required this.pageController,
    required this.firstFoldHeight,
  });

  Future<void> _openWebsiteInWebView(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url),
          mode: LaunchMode.inAppWebView,
          webViewConfiguration:
              const WebViewConfiguration(enableJavaScript: true));
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            height: firstFoldHeight *
                0.7, // 70% of the first fold height for the hero image
            child: Image(
              image: AssetImage(
                'assets/hero_image${themeManager.isDarkMode ? "_d" : ""}.png',
              ),
              fit: BoxFit.cover,
            )),
        Container(
          height: firstFoldHeight *
              0.3, // 30% of the first fold height for the carousel
          color: themeManager.isDarkMode ? Colors.black : Colors.white,
          child: PageView.builder(
            controller: pageController,
            itemCount: 10000, // Consider reducing this for practicality
            itemBuilder: (context, index) {
              final logoIndex = index % 3;
              final logoImagePath =
                  'assets/${(logoIndex + 1)}${themeManager.isDarkMode ? "d" : ""}.png';
              final urls = [
                'https://go.alphaprotocol.network',
                'https://powerclubglobal.com/spectrum',
                'https://powerclubglobal.com/omegawireless',
              ];

              return InkWell(
                onTap: () async {
                  if (urls.length > logoIndex) {
                    await _openWebsiteInWebView(urls[logoIndex]);
                  }
                },
                child: Image.asset(logoImagePath, width: 100.0),
              );
            },
          ),
        ),
      ],
    );
  }
}
