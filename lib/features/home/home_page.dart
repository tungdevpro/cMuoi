import 'package:express_cart/common/common.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      // appBar: HeaderFix(text: 'Home', leadingIcon: LeadingIcon.none),
      body: Column(
        children: [],
      ),
    );
  }
}
