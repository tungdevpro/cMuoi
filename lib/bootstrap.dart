import 'package:core/core.dart';
import 'package:express_cart/common/app/bloc/app_bloc.dart';
import 'package:express_cart/common/app/bloc/app_state.dart';
import 'package:flutter/material.dart';
import 'package:express_cart/common/routes/routes.dart';
import 'package:express_cart/common/theme/app_theme.dart';
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
    return BlocListener<AppBloc, AppState>(
      listener: (context, state) {
        if (state.isOnBoarding) {
          AppNavigator.shared.pushNamedAndRemoveUntil(RoutePath.login);
          return;
        }

        AppNavigator.shared.pushNamedAndRemoveUntil(RoutePath.onboarding);
      },
      child: BlocBuilder<AppBloc, AppState>(
        buildWhen: (previous, current) => previous.isDark != current.isDark,
        builder: (context, state) => MaterialApp(
          title: 'Express Cart',
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
    );
    // return ;
  }
}
