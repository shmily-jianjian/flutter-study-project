import 'package:flutter/material.dart';
import 'package:flutter_family/routes/router_config.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: RouterConfig.initialRoute,
      onGenerateRoute: RouterConfig.onGenerateRoute,
    );
  }
}
