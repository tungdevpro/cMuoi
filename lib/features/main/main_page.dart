import 'package:core/common/common.dart';
import 'package:express_cart/features/main/bloc/main_bloc.dart';
import 'package:express_cart/import.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../common/constants/constants.dart';
import '../../di/di.dart';
import '../../model/nav_item_model.dart';
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

  var items = <Widget>[
    const HomePage(),
    Container(),
    Container(),
    Container(),
  ];

  final navs = [
    NavItem(icon: IconResource.home, name: '', iconSelected: IconResource.home),
    NavItem(icon: IconResource.coffee, name: '', iconSelected: IconResource.coffee),
    NavItem(icon: IconResource.tag, name: '', iconSelected: IconResource.tag),
    NavItem(icon: IconResource.profile, name: '', iconSelected: IconResource.profile),
  ];

  @override
  void initState() {
    currentIndex = ValueNotifier(0);
    pageController = PageController();
    super.initState();
  }

  @override
  Widget buildPage(BuildContext context) {
    return CommonScaffold(
      body: PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: items,
      ),
      bottomNavigationBar: ValueListenableBuilder<int>(
        valueListenable: currentIndex,
        builder: (context, index, child) => BottomNavigationBar(
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
              .map<BottomNavigationBarItem>(
                  (e) => BottomNavigationBarItem(icon: SvgPicture.asset(index == e.key ? e.value.iconSelected : e.value.icon), label: ''))
              .toList(),
        ),
      ),
    );
  }

  void _onChangeIndexNavigation(int value) {
    currentIndex.value = value;
    pageController.jumpToPage(value);
  }
}
