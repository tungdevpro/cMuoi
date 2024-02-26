import 'package:flutter/material.dart';
import 'package:gen_artify/common/routes/routes.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("data"),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            context.go(RoutePath.signUp);
          },
          child: Text("data"),
        ),
      ),
    );
  }
}
