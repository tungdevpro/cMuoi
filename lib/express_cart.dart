import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:express_cart/common/routes/routes.dart';
import 'package:express_cart/common/theme/app_theme.dart';

import 'common/constants/config_localization.dart';
import 'common/routes/router_observer.dart';

class GenArtify extends StatefulWidget {
  const GenArtify({super.key});

  @override
  State<GenArtify> createState() => _GenArtifyState();
}

class _GenArtifyState extends State<GenArtify> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gen Artify',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: ConfigLocalization.loads(),
      supportedLocales: ConfigLocalization.supportedLocales(),
      theme: AppTheme.light,
      themeMode: ThemeMode.light,
      darkTheme: AppTheme.dark,
      initialRoute: RoutePath.initial,
      onGenerateRoute: Routings.generateRoutes,
      navigatorObservers: [CustomRouterObserver()],
      builder: (context, child) {
        return AppOverlayLoading.instance().build().call(context, child);
      },
    );
  }
}
