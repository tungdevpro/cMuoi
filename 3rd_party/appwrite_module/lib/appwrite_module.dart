library appwrite_module;

import 'package:appwrite/appwrite.dart';

class AppwriteModule {
  static AppwriteModule? _instance;

  AppwriteModule._();

  factory AppwriteModule.instance() => _instance ??= AppwriteModule._();

  late Client _client;

  Client get client => _client;

  void init(String id) {
    _client = Client().setEndpoint('https://cloud.appwrite.io/v1').setProject(id).setSelfSigned();
  }
}
