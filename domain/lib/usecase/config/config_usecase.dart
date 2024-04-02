import 'package:domain/common/result.dart';
import 'package:domain/entity/config_entity.dart';
import 'package:domain/usecase/base/base_usecase.dart';

abstract class ConfigUsecase extends Usecase<ConfigEntity, NoParam> {
  @override
  Future<Result<ConfigEntity>> invoke(NoParam params);
}
