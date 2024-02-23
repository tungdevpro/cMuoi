import 'package:core/core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../features/getting_started/getting_started_page.dart';
import '../../features/main/main_page.dart';
import '../../features/splash/splash_page.dart';

part 'route_path.dart';

abstract class Routings {
  const Routings._();

  static GoRouter get router => GoRouter(
        navigatorKey: AppNavigator.instance().navigatorKey,
        routes: <RouteBase>[
          GoRoute(
            path: RoutePath.initial,
            builder: (BuildContext context, GoRouterState state) {
              return const SplashPage();
            },
            // routes: <RouteBase>[
            //   GoRoute(
            //     path: 'details',
            //     builder: (BuildContext context, GoRouterState state) {
            //       return const DetailsScreen();
            //     },
            //   ),
            // ],
          ),
          GoRoute(
            path: RoutePath.main,
            name: RoutePath.main.toNamed(),
            builder: (BuildContext context, GoRouterState state) {
              return const MainPage();
            },
          ),
        ],
        errorBuilder: (context, state) => Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: true,
            title: const Text("Error Screen"),
          ),
          body: Center(
            child: ElevatedButton(
              onPressed: () => context.go("/"),
              child: const Text("Go to home page"),
            ),
          ),
        ),
      );

  // static Map<String, WidgetBuilder> routes = {
  //   RoutePath.initial: (_) => const SplashPage(),
  //   RoutePath.gettingStarted: (_) => const GettingStartedPage(),
  // };

  // static Route<dynamic> generateRoutes(RouteSettings settings) {
  //   String? routeName = settings.name?.split('?').first;

  //   return CupertinoPageRoute(
  //       builder: routes[routeName] ??
  //           (_) => const Scaffold(body: Center(child: Text('Not found'))),
  //       settings: settings);
  // }
}
