import 'package:cmuoi/ui/coffee/coffee_page.dart';
import 'package:cmuoi/ui/cover_place/cover_place_page.dart';
import 'package:cmuoi/ui/home/home_page.dart';
import 'package:cmuoi/ui/profile/profile_page.dart';
import 'package:cmuoi/ui/profile_account/profile_account_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cmuoi/ui/sign_up/sign_up_page.dart';
import '../../ui/onboarding/onboarding_page.dart';
import '../../ui/login/login_page.dart';
import '../../ui/main/main_page.dart';
import '../../ui/splash/splash_page.dart';

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
    RoutePath.profile: (_) => const ProfilePage(),
    RoutePath.profileAccount: const ProfileAccountPage()._toBuilder(),
    RoutePath.coffee: const CoffeePage()._toBuilder(),
    RoutePath.coverPlace: const CoverPlacePage()._toBuilder(),
  };

  static Route<dynamic> generateRoutes(RouteSettings settings) {
    String? routeName = settings.name?.split('?').first;

    return CupertinoPageRoute(builder: routes[routeName] ?? (_) => const Scaffold(body: Center(child: Text('Not found'))), settings: settings);
  }
}

extension on Widget {
  WidgetBuilder _toBuilder() {
    return (BuildContext context) => this;
  }
}
