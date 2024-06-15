import 'package:express_cart/common/common.dart';
import 'package:flutter/material.dart';

abstract class AppTypography {
  const AppTypography._();

  static const double fs = 14;
  static const double fsSm = 12;

  static TextStyle get mediumType14 => const TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: fs,
        color: AppColor.secondaryLight300,
      );
  static TextStyle get regularType12 => const TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: fsSm,
      );
  static TextStyle get regularType14 => const TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: fs,
      );
  static TextStyle get semiBoldType16 => const TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 16,
        color: AppColor.secondaryDefault,
      );
  static TextStyle get semiBoldType18 => const TextStyle(fontWeight: FontWeight.w600, fontSize: 18, color: AppColor.secondaryDefault);
  static TextStyle get semiBoldType20 => const TextStyle(fontWeight: FontWeight.w600, fontSize: 20, color: AppColor.secondaryDefault);
  static TextStyle get semiBoldType24 => const TextStyle(fontWeight: FontWeight.w600, fontSize: 24, color: AppColor.secondaryDefault);
}
