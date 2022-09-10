import 'package:flutter/material.dart';
import 'package:flutter_family/pages/home/home_widget.dart';
import 'package:flutter_family/pages/map/map_widget.dart';
import 'package:flutter_family/pages/mine/mine_widget.dart';

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
    {
      'label': '我的',
      'icon': 'assets/nav_icon_my_default.png',
      'activeIcon': 'assets/nav_icon_my_selected.png',
    },
  ];

  static List<Widget> bottomNavigationBarWidgets = const [
    HomeWidget(),
    MapWidget(),
    MineWidget(),
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
