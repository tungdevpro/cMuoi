import 'package:express_cart/common/app/bloc/app_bloc.dart';
import 'package:express_cart/common/constants/constants.dart';
import 'package:express_cart/common/routes/routes.dart';
import 'package:express_cart/features/onboarding/component/intro_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../common/common.dart';
import '../../import.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController _pageController = PageController();

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                AppColor.secondaryDefault.withOpacity(.0),
                AppColor.secondaryDefault,
              ],
            )),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: MediaQuery.sizeOf(context).height / 2,
              child: PageView(
                physics: const NeverScrollableScrollPhysics(),
                controller: _pageController,
                children: [
                  IntroWidget(
                    title: S.current.onboarding_1,
                    subTitle: S.current.onboarding_sub_1,
                    onTap: () => _nextPage(1),
                  ),
                  IntroWidget(
                    title: S.current.onboarding_2,
                    subTitle: S.current.onboarding_sub_2,
                    onTap: () => _nextPage(2),
                  ),
                  IntroWidget(
                    title: S.current.onboarding_3,
                    subTitle: S.current.onboarding_sub_3,
                    isEnd: true,
                    onTap: () => _nextToHome(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _nextPage(int i) {
    _pageController.animateToPage(i, duration: const Duration(milliseconds: 200), curve: Curves.easeInCubic);
  }

  void _nextToHome() async {
    context.read<AppBloc>().add(HideOnboardingEvent());
  }
}
