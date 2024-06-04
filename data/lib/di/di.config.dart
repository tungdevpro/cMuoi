// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:domain/domain.dart' as _i5;
import 'package:domain/repository/config_repository.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../datasource/local/db/app_shared_preferences.dart' as _i9;
import '../datasource/remote/api_remote.dart' as _i4;
import '../network/dio_client.dart' as _i3;
import '../repository_impl/config_repository_impl.dart' as _i8;
import '../repository_impl/login_repository_impl.dart' as _i6;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt initializeDataLayer({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.DioClient>(() => _i3.DioClient());
    gh.lazySingleton<_i4.ApiRemote>(() => _i4.ApiRemote());
    gh.lazySingleton<_i5.LoginRepository>(
        () => _i6.LoginRepositoryImpl(gh<_i4.ApiRemote>()));
    gh.factory<_i7.ConfigRepository>(
        () => _i8.ConfigRepositoryImpl(gh<_i9.AppSharedPreferences>()));
    return this;
  }
}
