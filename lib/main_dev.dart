import 'package:domain/environment/env.dart';

import 'app_initializer.dart';

void main() async {
  AppInitializer.instance.run(Env.dev);
}