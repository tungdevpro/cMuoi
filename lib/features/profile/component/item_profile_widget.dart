import 'package:express_cart/common/routes/routes.dart';

import '../../../import.dart';

class ItemProfileWidget extends StatelessWidget {
  const ItemProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _item(
          onTap: () => AppNavigator.shared.pushNamed(RoutePath.profileAccount),
          icon: Assets.icons.profile.svg(width: 24),
          label: S.current.account,
          subtitle: S.current.manage_and_protect_your_account,
        ),
        _item(
          icon: Assets.icons.notification.svg(width: 24),
          label: S.current.payment,
          subtitle: S.current.manage_and_protect_your_account,
        ),
        _item(
          icon: Assets.icons.payment.svg(width: 24),
          label: S.current.notification,
          subtitle: S.current.set_ur_notifications,
        ),
        _item(
          icon: Assets.icons.bookmark.svg(width: 24),
          label: S.current.bookmark,
          subtitle: S.current.set_bookmark,
        ),
        _item(
          icon: Assets.icons.profile.svg(width: 24),
          label: S.current.privacy_and_policy,
          subtitle: S.current.privacy_and_policy,
        ),
      ],
    );
  }

  Widget _item({
    required Widget icon,
    required String label,
    required String subtitle,
    bool hasBorder = true,
    VoidCallback? onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: !hasBorder ? null : const BoxDecoration(border: Border(bottom: BorderSide(color: AppColor.secondaryLight200))),
        padding: const EdgeInsets.only(bottom: AppSize.padding),
        margin: const EdgeInsets.only(bottom: AppSize.padding),
        child: IntrinsicHeight(
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(border: Border.all(color: AppColor.secondaryLight100, width: 1), borderRadius: BorderRadius.circular(100)),
                padding: const EdgeInsets.all(AppSize.paddingSM),
                child: icon,
              ),
              const Gap(AppSize.paddingSM),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text(label, style: AppTypography.semiBoldType18), Text(subtitle)],
              )
            ],
          ),
        ),
      ),
    );
  }
}
