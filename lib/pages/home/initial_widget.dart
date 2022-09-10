// 真正进入系统前展示的界面
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InitialWidget extends StatelessWidget {
  const InitialWidget({Key? key, required this.changeEntry}) : super(key: key);
  final Function changeEntry;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
        Color.fromRGBO(136, 76, 255, 0.8),
        Color.fromARGB(204, 255, 76, 100)
      ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 44,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(204, 255, 76, 100),
                      Color.fromRGBO(136, 76, 255, 0.8),
                    ],
                  )),
              child: TextButton(
                  onPressed: () {
                    SystemChrome.setEnabledSystemUIMode(
                        SystemUiMode.edgeToEdge);
                    changeEntry();
                  },
                  child: const Text(
                    '进入系统',
                    style: TextStyle(color: Colors.orange),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
