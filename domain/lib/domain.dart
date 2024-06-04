library domain;

export 'common/common.dart';
export 'repository/repository.dart';
export 'entity/entity.dart';
export 'usecase/usecase.dart';

import 'package:domain/di/di.dart';

abstract class DomainLayer {
  const DomainLayer._();

  static Future<void> init() async => configureDependencies();
}
