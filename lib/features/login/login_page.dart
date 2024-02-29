import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gen_artify/features/login/bloc/login_bloc.dart';

import '../../common/common.dart';
import '../../shared/widgets/auth_background_widget.dart';

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
    return AuthBackgroundWidget(
      child: BlocProvider.value(
        value: bloc,
        child: Column(
          children: [
            BaseTextField(
              hintText: 'Email',
            ),
          ],
        ),
      ),
    );
  }
}
