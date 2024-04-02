import 'dart:ui';

abstract class AppColor {
  const AppColor._();

  /// Primary
  static const Color primary = Color(0xff795900);
  static const Color onPrimary = Color(0xffFFFFFF);
  static const Color primaryContainer = Color(0xffFFDF9E);
  static const Color onPrimaryContainer = Color(0xff261A00);

  /// Secondary
  static const Color secondary = Color(0xff6D5C39);
  static const Color onSecondary = Color(0xffFFFFFF);
  static const Color secondaryContainer = Color(0xff251A01);
  static const Color onSecondaryContainer = Color(0xffF8E0B3);

  /// Tertiary
  static const Color tertiary = Color(0xff456642);
  static const Color onTertiary = Color(0xffFFFFFF);
  static const Color tertiaryContainer = Color(0xffC6EDBE);
  static const Color onTertiaryContainer = Color(0xff022105);

  /// Error
  static const Color error = Color(0xffBA1A1A);
  static const Color onError = Color(0xffFFFFFF);
  static const Color errorContainer = Color(0xffFFDAD6);
  static const Color onErrorContainer = Color(0xff410002);

  /// Background & Surface
  static const Color background = Color(0xffFFFBFF);
  static const Color onBackground = Color(0xff1E1B16);
  static const Color surface = Color(0xffFFFBFF);
  static const Color onSurface = Color(0xff1E1B16);
  static const Color surfaceVariant = Color(0xffEDE1CF);
  static const Color onSurfaceVariant = Color(0xff4D4639);
  static const Color outline = Color(0xff7F7667);

  static const Color buttonPrimary = Color(0xffFFB900);
}
