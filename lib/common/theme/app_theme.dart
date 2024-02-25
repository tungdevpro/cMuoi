import 'package:flutter/material.dart';

class AppTheme {
  bool isLight = true;

  void toggle() {
    isLight = !isLight;
  }

  static ThemeData get light => ThemeData(
        fontFamily: 'GoogleSans',
        // brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          elevation: .0,
          backgroundColor: Colors.white,
          // systemOverlayStyle: SystemUiOverlayStyle.dark,
        ),
      );
  static ThemeData get dark => ThemeData(
        fontFamily: 'GoogleSans',
      );
}
