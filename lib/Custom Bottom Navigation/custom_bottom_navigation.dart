import 'package:flutter/material.dart';

class CustomBottomNav extends StatelessWidget {
   final int currentIndex;
  final List<BottomNavItem> items;
  final ValueChanged<int> onTap;

  final Color selectedColor;
  final Color unselectedColor;
  final double selectedFontSize;
  final double unselectedFontSize;
  final String? fontFamily;
  final double iconSize;

  const CustomBottomNav({
    super.key,
    required this.currentIndex,
    required this.items,
    required this.onTap,
    this.selectedColor = Colors.blue,
    this.unselectedColor = Colors.grey,
    this.selectedFontSize = 14,
    this.unselectedFontSize = 12,
    this.fontFamily,
    this.iconSize = 26,
  }) : assert(items.length >= 2 && items.length <= 7,
  "Bottom Navigation must have 2 to 6 tabs");

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 10,
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(items.length, (index) {
          final isSelected = (index == currentIndex);
          final item = items[index];

          return GestureDetector(
            onTap: () => onTap(index),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    item.icon,
                    size: iconSize,
                    color: isSelected ? selectedColor : unselectedColor,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    item.label,
                    style: TextStyle(
                      fontSize:
                      isSelected ? selectedFontSize : unselectedFontSize,
                      fontFamily: fontFamily,
                      color: isSelected ? selectedColor : unselectedColor,
                      fontWeight: isSelected ? FontWeight.bold : null,
                    ),
                  )
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}

class BottomNavItem {
  final IconData icon;
  final String label;

  BottomNavItem({required this.icon, required this.label});
}
