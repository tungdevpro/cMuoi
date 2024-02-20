import 'package:data/data.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:gen_artify/di/di.dart';
import 'package:gen_artify/gen_arrtify.dart';

void main() async {
  await _prepare();
  runApp(const GenArtify());
}

Future<void> _prepare() async {
  WidgetsFlutterBinding.ensureInitialized();
  DataLayer.init();
  DomainLayer.init();
  configureDependencies();
}
