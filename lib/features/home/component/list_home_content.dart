import 'package:cmuoi/common/auth/auth.dart';
import 'package:cmuoi/common/widgets/logo_text.dart';
import 'package:cmuoi/features/home/component/favorite_place_widget.dart';
import 'package:cmuoi/features/home/component/my_reward_widget.dart';
import 'package:cmuoi/features/home/component/popular_place_widget.dart';
import 'package:domain/common/common.dart';

import '../../../import.dart';

class ListHomeContent extends StatelessWidget {
  final ScrollController scrollController;
  const ListHomeContent({super.key, required this.scrollController});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    double boxHeight = 330;
    double backgroundHeight = 210;
    return RefreshIndicator(
      onRefresh: () async {},
      child: ListView(
        controller: scrollController,
        padding: EdgeInsets.zero,
        children: [
          _header(boxHeight, width, backgroundHeight),
          _body(),
          ...List<Widget>.generate(20, (i) => ListTile(title: Text("$i"))),
          const SizedBox(height: kBottomNavigationBarHeight),
        ],
      ),
    );
  }

  SizedBox _header(double boxHeight, double width, double backgroundHeight) {
    return SizedBox(
      height: boxHeight,
      width: width,
      child: Stack(
        children: [
          Stack(
            children: [
              Container(
                height: backgroundHeight,
                decoration: const BoxDecoration(color: AppColor.primaryDefault),
              ),
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.only(top: AppSize.paddingLG),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: AppSize.padding),
                        child: LogoText(color: Colors.white),
                      ),
                      const Spacer(),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Assets.icons.notificationBold.svg(
                              colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                            ),
                          ),
                          const Gap(8),
                          BlocBuilder<AuthBloc, AuthState>(builder: (_, state) {
                            final user = state.user;
                            if (user == null || user.id == idEmpty) return const SizedBox.shrink();
                            return Container(
                              margin: const EdgeInsets.only(right: AppSize.padding),
                              child: AvatarWidget(
                                user.image,
                                name: user.firstName,
                                size: 45,
                              ),
                            );
                          })
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          Align(
            alignment: const Alignment(0, .7),
            child: Container(
              width: width,
              margin: const EdgeInsets.symmetric(horizontal: AppSize.padding),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(S.current.ur_card_balance, style: AppTypography.mediumType14),
                      Text('\$240.00', style: AppTypography.semiBoldType16),
                    ],
                  ),
                  const Gap(AppSize.padding),
                  CustomPaint(
                    painter: DottedLinePainter(color: AppColor.primaryLight300),
                    child: const SizedBox(height: 1, width: double.infinity),
                  ),
                  const Gap(AppSize.padding),
                  SizedBox(
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        _itemBanner(icon: Assets.icons.twotoneWalletAdd.svg(), title: S.current.top_up),
                        _itemBanner(icon: Assets.icons.twotoneEmptyWalletTick.svg(), title: S.current.pay),
                        _itemBanner(icon: Assets.icons.twotoneDiscountShape.svg(), title: S.current.promo),
                        _itemBanner(icon: Assets.icons.twotoneClock.svg(), title: S.current.history),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _itemBanner({required Widget icon, required String title}) {
    return Expanded(
      child: InkWell(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            const Gap(9),
            Text(title, style: AppTypography.mediumType14),
          ],
        ),
      ),
    );
  }

  Padding _body() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: AppSize.padding),
      child: Column(
        children: [
          MyRewardWidget(),
          Gap(24),
          FavoritePlaceWidget(),
          Gap(24),
          PopularPlaceWidget(),
        ],
      ),
    );
  }
}
