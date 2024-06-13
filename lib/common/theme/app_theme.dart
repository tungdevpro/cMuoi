import 'package:express_cart/common/theme/custom_text_theme.dart';
import 'package:flutter/material.dart';

import 'custom_text_button_theme.dart';

abstract class AppTheme {
  const AppTheme._();

  static const String _fontFamily = 'MaisonNeue';

  static ThemeData get light => ThemeData(
        fontFamily: _fontFamily,
        scaffoldBackgroundColor: Colors.white,
        useMaterial3: true,
        appBarTheme: const AppBarTheme(elevation: .0, backgroundColor: Colors.white),
        textButtonTheme: CustomTextButtonTheme.lightButton(),
        textTheme: CustomTextTheme.lightText(),
      );
  static ThemeData get dark => ThemeData(
        fontFamily: _fontFamily,
        useMaterial3: true,
      );
}
