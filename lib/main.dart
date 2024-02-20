import 'package:data/data.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:gen_artify/di/di.dart';

void main() {
  DataLayer.init();
  DomainLayer.init();
  configureDependencies();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(),
    );
  }
}
