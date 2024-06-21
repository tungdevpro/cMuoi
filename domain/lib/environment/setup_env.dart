import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';

import 'app_network_config.dart';
import 'env.dart';
import 'network.dart';

Future<void> setupEnvironment(GetIt sl) async {
  sl.registerLazySingleton<NetworkEnv>(() => AppNetworkEnv());
  sl.registerLazySingleton<Network>(() => Network<AppNetworkConfig>());
  sl<Network>().init();

  Env env = sl<Network>().env;
  String baseUrl = (sl<Network>().network as AppNetworkConfig).baseUrl;
  debugPrint('env= $env baseUrl= $baseUrl');
}
