import 'package:cmuoi/di/di.dart';
import 'package:core/core.dart';
import 'package:domain/enum/auth.dart';
import 'package:cmuoi/common/app/bloc/app_bloc.dart';
import 'package:cmuoi/common/app/bloc/app_state.dart';
import 'package:cmuoi/common/auth/bloc/auth_bloc.dart';
import 'package:cmuoi/common/auth/bloc/auth_state.dart';
import 'package:domain/environment/app_network_config.dart';
import 'package:domain/environment/network.dart';
import 'package:flutter/material.dart';
import 'package:cmuoi/common/routes/routes.dart';
import 'package:cmuoi/common/theme/app_theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'common/constants/config_localization.dart';
import 'common/routes/router_observer.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        switch (state.status) {
          case AuthenticationStatus.unknown:
            break;
          case AuthenticationStatus.authenticated:
            AppNavigator.shared.pushNamed(RoutePath.main);
            break;
          case AuthenticationStatus.unauthenticated:
            AppNavigator.shared.pushNamed(RoutePath.login);
            break;
        }
      },
      child: BlocListener<AppBloc, AppState>(
        // listenWhen: (),
        listener: (context, state) {
          if (!state.isOnBoarding) {
            AppNavigator.shared.pushNamedAndRemoveUntil(RoutePath.onboarding);
            return;
          }
          // AppNavigator.shared.pushNamedAndRemoveUntil(RoutePath.login);
        },
        child: BlocBuilder<AppBloc, AppState>(
          buildWhen: (previous, current) => previous.isDark != current.isDark,
          builder: (context, state) => MaterialApp(
            title: (di<Network>().network as AppNetworkConfig).brandName,
            navigatorKey: AppNavigator.shared.navigatorKey,
            debugShowCheckedModeBanner: false,
            localizationsDelegates: ConfigLocalization.loads(),
            supportedLocales: ConfigLocalization.supportedLocales(),
            theme: state.isDark == true ? AppTheme.dark : AppTheme.light,
            themeMode: ThemeMode.light,
            darkTheme: AppTheme.dark,
            initialRoute: RoutePath.initial,
            onGenerateRoute: AppRouter.generateRoutes,
            navigatorObservers: [CustomRouterObserver()],
            builder: (context, child) {
              return AppOverlayLoading.instance().build().call(context, child);
            },
          ),
        ),
      ),
    );
  }
}
