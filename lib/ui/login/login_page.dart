import 'package:cmuoi/common/routes/routes.dart';
import 'package:cmuoi/common/widgets/logo_text.dart';
import 'package:cmuoi/ui/login/bloc/login_bloc.dart';
import 'package:cmuoi/ui/login/bloc/login_event.dart';
import 'package:cmuoi/ui/widgets/list_social_auth_widget.dart';
import 'package:cmuoi/import.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends CoreBindingState<LoginPage, LoginBloc> {
  @override
  LoginBloc get initBloc => LoginBloc.to;

  @override
  Widget buildPage(BuildContext context) {
    return CommonScaffold(
      body: SafeArea(
        child: ListView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          padding: const EdgeInsets.all(AppSize.padding),
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 90, vertical: 48).copyWith(bottom: 60),
              alignment: Alignment.center,
              child: const LogoText(),
            ),
            AppTextField(
              label: S.current.email,
            ),
            const Gap(AppSize.paddingXL),
            AppTextField(
              label: S.current.password,
              onChanged: (value) {},
            ),
            const Gap(78),
            AppButton.outline(
              title: S.current.create_account,
              onTap: () => AppNavigator.shared.pushNamed(RoutePath.signUp),
            ),
            const Gap(20),
            AppButton(
              onTap: () => bloc.add(LoginSubmittedEvent(email: '', password: '')),
              title: S.current.sign_in,
            ),
            const Gap(40),
            _buildVia(),
            const Gap(40),
            const ListSocialAuthWidget()
          ],
        ),
      ),
    );
  }

  Widget _buildVia() {
    return IntrinsicHeight(
      child: Row(
        children: [
          const Expanded(
              child: Divider(
            color: AppColor.secondaryLight300,
          )),
          const Gap(16),
          Text(
            S.current.via_social_media.toLowerCase(),
            style: AppTypography.mediumType14,
          ),
          const Gap(16),
          const Expanded(
              child: Divider(
            color: AppColor.secondaryLight300,
          )),
        ],
      ),
    );
  }
}
