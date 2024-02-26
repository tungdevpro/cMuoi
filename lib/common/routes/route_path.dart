part of 'routes.dart';

abstract class RoutePath {
  const RoutePath._();

  static const String initial = "/";
  static const String gettingStarted = "$initial" "getting-started";
  static const String main = "/main";
  static const String home = "/home";
  static const String auth = "/auth";
  static const String signUp = "$auth/sign-up";
}

extension RouteLocationExts on String {
  String toNamed() {
    return substring(1);
  }
}
