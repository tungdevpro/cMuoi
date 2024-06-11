import 'package:data/datasource/local/db/app_shared_preferences.dart';
import 'package:data/repository_impl/base/base_repository.dart';
import 'package:domain/common/local_keys.dart';
import 'package:domain/common/result.dart';
import 'package:domain/repository/config_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ConfigRepository)
class ConfigRepositoryImpl extends BaseRepository implements ConfigRepository {
  final AppSharedPreferences _appSharedPreferences;
  ConfigRepositoryImpl(this._appSharedPreferences);

  @override
  Future<Result<bool>> getOnboarding() async {
    return storageHandler(Future.value(_appSharedPreferences.getBool(LocalKeys.onboarding) ?? false), mapper: (entity) => entity);
  }

  @override
  Future<void> hideOnboarding() async {
    _appSharedPreferences.setBool(LocalKeys.onboarding, true);
  }
}
