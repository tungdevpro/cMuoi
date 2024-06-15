import 'package:flutter_svg/flutter_svg.dart';

import '../../../import.dart';

class ItemAccountWidget extends StatelessWidget {
  const ItemAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [],
    );
  }

  Widget _item({
    required String icon,
    required String label,
    required String subtitle,
  }) {
    return IntrinsicHeight(
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(border: Border.all(color: AppColor.secondaryLight100, width: 1)),
            padding: const EdgeInsets.all(AppSize.paddingSM),
            child: SvgPicture.asset(icon, width: 24),
          ),
        ],
      ),
    );
  }
}
