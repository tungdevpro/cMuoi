import 'package:flutter/material.dart';

import '../constants/app_color.dart';
import '../constants/app_size.dart';

abstract class CustomTextButtonTheme {
  const CustomTextButtonTheme._();

  static TextButtonThemeData lightButton() => TextButtonThemeData(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all<Color>(AppColor.primaryDefault),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSize.radius)),
          ),
        ),
      );
}
