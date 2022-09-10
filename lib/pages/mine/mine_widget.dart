import 'package:flutter/material.dart';

class MineWidget extends StatefulWidget {
  const MineWidget({Key? key}) : super(key: key);

  @override
  State<MineWidget> createState() => _MineWidgetState();
}

class _MineWidgetState extends State<MineWidget>
    with AutomaticKeepAliveClientMixin {
  @override
  void initState() {
    super.initState();
    print('mine...');
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('我的'),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
