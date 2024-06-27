import 'package:cmuoi/resource/generated/assets.gen.dart';
import 'package:flutter/widgets.dart';

class BaseLoadingCircle extends StatelessWidget {
  final double? width;
  final bool isPrimary;
  const BaseLoadingCircle({super.key, this.width, this.isPrimary = false});

  factory BaseLoadingCircle.primary({double? width, bool isPrimary = false}) {
    return BaseLoadingCircle(width: width, isPrimary: isPrimary);
  }

  @override
  Widget build(BuildContext context) {
    return Assets.animations.loadingPrimary.lottie(width: width ?? 100);
  }
}
