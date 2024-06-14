import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter/foundation.dart';

import '../environment/app_network_config.dart';
import '../environment/env.dart';
import '../environment/network.dart';
import 'di.config.dart';

final di = GetIt.instance..allowReassignment = true;

@InjectableInit(
  initializerName: 'createDomainLayer',
  preferRelativeImports: true,
  asExtension: true,
)
Future<void> configureDependencies() async {
  await _setupNetwork(di);
  di.createDomainLayer();
}

Future<void> _setupNetwork(GetIt sl) async {
  sl.registerLazySingleton<NetworkEnv>(() => AppNetworkEnv());
  sl.registerLazySingleton<Network>(() => Network<AppNetworkConfig>());
  sl<Network>().init();

  Env env = sl<Network>().env;
  String baseUrl = (sl<Network>().network as AppNetworkConfig).baseUrl;
  debugPrint('env= $env baseUrl= $baseUrl');
}
