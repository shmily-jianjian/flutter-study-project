import 'package:flutter/material.dart';
import 'package:flutter_family/pages/home/home_page.dart';
import 'package:flutter_family/pages/noFound/noFound_page.dart';
import 'package:flutter_family/pages/other/other_page.dart';

class RouterConfig {
  static String homePath = 'home';
  static String otherPath = 'other';
  static String noFoundPath = 'noFound';

  static String initialRoute = homePath;

  static Map<String, WidgetBuilder> routes = {
    homePath: (context) => const HomePage(),
    otherPath: (context) => const OtherWidget(),
    noFoundPath: (context) => const NoFoundWidget(),
  };

  // 路由拦截器
  static Route onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      settings: settings,
      builder: (context) {
        String? name = settings.name;
        if (routes[name] == null) {
          return routes[noFoundPath]!(context);
        }
        return routes[name]!(context);
      },
    );
  }
}
