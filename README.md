# Custom Bottom Navigation Bar (Flutter)

A lightweight, flexible, and dependency-free **custom Bottom Navigation Bar**
for Flutter applications.

Designed for full control over **icons, labels, colors, fonts, and sizes** —
ideal for modern apps that need more customization than Flutter’s default
`BottomNavigationBar`.

---

## ✨ Features

🧭 Custom bottom navigation bar  
🎨 Selected & unselected color customization  
🔠 Custom font family support  
📐 Adjustable icon & text sizes  
🧩 Simple data model (`BottomNavItem`)  
⚡ Lightweight & fast (pure Flutter)  
❌ No third-party dependencies  
📱 Supports 2–6 tabs  

---

## ✨ Preview



https://github.com/user-attachments/assets/765ff563-e9d2-46a0-936f-5f0bba04d2f7


---

## ✨ Installation
Add this to your package's pubspec.yaml file:
```
dependencies:
  custom_bottom_nav:
    path: ../custom_bottom_nav
```
▶️ From GitHub
```
dependencies:
  custom_bottom_nav:
    git:
      url: https://github.com/yourusername/custom_bottom_nav.git
```
Then Run:
```
flutter pub get
```
## 📁 Folder Structure
```
custom_bottom_nav/
│
├── lib/
│   └── custom_bottom_nav.dart
│
├── example/
│   └── lib/
│       └── main.dart
│
├── screenshots/
│   └── custom_bottom_nav.png
│
└── README.md

  ```
## 🚀 Usage (Demo App)


```
import 'package:flutter/material.dart';
import 'custom_bottom_nav.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  final items = [
    BottomNavItem(icon: Icons.home, label: 'Home'),
    BottomNavItem(icon: Icons.search, label: 'Search'),
    BottomNavItem(icon: Icons.person, label: 'Profile'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Selected Tab: $currentIndex',
          style: const TextStyle(fontSize: 24),
        ),
      ),
      bottomNavigationBar: CustomBottomNav(
        currentIndex: currentIndex,
        items: items,
        onTap: (index) {
          setState(() => currentIndex = index);
        },
        selectedColor: Colors.blue,
        unselectedColor: Colors.grey,
        selectedFontSize: 14,
        unselectedFontSize: 12,
        iconSize: 26,
      ),
    );
  }
}
```

##📦 BottomNavItem Model
```
class BottomNavItem {
  final IconData icon;
  final String label;

  BottomNavItem({
    required this.icon,
    required this.label,
  });
}
```
## 📜 License
MIT License
```
Copyright (c) 2025 Excelsior Technologies

Permission is hereby granted, free of charge, to any person obtaining a copy  
of this software and associated documentation files (the "Software"), to deal  
in the Software without restriction, including without limitation the rights  
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell  
copies of the Software, and to permit persons to whom the Software is  
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all  
copies or substantial portions of the Software.
