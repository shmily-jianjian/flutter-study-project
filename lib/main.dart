import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// TODO 明天: 路由 和 主题色

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
        ? Scaffold(
            // extendBodyBehindAppBar: true,
            appBar: AppBar(
              title: const Text('首页'),
              backgroundColor: Theme.of(context).primaryColor,
            ),
            body: const Center(
              child: Text('首页'),
            ),
          )
        : InitialWidget(changeEntry: changeEntry);
  }
}

// 真正进入系统前展示的界面
class InitialWidget extends StatelessWidget {
  const InitialWidget({Key? key, required this.changeEntry}) : super(key: key);
  final Function changeEntry;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: const Color.fromRGBO(136, 76, 255, 0.8),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
                  changeEntry();
                },
                child: const Text('进入系统'))
          ],
        ),
      ),
    );
  }
}
