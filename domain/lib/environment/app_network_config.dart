import 'package:domain/environment/env.dart';
import 'package:domain/environment/network.dart';

abstract class NetworkConfig {}

class AppNetworkConfig extends NetworkConfig {
  final String baseUrl;
  final String webUrl;
  final String brandName;

  AppNetworkConfig({
    required this.baseUrl,
    required this.webUrl,
    required this.brandName,
  });
}

class AppNetworkEnv extends NetworkEnv<AppNetworkConfig> {
  @override
  AppNetworkConfig get devConfig => AppNetworkConfig(
        // baseUrl: 'http://192.168.0.3:3000',
        baseUrl: 'http://192.168.110.127:3000',
        webUrl: 'https://web.cmuoi.io.vn',
        brandName: 'DEV: cMuoi',
      );

  @override
  AppNetworkConfig get prodConfig => AppNetworkConfig(
        baseUrl: 'https://cmuoi.io.vn',
        webUrl: 'https://web.cmuoi.io.vn',
        brandName: 'cMuoi',
      );
}
