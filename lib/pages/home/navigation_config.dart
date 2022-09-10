import 'package:flutter/material.dart';

class NavigatorBarConfig {
  static double iconWidth = 24;
  static double iconHeigth = 24;

  static List<Map<String, String>> navigationItemsConfig = [
    {
      'label': '首页',
      'icon': 'assets/nav_icon_home_default.png',
      'activeIcon': 'assets/nav_icon_home_selected.png',
    },
    {
      'label': '地图',
      'icon': 'assets/nav_icon_navigation_default.png',
      'activeIcon': 'assets/nav_icon_navigation_selected.png',
    },
  ];

  static BottomNavigationBarItem getBottomNavItem(
      String label, String defaultIcon, String activeIcon) {
    return BottomNavigationBarItem(
      label: label,
      icon: Image.asset(defaultIcon, width: iconWidth, height: iconHeigth),
      activeIcon: Image.asset(activeIcon, width: iconWidth, height: iconHeigth),
    );
  }

  static List<BottomNavigationBarItem> navigationItems = navigationItemsConfig
      .map((e) => getBottomNavItem(e['label']!, e['icon']!, e['activeIcon']!))
      .toList();
}
