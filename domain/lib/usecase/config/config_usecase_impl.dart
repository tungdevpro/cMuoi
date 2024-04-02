import 'package:domain/common/result.dart';
import 'package:domain/entity/config_entity.dart';
import 'package:domain/usecase/base/base_usecase.dart';
import 'package:domain/usecase/config/config_usecase.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ConfigUsecase)
class ConfigUsecaseImpl extends ConfigUsecase {
  @override
  Future<Result<ConfigEntity>> invoke(NoParam params) async {
    throw UnimplementedError();
  }
}
