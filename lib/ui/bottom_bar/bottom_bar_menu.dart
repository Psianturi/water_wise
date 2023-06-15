import 'package:animations/animations.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:water_supply/ui/home/home__screen.dart';
import 'package:water_supply/ui/notification_screen/notification_screen.dart';
import 'package:water_supply/ui/profile_screen/profile_screen.dart';

import '../view_bill_screen/view_bill_screen.dart';
import 'app_data.dart';

class BottomBarMenu extends StatefulWidget {
  const BottomBarMenu({Key? key}) : super(key: key);

  static List<Widget> screens = [
    const HomeScreen(),
    const ViewBillScreen(),
    const NotificationScreen(),
    const ProfileScreen( )
  ];

  @override
  State<BottomBarMenu> createState() => _BottomBarMenuState();
}

class _BottomBarMenuState extends State<BottomBarMenu> {
  int newIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavyBar(
          itemCornerRadius: 10,
          selectedIndex: newIndex,
          items: AppData.bottomNavyBarItems
              .map(
                (item) => BottomNavyBarItem(
              icon: item.icon,
              title: Text(item.title),
              activeColor: item.activeColor,
              inactiveColor: item.inActiveColor,
            ),
          ) .toList(),
          onItemSelected: (currentIndex) {
            newIndex = currentIndex;
            setState(() {});
          },
        ),
        body: PageTransitionSwitcher(
          duration: const Duration(seconds: 1),
          transitionBuilder: (
              Widget child,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              ) {
            return FadeThroughTransition(
              animation: animation,
              secondaryAnimation: secondaryAnimation,
              child: child,
            );
          },
          child: BottomBarMenu.screens[newIndex],
        ),
      ),
    );
  }

}
