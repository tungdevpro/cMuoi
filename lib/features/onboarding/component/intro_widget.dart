
import 'package:flutter/material.dart';

import '../../../common/common.dart';
import '../../../generated/l10n.dart';

class IntroWidget extends StatelessWidget {
  final String title;
  final String subTitle;
  final bool isEnd;
  final VoidCallback? onTap;
  const IntroWidget({super.key, required this.title, required this.subTitle, this.isEnd = false, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSize.padding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title, style: const TextStyle(fontSize: 40, color: AppColor.primaryLight0)),
          const Gap(height: 20),
          Text(subTitle, style: const TextStyle(fontSize: 16, color: AppColor.primaryLight0)),
          const Gap(height: 32),
          AppButton(
            title: isEnd ? S.current.get_started : S.current.next,
            onTap: onTap,
          ),
        ],
      ),
    );
  }
}
