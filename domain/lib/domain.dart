library domain;

import 'package:domain/di/di.dart';

abstract class DomainLayer {
  const DomainLayer._();

  static void init() {
    configureDependencies();
  }
}
