import 'package:core/core.dart';
import 'package:flutter/material.dart';

import 'common/constants/config_localization.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class GenArtify extends StatefulWidget {
  const GenArtify({super.key});

  @override
  State<GenArtify> createState() => _GenArtifyState();
}

class _GenArtifyState extends State<GenArtify> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: AppNavigator().navigatorKey,
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: ConfigLocalization.loads(),
      supportedLocales: ConfigLocalization.supportedLocales(),
      home: _RootApp(),
    );
  }
}

class _RootApp extends StatelessWidget {
  const _RootApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(AppLocalizations.of(context)!.title)),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(AppLocalizations.of(context)?.helloWorld ?? 'kkee'),
          ],
        ),
      ),
    );
  }
}
