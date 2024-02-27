import 'package:flutter/material.dart';
import 'package:gen_artify/common/constants/constants.dart';

class Gap extends StatelessWidget {
  final double height;
  const Gap({super.key, this.height = AppSize.paddingSM});

  factory Gap.sm() => const Gap(height: AppSize.paddingSM);
  factory Gap.lg() => const Gap(height: AppSize.paddingLG);

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: height);
  }
}
