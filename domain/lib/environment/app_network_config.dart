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
        baseUrl: 'http://192.168.0.3:3000',
        webUrl: 'https://google.com',
        brandName: 'DEV: cMuoi',
      );

  @override
  AppNetworkConfig get prodConfig => AppNetworkConfig(
        baseUrl: 'http://169.254.150.34:8000',
        webUrl: 'http://169.254.150.34:8000',
        brandName: 'cMuoi',
      );
}
