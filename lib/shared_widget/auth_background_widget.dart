import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gen_artify/common/common.dart';

class AuthBackgroundWidget extends StatelessWidget {
  const AuthBackgroundWidget({super.key});

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
                Expanded(child: Divider(color: AppColor.text)),
                SizedBox(width: AppSize.paddingSM),
                Text('Via social media', style: TextStyle(color: AppColor.text)),
                SizedBox(width: AppSize.paddingSM),
                Expanded(child: Divider(color: AppColor.text)),
              ],
            ),
            Gap.xxl(),
          ],
        ),
      ),
    );
  }
}
