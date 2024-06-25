import 'package:express_cart/features/profile/bloc/profile_bloc.dart';

import '../../import.dart';
import 'component/item_profile_widget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends CoreBindingState<ProfilePage, ProfileBloc> {
  @override
  ProfileBloc get initBloc => di<ProfileBloc>();

  @override
  Widget buildPage(BuildContext context) {
    return CommonScaffold(
      backgroundColor: AppColor.backgroundWhite,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: AppSize.paddingXL),
          children: [
            _head(),
            const ItemProfileWidget(),
          ],
        ),
      ),
    );
  }

  Widget _head() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Gap(60),
        const Stack(
          children: [
            CustomDashedBorder(
                padding: EdgeInsets.all(12),
                radius: Radius.circular(AppSize.radiusCircle),
                color: AppColor.primaryDefault,
                child: AvatarWidget('http', name: 'Tung', size: 85)),
          ],
        ),
        const Gap(AppSize.padding),
        Text(S.current.password, style: AppTypography.semiBoldType20),
        const Gap(8),
        Text(S.current.password, style: AppTypography.regularType14.copyWith(color: AppColor.secondaryLight300)),
        const Gap(AppSize.paddingXXL),
      ],
    );
  }
}
