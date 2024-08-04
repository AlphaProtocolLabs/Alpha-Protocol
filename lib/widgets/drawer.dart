import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    // Assuming ThemeManager is a class you've defined to handle theme-related logic
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Drawer(
      child: Container(
        // Set the width of the drawer to half of the screen width
        width: MediaQuery.of(context).size.width * 0.5,
        color: isDarkMode
            ? Colors.black
            : Colors.white, // Match the app's background color
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 20),
            Center(
              child: Image.asset(
                'assets/a${isDarkMode ? "_d" : ""}.png',
                height: 150,
              ),
            ),
            const SizedBox(height: 20),
            _drawerItem(context, 'Learn', '/information'),
            _drawerItem(context, 'Develop', '/develop'),
            _drawerItem(context, 'Network', '/network'),
            _drawerItem(context, 'Explore', '/explore'),
            //_drawerItem(context, 'Careers', '/careersPage'),
            //_drawerItem(context, 'Contact', '/contactUsPage'),
            const Spacer(), // Use Spacer to push everything up
            Divider(
              color: isDarkMode
                  ? Colors.white
                  : const Color(0xFFB4914C), // Responsive underline color
              thickness: 2,
            ),
          ],
        ),
      ),
    );
  }

  Widget _drawerItem(BuildContext context, String title, String routeName) {
    return ListTile(
      title: Text(title,
          style: TextStyle(
              color: Theme.of(context).brightness == Brightness.dark
                  ? Colors.white
                  : Colors.black)),
      onTap: () => Navigator.pushNamed(context, routeName),
    );
  }
}
