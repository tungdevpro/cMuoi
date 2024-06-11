// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i5;
import 'package:domain/domain.dart' as _i6;
import 'package:domain/repository/config_repository.dart' as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../datasource/local/db/app_shared_preferences.dart' as _i10;
import '../datasource/remote/api_remote.dart' as _i3;
import '../datasource/remote/service/login_service.dart' as _i4;
import '../repository_impl/config_repository_impl.dart' as _i9;
import '../repository_impl/login_repository_impl.dart' as _i7;

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
    gh.lazySingleton<_i3.ApiRemote>(() => _i3.ApiRemote());
    gh.lazySingleton<_i4.LoginService>(() => _i4.LoginService(gh<_i5.Dio>()));
    gh.lazySingleton<_i6.LoginRepository>(
        () => _i7.LoginRepositoryImpl(gh<_i4.LoginService>()));
    gh.factory<_i8.ConfigRepository>(
        () => _i9.ConfigRepositoryImpl(gh<_i10.AppSharedPreferences>()));
    return this;
  }
}
