import 'package:express_cart/import.dart';
import 'package:express_cart/model/social_media_model.dart';
import 'package:flutter/material.dart';

import '../../shared/social_media_enum.dart';

class ListSocialAuthWidget extends StatelessWidget {
  const ListSocialAuthWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final items = SocialMedia.values.toList();
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: List<Widget>.generate(
          items.length,
          (index) => _buildItem(
                items[index],
                index == items.length - 1,
              )),
    );
  }

  Widget _buildItem(SocialMedia item, bool isLast) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
      decoration: BoxDecoration(
        border: Border.all(color: AppColor.secondaryLight100),
        borderRadius: BorderRadius.circular(AppSize.radius),
      ),
      margin: isLast ? null : const EdgeInsets.only(right: 20),
      child: Image.asset(item.image, width: 32, height: 32),
    );
  }
}
