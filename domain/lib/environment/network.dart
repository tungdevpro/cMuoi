import 'package:domain/environment/app_network_config.dart';

import 'env.dart';

class Network<T extends NetworkConfig> {
  Env _privateEnv = Env.dev;

  Env get getGetEnvironment => _privateEnv;

  T get network => _privateEnv.network();

  void init([Env env = Env.dev]) {
    // const String environment = String.fromEnvironment('environment');
    // _privateEnv = Env.fromValue(environment);
    _privateEnv = env;
  }
}
