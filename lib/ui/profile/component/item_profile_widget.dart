import 'package:cmuoi/common/routes/routes.dart';

import '../../../import.dart';
import '../../widgets/custom_list_tile_profile_widget.dart';

class ItemProfileWidget extends StatelessWidget {
  const ItemProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomListTileProfileWidget(
          onTap: () => AppNavigator.shared.pushNamed(RoutePath.profileAccount),
          icon: Assets.icons.profile.svg(width: 24),
          label: S.current.account,
          subtitle: S.current.manage_and_protect_your_account,
        ),
        CustomListTileProfileWidget(
          icon: Assets.icons.notification.svg(width: 24),
          label: S.current.payment,
          subtitle: S.current.manage_and_protect_your_account,
        ),
        CustomListTileProfileWidget(
          icon: Assets.icons.payment.svg(width: 24),
          label: S.current.notification,
          subtitle: S.current.set_ur_notifications,
        ),
        CustomListTileProfileWidget(
          icon: Assets.icons.bookmark.svg(width: 24),
          label: S.current.bookmark,
          subtitle: S.current.set_bookmark,
        ),
        CustomListTileProfileWidget(
          icon: Assets.icons.profile.svg(width: 24),
          label: S.current.privacy_and_policy,
          subtitle: S.current.privacy_and_policy,
          hasBorder: false,
        ),
      ],
    );
  }
}
