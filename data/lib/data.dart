library data;

import 'package:data/di/locator.dart';

abstract class DataLayer {
  const DataLayer._();

  /// Handle initial data layer
  static void init() {
    configureDependencies();
  }
}
