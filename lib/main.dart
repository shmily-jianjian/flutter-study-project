import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool canEntry = false;
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  }

  @override
  Widget build(BuildContext context) {
    return canEntry
        ? Scaffold(
            extendBodyBehindAppBar: true,
            appBar: AppBar(
              title: const Text('首页'),
              backgroundColor: Theme.of(context).primaryColor,
            ),
            body: const Center(
              child: Text('首页'),
            ),
          )
        : Container(
            width: double.infinity,
            height: double.infinity,
            color: const Color.fromRGBO(136, 76, 255, 0.8),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        SystemChrome.setEnabledSystemUIMode(
                            SystemUiMode.edgeToEdge);
                        setState(() {
                          canEntry = true;
                        });
                      },
                      child: const Text('进入系统'))
                ],
              ),
            ),
          );
  }
}
