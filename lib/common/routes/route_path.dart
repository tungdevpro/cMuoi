part of 'routes.dart';

abstract class RoutePath {
  const RoutePath._();

  static const String initial = "/";
  static const String gettingStarted = "$initial" "getting-started";
  static const String main = "/main";
  static const String home = "/home";
}

extension RouteLocationExts on String {
  String toNamed() {
    return substring(1);
  }
}
