import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:alpha/theme/theme_manager.dart';
import 'package:sizer/sizer.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, required this.scaffoldKey});
  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
  @override
  Size get preferredSize => const Size.fromHeight(
      kToolbarHeight + 2.0); // Adjusted for the underline height
}

class _CustomAppBarState extends State<CustomAppBar> {
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
    bool isWideScreen = MediaQuery.of(context).size.width >= 800;

    // Define the underline color based on the theme
    Color underlineColor =
        themeManager.isDarkMode ? Colors.white : const Color(0xFFB4914C);

    return AppBar(
      surfaceTintColor: Colors.transparent,
      backgroundColor: themeManager.isDarkMode ? Colors.black : Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.menu,
            color: themeManager.isDarkMode ? Colors.white : Colors.black),
        onPressed: () => widget.scaffoldKey.currentState?.openDrawer(),
      ),
      title: isWideScreen
          ? Row(
              children: [
                GestureDetector(
                  onTap: () => Navigator.pushNamed(context, '/'),
                  child: Image.asset(
                      'assets/alpha${themeManager.isDarkMode ? "_d" : ""}.png',
                      height: 40.0),
                ),
                const SizedBox(width: 20),
                TextButton(
                    onPressed: () => Navigator.pushNamed(
                          context,
                          '/information',
                        ),
                    child: Text("Learn",
                        style: TextStyle(
                            color: themeManager.isDarkMode
                                ? Colors.white
                                : Colors.black))),
                TextButton(
                    onPressed: () => Navigator.pushNamed(context, '/develop'),
                    child: Text("Develop",
                        style: TextStyle(
                            color: themeManager.isDarkMode
                                ? Colors.white
                                : Colors.black))),
                IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/AlphaGo");
                    },
                    constraints:
                        BoxConstraints(maxWidth: 10.w, maxHeight: 12.sp),
                    icon: Image(
                      image: AssetImage('assets/alpha_go_icon.png'),
                      fit: BoxFit.contain,
                    )),
                IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/OmegaWireless");
                    },
                    constraints:
                        BoxConstraints(maxWidth: 10.w, maxHeight: 12.sp),
                    icon: Image(
                      image: AssetImage('assets/omega_wireless_icon.png'),
                    )),
                IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/Spectrum");
                    },
                    constraints:
                        BoxConstraints(maxWidth: 10.w, maxHeight: 12.sp),
                    icon: Image(
                      image: AssetImage('assets/spectrum_icon.png'),
                    )),
                // TextButton(
                //     onPressed: () =>
                //         Navigator.pushNamed(context, '/network'),
                //     child: Text("Network",
                //         style: TextStyle(
                //             color: themeManager.isDarkMode
                //                 ? Colors.white
                //                 : Colors.black))),
                // TextButton(
                //     onPressed: () =>
                //         Navigator.pushNamed(context, '/explore'),
                //     child: Text("Explore",
                //         style: TextStyle(
                //             color: themeManager.isDarkMode
                //                 ? Colors.white
                //                 : Colors.black))),
              ],
            )
          : GestureDetector(
              onTap: () => Navigator.of(context).pushNamed('/'),
              child: Center(
                  child: Image.asset(
                      'assets/alpha${themeManager.isDarkMode ? "_d" : ""}.png',
                      height: 40.0)),
            ),
      actions: [
        IconButton(
          icon: Icon(
              themeManager.isDarkMode ? Icons.wb_sunny : Icons.brightness_2,
              color: themeManager.isDarkMode ? Colors.white : Colors.black),
          onPressed: () {
            themeManager.themeMode == ThemeMode.light
                ? themeManager.changeTheme(ThemeMode.dark)
                : themeManager.changeTheme(ThemeMode.light);
          },
        ),
      ],
      centerTitle: !isWideScreen,
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(4.0),
        child: Container(
          color: underlineColor,
          height: 1.0,
        ),
      ),
    );
  }
}
