import 'package:flutter/material.dart';
import 'package:gen_artify/common/constants/image_resource.dart';
import 'package:gen_artify/common/routes/routes.dart';
import 'package:go_router/go_router.dart';

import '../../common/constants/constants.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.pushReplacement(RoutePath.main);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primary,
      body: Center(
        child: Image.asset(ImageResource.logo),
      ),
    );
  }
}
