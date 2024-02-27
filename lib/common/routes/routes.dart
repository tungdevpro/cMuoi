import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gen_artify/features/sign_up/sign_up_page.dart';
import '../../features/getting_started/getting_started_page.dart';
import '../../features/login/login_page.dart';
import '../../features/main/main_page.dart';
import '../../features/splash/splash_page.dart';

part 'route_path.dart';

abstract class Routings {
  const Routings._();

  static Map<String, WidgetBuilder> routes = {
    RoutePath.initial: (_) => const SplashPage(),
    RoutePath.gettingStarted: (_) => const GettingStartedPage(),
    RoutePath.main: (_) => const MainPage(),
    RoutePath.signUp: (_) => const SignUpPage(),
    RoutePath.login: (_) => const LoginPage(),
  };

  static Route<dynamic> generateRoutes(RouteSettings settings) {
    String? routeName = settings.name?.split('?').first;

    return CupertinoPageRoute(builder: routes[routeName] ?? (_) => const Scaffold(body: Center(child: Text('Not found'))), settings: settings);
  }
}
