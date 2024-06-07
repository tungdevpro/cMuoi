import 'package:core/core.dart';
import 'package:express_cart/common/common.dart';
import 'package:flutter/material.dart';
import 'package:express_cart/features/login/bloc/login_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
              const Gap(height: 200),
              CustomTextField(
                labelText: 'Email',
                hintText: 'Enter your email',
              ),
              const Gap(height: 24),
              CustomTextField(
                labelText: 'Password',
                hintText: 'Enter your password',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
