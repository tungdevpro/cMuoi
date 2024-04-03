import 'package:express_cart/common/constants/app_color.dart';
import 'package:flutter/material.dart';

class AppTheme {
  bool isLight = true;

  void toggle() {
    isLight = !isLight;
  }

  static ThemeData get light => ThemeData(
        fontFamily: 'GoogleSans',
        scaffoldBackgroundColor: Colors.white,
        buttonTheme: ButtonThemeData(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            buttonColor: AppColor.background,
            colorScheme: ColorScheme(
              brightness: Brightness.light,
              primary: AppColor.primary,
              onPrimary: AppColor.onPrimary,
              secondary: AppColor.secondary,
              onSecondary: AppColor.onSecondary,
              error: AppColor.error,
              onError: AppColor.onError,
              background: AppColor.background,
              onBackground: AppColor.onBackground,
              surface: AppColor.surface,
              onSurface: AppColor.onSurface,
            )),
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
