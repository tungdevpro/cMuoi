import 'package:core/core.dart';
import 'package:express_cart/common/common.dart';
import 'package:express_cart/common/widgets/logo_text.dart';
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
              Container(
                padding: EdgeInsets.symmetric(horizontal: 90, vertical: 48),
                alignment: Alignment.center,
                child: LogoText(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
