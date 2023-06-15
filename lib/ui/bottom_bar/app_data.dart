import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'model/bottom_navy_bar_item.dart';

class AppData{
  const AppData._();

  static List<BottomNavyBarItem> bottomNavyBarItems = [
    BottomNavyBarItem(
      "Home",
      const Icon(Icons.home),
      const Color(0xFF6F9C95),
      Colors.grey,
    ),
    BottomNavyBarItem(
      "History",
      const Icon(Icons.history),
      const Color(0xFF6F9C95),
      Colors.grey,
    ),
    BottomNavyBarItem(
      "Notification",
      const Icon(Icons.notifications),
      const Color(0xFF6F9C95),
      Colors.grey,
    ),
    BottomNavyBarItem(
      "Profile",
      const Icon(Icons.person),
      const Color(0xFF6F9C95),
      Colors.grey,
    ),
  ];
}