import 'package:express_cart/features/home/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:express_cart/features/sign_up/sign_up_page.dart';
import '../../features/onboarding/onboarding_page.dart';
import '../../features/login/login_page.dart';
import '../../features/main/main_page.dart';
import '../../features/splash/splash_page.dart';

part 'route_path.dart';

abstract class AppRouter {
  const AppRouter._();

  static Map<String, WidgetBuilder> routes = {
    RoutePath.initial: (_) => const SplashPage(),
    RoutePath.onboarding: (_) => const OnboardingPage(),
    RoutePath.main: (_) => const MainPage(),
    RoutePath.home: (_) => const HomePage(),
    RoutePath.signUp: (_) => const SignUpPage(),
    RoutePath.login: (_) => const LoginPage(),
  };

  static Route<dynamic> generateRoutes(RouteSettings settings) {
    String? routeName = settings.name?.split('?').first;

    return CupertinoPageRoute(builder: routes[routeName] ?? (_) => const Scaffold(body: Center(child: Text('Not found'))), settings: settings);
  }
}
