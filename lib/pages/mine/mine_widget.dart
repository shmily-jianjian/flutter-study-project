import 'package:flutter/material.dart';

class MineWidget extends StatefulWidget {
  const MineWidget({Key? key}) : super(key: key);

  @override
  State<MineWidget> createState() => _MineWidgetState();
}

class _MineWidgetState extends State<MineWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('我的'),
      ),
    );
  }
}
