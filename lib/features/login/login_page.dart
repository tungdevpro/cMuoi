import 'package:express_cart/common/theme/custom_text_button_theme.dart';
import 'package:express_cart/common/widgets/app_text_field.dart';
import 'package:express_cart/common/widgets/logo_text.dart';
import 'package:express_cart/features/login/bloc/login_bloc.dart';
import 'package:express_cart/features/widgets/list_social_auth_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:express_cart/import.dart';
import 'package:gap/gap.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends CoreBindingState<LoginPage, LoginBloc> {
  @override
  LoginBloc get initBloc => LoginBloc.to;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: bloc,
      child: CommonScaffold(
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
              ),
              const Gap(78),
              AppButton.outline(title: S.current.create_account),
              const Gap(20),
              AppButton(title: S.current.sign_in),
              const Gap(40),
              _buildVia(),
              const Gap(40),
              const ListSocialAuthWidget()
            ],
          ),
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
