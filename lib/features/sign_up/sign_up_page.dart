import 'package:cmuoi/features/sign_up/component/email_sign_up.dart';
import 'package:cmuoi/features/sign_up/component/name_sign_up.dart';
import 'package:cmuoi/features/sign_up/component/otp_sign_up.dart';
import 'package:cmuoi/features/sign_up/component/password_sign_up.dart';
import 'package:cmuoi/common/widgets/bottom_bar_area_widget.dart';
import 'package:cmuoi/features/sign_up/bloc/sign_up_bloc.dart';

import '../../import.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends CoreBindingState<SignUpPage, SignUpBloc> {
  @override
  SignUpBloc get initBloc => SignUpBloc.to;

  late final ValueNotifier<int> _valueNotifier = ValueNotifier(0);
  late final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    _valueNotifier.dispose();
    super.dispose();
  }

  final List<Widget> _pages = const [
    NameSignUp(),
    EmailSignUp(),
    PasswordSignUp(),
    OtpSignUp(),
  ];

  @override
  Widget buildPage(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) {
        return;
      },
      child: CommonScaffold(
        appBar: HeaderFix(
          onLeadingPressed: () {
            int idx = _pageController.page!.toInt();
            if (idx < 0) idx = 0;
            if (idx == 0) {
              AppNavigator.shared.close();
            } else {
              // _pageController.
              // _pageController.previousPage(duration: const Duration(milliseconds: 300), curve: Curves.ease);
            }
          },
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSize.paddingXL),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Gap(40),
                Text(S.current.create_new_account, style: AppTypography.semiBoldType24),
                const Gap(8),
                Expanded(
                  child: PageView(
                    controller: _pageController,
                    physics: const NeverScrollableScrollPhysics(),
                    children: _pages,
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomBarAreaWidget(
          child: ValueListenableBuilder<int>(
            valueListenable: _valueNotifier,
            builder: (context, index, child) => AppButton(
              onTap: () => _didTapButton(index),
              title: _getLabelButton(index),
            ),
          ),
        ),
      ),
    );
  }

  void _didTapButton(int index) {
    int idx = index;
    if (idx == _pages.length - 1) return;
    idx += 1;
    _valueNotifier.value = idx;
    _pageController.animateToPage(
      idx,
      duration: const Duration(milliseconds: 200),
      curve: Curves.ease,
    );
  }

  String _getLabelButton(int value) {
    if (value == 1) return S.current.create_account;
    if (value == 2) return S.current.verification;
    if (value == 3) return S.current.submit;

    return S.current.input_account;
  }
}
