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
        baseUrl: 'https://google.com',
        webUrl: 'https://google.com',
        brandName: 'cMuoi',
      );

  @override
  AppNetworkConfig get prodConfig => AppNetworkConfig(
        baseUrl: 'https://facebook.com',
        webUrl: 'https://facebook.com',
        brandName: 'cMuoi',
      );
}
