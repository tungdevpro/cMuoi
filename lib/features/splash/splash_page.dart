import 'package:core/core.dart';
import 'package:express_cart/common/app/bloc/app_bloc.dart';
import 'package:express_cart/common/app/bloc/app_state.dart';
import 'package:express_cart/common/routes/routes.dart';
import 'package:express_cart/features/onboarding/onboarding_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:express_cart/common/common.dart';
import 'package:lottie/lottie.dart';

import '../../common/auth/auth.dart';
import '../login/login_page.dart';

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
    return BlocBuilder<AppBloc, AppState>(
        buildWhen: (previous, current) => previous.isOnBoarding == current.isOnBoarding,
        // listener: _onAppListener,
        builder: (context, appState) {
          if (!appState.isOnBoarding) {
            return const OnboardingPage();
          }
          return BlocBuilder<AuthBloc, AuthState>(
            builder: (context, state) {
              return AnimatedSwitcher(
                duration: const LongDuration(),
                transitionBuilder: (Widget child, Animation<double> animation) => FadeTransition(opacity: animation, child: child),
                child: state is AuthNotLoggedInState ? const LoginPage() : _body(),
              );
            },
          );
        });
  }

  Widget _body() {
    return Scaffold(
      backgroundColor: AppColor.primaryContainer,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(ImageResource.logo, width: 140),
            Lottie.asset(LottieResource.loadingWhite, width: 100),
          ],
        ),
      ),
    );
  }

  void _onAppListener(BuildContext context, AppState state) {
    if (!state.isOnBoarding) {
      AppNavigator.instance().pushNamed(RoutePath.onboarding);
      return;
    }
  }
}
