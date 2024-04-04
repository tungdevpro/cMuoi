import 'package:flutter/material.dart';

import '../constants/app_color.dart';
import '../constants/app_size.dart';

abstract class CustomTextButtonTheme {
  const CustomTextButtonTheme._();

  static TextButtonThemeData lightButton() => TextButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(AppColor.buttonPrimary),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSize.radius)),
          ),
        ),
      );
}
