import 'package:flutter/material.dart';

class MapWidget extends StatefulWidget {
  const MapWidget({Key? key}) : super(key: key);

  @override
  State<MapWidget> createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget>
    with AutomaticKeepAliveClientMixin {
  @override
  void initState() {
    super.initState();
    print('map...');
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('地图'),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
