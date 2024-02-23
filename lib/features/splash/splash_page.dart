import 'package:flutter/material.dart';

import '../../common/routes/routes.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Splash")),
      body: Center(
        child: TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed(RoutePath.gettingStarted);
            },
            child: Text("data")),
      ),
    );
  }
}
