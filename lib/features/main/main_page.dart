import 'package:cmuoi/features/main/bloc/main_bloc.dart';
import 'package:cmuoi/import.dart';
import 'package:cmuoi/resource/generated/assets.gen.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../model/nav_item_model.dart';
import '../profile/profile_page.dart';
import '../home/home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends CoreBindingState<MainPage, MainBloc> {
  @override
  MainBloc get initBloc => di<MainBloc>();

  late ValueNotifier<int> currentIndex;
  late PageController pageController;
  final double _tabIndicatorWidth = 60;
  var items = <Widget>[
    const KeepAliveWidget(child: HomePage()),
    Container(),
    Container(),
    const KeepAliveWidget(child: ProfilePage()),
  ];

  final navs = [
    NavItem(icon: Assets.icons.homeBottomBar.svg(), name: '', iconSelected: Assets.icons.homeSelectedBottomBar.svg()),
    NavItem(icon: Assets.icons.coffeeBottomBar.svg(), name: '', iconSelected: Assets.icons.coffeeSelectedBottomBar.svg()),
    NavItem(icon: Assets.icons.tagBottomBar.svg(), name: '', iconSelected: Assets.icons.tagSelectedBottomBar.svg()),
    NavItem(icon: Assets.icons.profileBottomBar.svg(), name: '', iconSelected: Assets.icons.profleSelectedBottomBar.svg()),
  ];

  @override
  void initState() {
    currentIndex = ValueNotifier(0);
    pageController = PageController();
    super.initState();
  }

  @override
  Widget buildPage(BuildContext context) {
    final tabSegmentWidth = MediaQuery.of(context).size.width / navs.length;
    return CommonScaffold(
      body: PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: items,
      ),
      bottomNavigationBar: ValueListenableBuilder<int>(
        valueListenable: currentIndex,
        builder: (context, index, child) {
          final tabIndicatorOffset = tabSegmentWidth * index + (tabSegmentWidth - _tabIndicatorWidth) / 2;
          return Stack(
            children: [
              BottomNavigationBar(
                onTap: _onChangeIndexNavigation,
                showSelectedLabels: false,
                showUnselectedLabels: false,
                enableFeedback: true,
                backgroundColor: Colors.white,
                elevation: .0,
                currentIndex: index,
                type: BottomNavigationBarType.fixed,
                fixedColor: Colors.blue,
                items: navs
                    .asMap()
                    .entries
                    .map<BottomNavigationBarItem>((e) => BottomNavigationBarItem(icon: index == e.key ? e.value.iconSelected : e.value.icon, label: ''))
                    .toList(),
              ),
              AnimatedPositioned(
                left: tabIndicatorOffset,
                width: _tabIndicatorWidth,
                duration: const Duration(milliseconds: 300),
                child: Container(
                  height: 2,
                  color: AppColor.primaryDefault,
                ),
              )
            ],
          );
        },
      ),
    );
  }

  void _onChangeIndexNavigation(int value) {
    currentIndex.value = value;
    pageController.jumpToPage(value);
  }
}
