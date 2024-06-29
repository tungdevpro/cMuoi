import 'package:data/datasource/local/db/app_database.dart';
import 'package:data/datasource/local/db/app_shared_preferences.dart';
import 'package:data/network/interceptors/access_token_interceptor.dart';
import 'package:data/network/interceptors/refresh_token_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:domain/domain.dart';
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
  await _registerDio(di);
  di.initializeDataLayer();
}

// Register DB (shared_preferences, sqlite, v.v.v...)
Future<void> _registerDatabase(GetIt locator) async {
  final resp = await Future.wait([
    sp.SharedPreferences.getInstance(),
    $FloorAppDatabase.databaseBuilder(DbConstant.databaseName).build(),
  ]);
  di.registerSingleton<AppSharedPreferences>(AppSharedPreferences(prefs: resp[0] as sp.SharedPreferences));
  di.registerLazySingleton<AppDatabase>(() => resp[1] as AppDatabase);
}

Future<void> _registerDio(GetIt locator) async {
  final client = DioClient();
  client.buildInterceptor([
    AccessTokenInterceptor(di.get<AppSharedPreferences>()),
    RefreshTokenInterceptor(di.get<AppSharedPreferences>(), client.build()),
  ]);
  di.registerSingleton<Dio>(client.build());
}
