import 'package:core/core.dart';
import 'package:express_cart/common/widgets/app_text_field.dart';
import 'package:express_cart/shared/widgets/bottom_bar_area_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:express_cart/common/constants/constants.dart';
import 'package:express_cart/features/sign_up/bloc/sign_up_bloc.dart';
import 'package:gap/gap.dart';

import '../../import.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends CoreBindingState<SignUpPage, SignUpBloc> {
  @override
  SignUpBloc get initBloc => SignUpBloc.to;

  @override
  Widget buildPage(BuildContext context) {
    return CommonScaffold(
      appBar: HeaderFix(),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: AppSize.paddingXL),
          physics: const ClampingScrollPhysics(),
          children: [
            const Gap(40),
            Text(S.current.create_new_account, style: AppTypography.semiBoldType24),
            const Gap(8),
            Text(
              S.current.input_your_email,
              style: AppTypography.regularType14.copyWith(color: AppColor.secondaryLight300),
            ),
            const Gap(40),
            AppTextField(label: S.current.first_name),
            const Gap(AppSize.paddingXL),
            AppTextField(label: S.current.last_name),
          ],
        ),
      ),
      bottomNavigationBar: BottomBarAreaWidget(child: AppButton(title: S.current.input_account)),
    );
  }
}
