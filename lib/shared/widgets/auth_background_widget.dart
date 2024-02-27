import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gen_artify/common/common.dart';

import '../social_media_enum.dart';

class AuthBackgroundWidget extends StatefulWidget {
  const AuthBackgroundWidget({super.key});

  static List<SocialMedia> socials = [SocialMedia.facebook, SocialMedia.google, SocialMedia.twitter];

  @override
  State<AuthBackgroundWidget> createState() => _AuthBackgroundWidgetState();
}

class _AuthBackgroundWidgetState extends State<AuthBackgroundWidget> with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.only(top: 50),
        child: ListView(
          padding: const EdgeInsets.all(AppSize.padding),
          physics: const ClampingScrollPhysics(),
          children: [
            SvgPicture.asset(IconResource.logoText),
            Gap.sm(),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(child: Divider(color: AppColor.line)),
                SizedBox(width: AppSize.paddingSM),
                Text('Via social media', style: TextStyle(color: AppColor.text)),
                SizedBox(width: AppSize.paddingSM),
                Expanded(child: Divider(color: AppColor.line)),
              ],
            ),
            Gap.xl(),
            Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: AuthBackgroundWidget.socials
                  .map<Widget>((e) => Container(
                      width: 45,
                      height: 45,
                      padding: const EdgeInsets.all(5),
                      margin: const EdgeInsets.only(left: AppSize.paddingSM),
                      decoration: BoxDecoration(border: Border.all(color: AppColor.line), shape: BoxShape.circle),
                      child: Image.asset(e.image)))
                  .toList(),
            ),
            Gap.xl(),
            Container(
              height: 56,
              decoration: BoxDecoration(
                color: AppColor.background,
                // color: Colors.grey,
                borderRadius: BorderRadius.circular(40.0),
              ),
              padding: const EdgeInsets.all(5),
              child: TabBar(
                controller: tabController,
                indicator: BoxDecoration(borderRadius: BorderRadius.circular(40), color: Colors.white, border: Border.all(color: Colors.transparent)),
                labelColor: AppColor.title,
                unselectedLabelColor: AppColor.text,
                indicatorSize: TabBarIndicatorSize.tab,
                labelStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                indicatorColor: Colors.red,
                indicatorWeight: 0,
                dividerColor: Colors.transparent,
                tabs: const [
                  Tab(text: 'Enter account'),
                  Tab(text: 'Sign up'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
