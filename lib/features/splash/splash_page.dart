import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:express_cart/common/common.dart';

import '../../common/auth/auth.dart';
import '../../common/constants/constants.dart';
import '../login/login_page.dart';
import 'package:lottie/lottie.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return state is AuthNotLoggedInState
            ? const LoginPage()
            : Scaffold(
                backgroundColor: AppColor.primaryContainer,
                body: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(ImageResource.logo, width: 140),
                      Gap.lg(),
                      Lottie.asset('assets/animations/loading_lottie.json'),
                      // const SizedBox(height: 22, width: 22, child: CircularProgressIndicator(color: Colors.white)),
                    ],
                  ),
                ),
              );
      },
    );
  }
}
