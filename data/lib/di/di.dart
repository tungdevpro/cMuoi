import 'package:data/datasource/local/db/app_shared_preferences.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart' as sp;
import '../network/dio_client.dart';

import 'di.config.dart';

final di = GetIt.instance..allowReassignment = true;

@InjectableInit(
  initializerName: 'initializeDataLayer',
  preferRelativeImports: true,
  asExtension: true,
)
Future<void> configureDependencies() async {
  await _registerDatabase(di);
  await _registerNetwork(di);
  di.initializeDataLayer();
}

// Register DB (shared_preferences, sqlite, v.v.v...)
Future<void> _registerDatabase(GetIt locator) async {
  final prefs = await sp.SharedPreferences.getInstance();
  di.registerSingleton<AppSharedPreferences>(AppSharedPreferences(prefs: prefs));
}

Future<void> _registerNetwork(GetIt locator) async {
  final client = DioClient();
  await client.init();
  final dio = client.build();
  di.registerSingleton<Dio>(dio);
}
