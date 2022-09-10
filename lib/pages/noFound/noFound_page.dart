import 'package:flutter/material.dart';

class NoFoundWidget extends StatelessWidget {
  const NoFoundWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('404')),
    );
  }
}
