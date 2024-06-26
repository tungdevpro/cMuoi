import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';

import 'app_network_config.dart';
import 'env.dart';
import 'network.dart';

Future<void> setupEnvironment(GetIt sl, {required Env env}) async {
  sl.registerLazySingleton<NetworkEnv>(() => AppNetworkEnv());
  sl.registerLazySingleton<Network>(() => Network<AppNetworkConfig>());
  sl<Network>().init(env);

  Env getGetEnvironment = sl<Network>().getGetEnvironment;
  String baseUrl = (sl<Network>().network as AppNetworkConfig).baseUrl;
  debugPrint('env= $getGetEnvironment baseUrl= $baseUrl');
}
