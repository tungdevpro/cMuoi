import 'package:domain/environment/app_network_config.dart';

import 'env.dart';

class Network<T extends NetworkConfig> {
  Env _env = Env.dev;

  Env get env => _env;

  T get network => env.network();

  void init() {
    const String environment = String.fromEnvironment('environment');
    _env = Env.fromValue(environment);
  }
}
