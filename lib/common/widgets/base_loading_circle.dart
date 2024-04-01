import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';

import '../constants/lottie_resource.dart';

class BaseLoadingCircle extends StatelessWidget {
  final double? width;
  final bool isPrimary;
  const BaseLoadingCircle({super.key, this.width, this.isPrimary = false});

  factory BaseLoadingCircle.primary({double? width, bool isPrimary = false}) {
    return BaseLoadingCircle(width: width, isPrimary: isPrimary);
  }

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(isPrimary ? LottieResource.loadingPrimary : LottieResource.loadingWhite, width: width ?? 100);
  }
}
