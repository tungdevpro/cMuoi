import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:gen_artify/common/routes/routes.dart';
import 'package:gen_artify/common/theme/app_theme.dart';

import 'common/constants/config_localization.dart';

class GenArtify extends StatefulWidget {
  const GenArtify({super.key});

  @override
  State<GenArtify> createState() => _GenArtifyState();
}

class _GenArtifyState extends State<GenArtify> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Gen Artify',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: ConfigLocalization.loads(),
      supportedLocales: ConfigLocalization.supportedLocales(),
      routerConfig: Routings.router,
      theme: AppTheme.light,
      themeMode: ThemeMode.light,
      darkTheme: AppTheme.dark,
      builder: (context, child) {
        return AppOverlayLoading.instance().build().call(context, child);
      },
    );
  }
}
