import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  final int activeIndex;
  final void Function(int) onTabChange;

  const BottomNavBar({
    Key? key,
    required this.activeIndex,
    required this.onTabChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: GNav(
        color: Colors.grey[400],
        activeColor: Colors.grey[700],
        tabActiveBorder: Border.all(color: Colors.white),
        tabBackgroundColor: Colors.grey.shade100,
        mainAxisAlignment: MainAxisAlignment.center,
        tabBorderRadius: 12,
        onTabChange: (value) => onTabChange(value),
        gap: 5,
        padding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 20,
        ),
        tabMargin: const EdgeInsets.symmetric(horizontal: 5),
        tabs: [
          GButton(
            icon: Icons.home,
            text: 'Shop',
            active: activeIndex == 0,
          ),
          GButton(
            icon: Icons.shopping_bag_rounded,
            text: 'Cart',
            active: activeIndex == 1,
          ),
        ],
      ),
    );
  }
}
