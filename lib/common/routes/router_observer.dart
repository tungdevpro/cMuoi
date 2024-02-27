import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CustomRouterObserver extends NavigatorObserver {
  @override
  void didPop(Route route, Route? previousRoute) {
    if (kDebugMode) log("[didPop]: ${route.settings.name}");
  }

  @override
  void didPush(Route route, Route? previousRoute) {
    if (kDebugMode) log("[didPush]: ${route.settings.name}");
  }

  @override
  void didRemove(Route route, Route? previousRoute) {
    if (kDebugMode) log("[didRemove]: ${route.settings.name}");
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    if (kDebugMode) log("[didReplace]: ${newRoute?.settings.name}");
  }
}
