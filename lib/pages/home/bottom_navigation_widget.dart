import 'package:flutter/material.dart';
import 'navigation_config.dart';

class BottomNavigatorWidget extends StatefulWidget {
  const BottomNavigatorWidget({Key? key}) : super(key: key);

  @override
  State<BottomNavigatorWidget> createState() => _BottomNavigatorWidgetState();
}

class _BottomNavigatorWidgetState extends State<BottomNavigatorWidget> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('首页'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: NavigatorBarConfig.navigationItems,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        currentIndex: _currentIndex,
      ),
    );
  }
}
