import 'package:cmuoi/import.dart';
import 'package:flutter/widgets.dart';

class BoxLabelWidget extends StatelessWidget {
  final String label;
  final VoidCallback? onTap;
  final Widget child;
  const BoxLabelWidget({super.key, required this.label, this.onTap, required this.child});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(label, style: AppTypography.semiBoldType16),
            InkWell(onTap: onTap, child: Text(S.current.view_all, style: AppTypography.mediumType12.copyWith(color: AppColor.primaryDark500))),
          ],
        ),
        const Gap(AppSize.padding),
        child,
      ],
    );
  }
}
