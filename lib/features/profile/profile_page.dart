import 'package:cmuoi/common/auth/auth.dart';
import 'package:cmuoi/features/profile/bloc/profile_bloc.dart';

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
    return BlocBuilder<AuthBloc, AuthState>(builder: (_, state) {
      final user = state.user;
      return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Gap(60),
          Stack(
            children: [
              CustomDashedBorder(
                  padding: const EdgeInsets.all(12),
                  radius: const Radius.circular(AppSize.radiusCircle),
                  color: AppColor.primaryDefault,
                  child: AvatarWidget(user?.image ?? '', name: user?.firstName ?? '', size: 85)),
            ],
          ),
          const Gap(AppSize.padding),
          Text(user?.firstName ?? '', style: AppTypography.semiBoldType20),
          const Gap(8),
          Text(user?.email ?? '', style: AppTypography.regularType14.copyWith(color: AppColor.secondaryLight300)),
          const Gap(AppSize.paddingXXL),
        ],
      );
    });
  }
}
