import 'package:get_it/get_it.dart';

import 'app_network_config.dart';

enum Env {
  dev,
  prod;

  dynamic network() {
    switch (this) {
      case Env.prod:
        return GetIt.instance<NetworkEnv>().prodConfig;
      default:
        return GetIt.instance<NetworkEnv>().devConfig;
    }
  }

  static Env fromValue(String? env) {
    switch (env) {
      case 'prod':
        return Env.prod;
      default:
        return Env.dev;
    }
  }
}

abstract class NetworkEnv<T extends NetworkConfig> {
  T get devConfig;

  T get prodConfig;
}
