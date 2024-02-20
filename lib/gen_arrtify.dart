import 'package:core/core.dart';
import 'package:flutter/material.dart';

class GenArtify extends StatefulWidget {
  const GenArtify({super.key});

  @override
  State<GenArtify> createState() => _GenArtifyState();
}

class _GenArtifyState extends State<GenArtify> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: AppNavigator().navigatorKey,
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: Scaffold(),
    );
  }
}
