import '../../domain.dart';

abstract class ConfigUsecase extends UseCase<ConfigEntity, NoParam> {
  @override
  Future<Result<ConfigEntity>> invoke(NoParam params);
}
