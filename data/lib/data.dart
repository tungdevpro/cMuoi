library data;

import 'package:data/di/di.dart';

abstract class DataLayer {
  const DataLayer._();

  /// Handle initial data layer
  static void init() {
    configureDependencies();
  }
}
