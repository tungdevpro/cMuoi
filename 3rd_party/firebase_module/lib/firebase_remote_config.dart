import 'package:firebase_remote_config/firebase_remote_config.dart';

class CustomFirebaseRemoteConfig {
  late FirebaseRemoteConfig remoteConfig;
  static final CustomFirebaseRemoteConfig _inst = CustomFirebaseRemoteConfig._internal();

  CustomFirebaseRemoteConfig._internal() {
    remoteConfig = FirebaseRemoteConfig.instance;
  }

  factory CustomFirebaseRemoteConfig() {
    return _inst;
  }

  void fetch() async {
    final res = await remoteConfig.fetch();
  }
}
