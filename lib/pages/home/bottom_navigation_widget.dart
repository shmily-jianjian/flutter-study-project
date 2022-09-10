import 'package:flutter/material.dart';
import 'navigation_config.dart';

class BottomNavigatorWidget extends StatefulWidget {
  const BottomNavigatorWidget({Key? key}) : super(key: key);

  @override
  State<BottomNavigatorWidget> createState() => _BottomNavigatorWidgetState();
}

class _BottomNavigatorWidgetState extends State<BottomNavigatorWidget> {
  int _currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController =
        PageController(initialPage: _currentIndex, keepPage: true);
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: NavigatorBarConfig.navigationItems,
        onTap: (index) {
          _pageController.jumpToPage(index);
          setState(() {
            _currentIndex = index;
          });
        },
        currentIndex: _currentIndex,
      ),
      body: PageView.builder(
        physics: const NeverScrollableScrollPhysics(),
        controller: _pageController,
        itemCount: NavigatorBarConfig.bottomNavigationBarWidgets.length,
        onPageChanged: (index) {
          _pageController.jumpToPage(index);
          setState(() {
            _currentIndex = index;
          });
        },
        itemBuilder: (context, index) =>
            NavigatorBarConfig.bottomNavigationBarWidgets.elementAt(index),
      ),
    );
  }
}
