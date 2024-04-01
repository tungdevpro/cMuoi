import 'package:flutter/material.dart';
import 'package:express_cart/common/constants/constants.dart';

class Gap extends StatelessWidget {
  final double height;
  const Gap({super.key, this.height = AppSize.paddingSM});

  factory Gap.sm() => const Gap(height: AppSize.paddingSM);
  factory Gap.lg() => const Gap(height: AppSize.paddingLG);
  factory Gap.xl() => const Gap(height: AppSize.paddingXL);
  factory Gap.xxl() => const Gap(height: AppSize.paddingXXL);

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: height);
  }
}
