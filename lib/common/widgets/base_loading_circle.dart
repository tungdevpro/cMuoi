import 'package:cmuoi/resource/generated/assets.gen.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';

class BaseLoadingCircle extends StatelessWidget {
  final double? width;
  final bool isPrimary;
  const BaseLoadingCircle({super.key, this.width, this.isPrimary = false});

  factory BaseLoadingCircle.primary({double? width, bool isPrimary = false}) {
    return BaseLoadingCircle(width: width, isPrimary: isPrimary);
  }

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(isPrimary ? Assets.animations.loadingPrimary : Assets.animations.loadingWhite, width: width ?? 100);
  }
}
