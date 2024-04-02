import 'package:data/repository_impl/base/base_repository.dart';
import 'package:domain/common/local_keys.dart';
import 'package:domain/common/result.dart';
import 'package:domain/repository/config_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@Injectable(as: ConfigRepository)
class ConfigRepositoryImpl extends BaseRepository implements ConfigRepository {
  @override
  Future<Result<bool>> getOnboarding() async {
    return storageHandler(Future.value(true), mapper: (entity) => entity);
    // return storageHandler(Future.value(_sharedPreferences.getBool(LocalKeys.ob)), mapper: (entity) => entity);
  }
}
