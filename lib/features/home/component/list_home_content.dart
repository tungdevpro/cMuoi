import 'package:flutter_svg/flutter_svg.dart';

import '../../../import.dart';

class ListHomeContent extends StatelessWidget {
  const ListHomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return RefreshIndicator(
      onRefresh: () async {},
      child: ListView(
        // controller: controller.scrollController,
        padding: EdgeInsets.zero,
        children: [
          SizedBox(
            // color: Colors.blue,
            height: 330,
            width: width,
            child: Stack(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 210,
                      decoration: const BoxDecoration(color: AppColor.primaryDefault),
                    ),
                    SafeArea(
                        child: Align(
                      alignment: Alignment.topRight,
                      child: IconButton(onPressed: () {}, icon: SvgPicture.asset(IconResource.notificationUbing)),
                    ))
                  ],
                ),
                Align(
                  alignment: const Alignment(0, 1),
                  child: Container(
                    width: width,
                    margin: const EdgeInsets.symmetric(horizontal: AppSize.padding),
                    padding: const EdgeInsets.all(AppSize.padding),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          height: 150,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          // const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSize.padding),
            child: Column(
              children: List<Widget>.generate(20, (e) => ListTile(title: Text("data"))),
            ),
          ),
          const SizedBox(height: kBottomNavigationBarHeight),
        ],
      ),
    );
  }
}
