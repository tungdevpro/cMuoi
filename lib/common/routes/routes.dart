import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../features/getting_started/getting_started_page.dart';
import '../../features/splash/splash_page.dart';

part 'route_path.dart';

abstract class Routings {
  const Routings._();

  static Map<String, WidgetBuilder> routes = {
    RoutePath.initial: (_) => const SplashPage(),
    RoutePath.gettingStarted: (_) => const GettingStartedPage(),
  };

  static Route<dynamic> generateRoutes(RouteSettings settings) {
    String? routeName = settings.name?.split('?').first;

    return CupertinoPageRoute(
        builder: routes[routeName] ??
            (_) => const Scaffold(body: Center(child: Text('Not found'))),
        settings: settings);
  }
}
