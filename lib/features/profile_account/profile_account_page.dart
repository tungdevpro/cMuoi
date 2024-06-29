import 'package:domain/domain.dart';
import 'package:cmuoi/features/widgets/custom_list_tile_profile_widget.dart';
import 'package:cmuoi/import.dart';

class ProfileAccountPage extends StatelessWidget {
  const ProfileAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      backgroundColor: AppColor.backgroundWhite,
      appBar: HeaderFix(text: S.current.account),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: AppSize.paddingXL).copyWith(top: 40),
        children: [
          CustomListTileProfileWidget(
            icon: Assets.icons.lock.svg(),
            label: S.current.privacy,
            subtitle: S.current.set_and_protect_your_privacy,
            onTap: () {},
          ),
          CustomListTileProfileWidget(
            icon: Assets.icons.shield.svg(),
            label: S.current.security,
            subtitle: S.current.set_and_protect_your_privacy,
            onTap: () {},
          ),
          CustomListTileProfileWidget(
            icon: Assets.icons.passwordCheck.svg(),
            label: S.current.two_step_verifycation,
            subtitle: S.current.two_step_verification_of_ur_security,
            onTap: () {},
          ),
          CustomListTileProfileWidget(
            icon: Assets.icons.documentText.svg(),
            label: S.current.request_account_info,
            subtitle: S.current.request_ur_account_info,
            onTap: () {},
          ),
          CustomListTileProfileWidget(
            icon: Assets.icons.trash.svg(),
            label: S.current.delete_ur_account,
            subtitle: S.current.delete_ur_account,
            onTap: _onDeleteAccount,
            hasBorder: false,
          ),
        ],
      ),
    );
  }

  void _onDeleteAccount() async {
    final LogoutUseCase logoutUseCase = di.get();
    await logoutUseCase.invoke(null);
  }
}
