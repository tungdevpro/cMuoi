import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

abstract class ConfigLocalization {
  const ConfigLocalization._();

  static Iterable<LocalizationsDelegate<dynamic>> loads() {
    return [
      AppLocalizations.delegate,
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ];
  }

  static Iterable<Locale> supportedLocales() {
    return const [Locale('en'), Locale('vi')];
  }
}
