import 'package:flutter/material.dart';

import 'custom_bottom_navigation.dart';

class Demo extends StatefulWidget {
  const Demo({super.key});

  @override
  State<Demo> createState() => DemoState();
}

class DemoState extends State<Demo> {
  int index = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Page: $index")),

        bottomNavigationBar: CustomBottomNav(
          currentIndex: index,
          onTap: (i) => setState(() => index = i),

          fontFamily: "Poppins",
          selectedFontSize: 14,
          unselectedFontSize: 12,

          selectedColor: Colors.blue,
          unselectedColor: Colors.grey,

          iconSize: 28,

          items: [
            BottomNavItem(icon: Icons.home, label: "Home"),
            BottomNavItem(icon: Icons.search, label: "Search"),
            BottomNavItem(icon: Icons.favorite, label: "Wish"),
            BottomNavItem(icon: Icons.person, label: "Profile"),
            // BottomNavItem(icon: Icons.app_registration, label: "App"),
            // BottomNavItem(icon: Icons.settings, label: "setting"),
            // BottomNavItem(icon: Icons.settings, label: "setting"),
          ],
        ),
    );
  }
}
