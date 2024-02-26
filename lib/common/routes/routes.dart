import 'dart:developer';

import 'package:core/core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gen_artify/features/sign_up/sign_up_page.dart';
import 'package:go_router/go_router.dart';
import '../../features/main/main_page.dart';
import '../../features/splash/splash_page.dart';

part 'route_path.dart';

abstract class Routings {
  const Routings._();

  static GoRouter get router => GoRouter(
        navigatorKey: AppNavigator.instance().navigatorKey,
        initialLocation: RoutePath.main,
        observers: <NavigatorObserver>[
          GoRouterObserver(),
        ],
        routes: <RouteBase>[
          GoRoute(
            path: RoutePath.initial,
            builder: (BuildContext context, GoRouterState state) {
              return const SplashPage();
            },
          ),
          GoRoute(
            path: RoutePath.main,
            name: RoutePath.main.toNamed(),
            builder: (BuildContext context, GoRouterState state) {
              return const MainPage();
            },
          ),
          GoRoute(
            path: RoutePath.auth,
            name: RoutePath.auth.toNamed(),
            builder: (BuildContext context, GoRouterState state) {
              return const Scaffold();
            },
          ),
          GoRoute(
            path: RoutePath.signUp,
            builder: (context, state) => Scaffold(),
          )
        ],
        errorBuilder: (context, state) => Scaffold(
          appBar: AppBar(automaticallyImplyLeading: true, title: const Text("Error Screen")),
          body: Center(
            child: ElevatedButton(
              onPressed: () => context.go("/"),
              child: const Text("Go to home page"),
            ),
          ),
        ),
      );
}

class GoRouterObserver extends NavigatorObserver {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    if (kDebugMode) log('didPush: ${route.settings.name}');
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    if (kDebugMode) log('didPop: ${route.settings.name}');
  }

  @override
  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) {
    if (kDebugMode) log('didRemove: ${route.settings.name}');
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    if (kDebugMode) log('didReplace: ${newRoute?.settings.name}');
  }
}
