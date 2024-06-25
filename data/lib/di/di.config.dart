// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i5;
import 'package:domain/domain.dart' as _i10;
import 'package:domain/repository/config_repository.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../datasource/local/db/app_database.dart' as _i12;
import '../datasource/local/db/app_shared_preferences.dart' as _i9;
import '../datasource/remote/api_remote.dart' as _i3;
import '../datasource/remote/service/login_service.dart' as _i4;
import '../datasource/remote/service/sign_up_service.dart' as _i6;
import '../repository_impl/authentication_repository_impl.dart' as _i11;
import '../repository_impl/config_repository_impl.dart' as _i8;

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
    gh.lazySingleton<_i6.SignUpService>(() => _i6.SignUpService(gh<_i5.Dio>()));
    gh.factory<_i7.ConfigRepository>(
        () => _i8.ConfigRepositoryImpl(gh<_i9.AppSharedPreferences>()));
    gh.lazySingleton<_i10.AuthenticationRepository>(
        () => _i11.AuthenticationRepositoryImpl(
              gh<_i4.LoginService>(),
              gh<_i6.SignUpService>(),
              gh<_i12.AppDatabase>(),
              gh<_i9.AppSharedPreferences>(),
            ));
    return this;
  }
}
