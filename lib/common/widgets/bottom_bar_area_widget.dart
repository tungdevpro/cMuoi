import 'dart:io';

import 'package:express_cart/common/constants/constants.dart';
import 'package:flutter/material.dart';

class BottomBarAreaWidget extends StatelessWidget {
  final Widget child;
  final double? height;
  const BottomBarAreaWidget({super.key, required this.child, this.height});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      height: height,
      padding: const EdgeInsets.symmetric(horizontal: AppSize.padding).copyWith(bottom: Platform.isAndroid ? AppSize.paddingSM : 0),
      child: child,
    ));
  }
}
