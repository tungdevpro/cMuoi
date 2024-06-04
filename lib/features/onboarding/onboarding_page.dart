import 'package:core/core.dart';
import 'package:express_cart/common/constants/constants.dart';
import 'package:flutter/material.dart';

import '../../common/common.dart';
import '../../shared/widgets/bottom_bar_area_widget.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomBarAreaWidget(
        // height: 90,
        child: AppButton(
          onTap: () {},
          title: 'Next',
        ),
      ),
    );
  }
}
