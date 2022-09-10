import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_family/pages/home/bottom_navigation_widget.dart';
import 'package:flutter_family/pages/home/initial_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool canEntry = false;

  void changeEntry() {
    setState(() {
      canEntry = true;
    });
  }

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  }

  @override
  Widget build(BuildContext context) {
    return canEntry
        ? const BottomNavigatorWidget()
        : InitialWidget(changeEntry: changeEntry);
  }
}
