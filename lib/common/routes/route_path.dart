part of 'routes.dart';

abstract class RoutePath {
  const RoutePath._();

  static const String initial = "/";
  static const String onboarding = "$initial" "onboarding";
  static const String main = "/main";
  static const String home = "/home";
  static const String auth = "/auth";
  static const String signUp = "$auth/sign-up";
  static const String login = "$auth/login";
  static const String profile = "/profile";
  static const String profileAccount = "/profile_account";
}

extension RouteLocationExts on String {
  String toNamed() {
    return substring(1);
  }
}
