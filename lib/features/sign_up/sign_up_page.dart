import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gen_artify/common/constants/constants.dart';
import 'package:gen_artify/features/sign_up/bloc/sign_up_bloc.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends CoreBindingState<SignUpPage, SignUpBloc> {
  @override
  SignUpBloc get initBloc => SignUpBloc.to;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: bloc,
      child: Scaffold(
        appBar: AppBar(
          title: Text("SignUp"),
        ),
        body: SafeArea(
          child: ListView(
            physics: const ClampingScrollPhysics(),
            children: [
              Image.asset(ImageResource.logo),
            ],
          ),
        ),
      ),
    );
  }
}
