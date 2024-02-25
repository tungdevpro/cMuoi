import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../common/constants/constants.dart';
import '../home/home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late ValueNotifier<int> currentIndex;
  late PageController pageController;

  var items = <Widget>[
    const HomePage(),
    // const CameraPage(wantKeepAlive: true),
    Container(),
    // const ProfilePage(wantKeepAlive: true),
  ];

  final navs = [
    NavItem(icon: IconResource.navHome, name: '', iconSelected: IconResource.navHomeSelected),
    NavItem(icon: IconResource.navCamera, name: '', iconSelected: IconResource.navCameraSelected),
    NavItem(icon: IconResource.navMessage, name: '', iconSelected: IconResource.navMessageSelected),
    NavItem(icon: IconResource.navProfile, name: '', iconSelected: IconResource.navProfileSelected),
  ];

  @override
  void initState() {
    currentIndex = ValueNotifier(0);
    pageController = PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

class NavItem {
  final String name;
  final String icon;
  final String iconSelected;

  NavItem({required this.name, required this.icon, required this.iconSelected});
}
