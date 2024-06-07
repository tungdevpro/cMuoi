import 'package:flutter_localizations/flutter_localizations.dart';

import '../../import.dart';

abstract class ConfigLocalization {
  const ConfigLocalization._();

  static Iterable<LocalizationsDelegate<dynamic>> loads() {
    return [
      S.delegate,
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ];
  }

  static Iterable<Locale> supportedLocales() {
    return [
      ...S.delegate.supportedLocales,
      // Locale('en'),
      // Locale('vi'),
    ];
  }
}
