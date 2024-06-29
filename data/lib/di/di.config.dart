// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:domain/domain.dart' as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../datasource/local/db/app_database.dart' as _i11;
import '../datasource/local/db/app_shared_preferences.dart' as _i6;
import '../datasource/remote/service/auth_service.dart' as _i3;
import '../network/interceptors/access_token_interceptor.dart' as _i7;
import '../network/interceptors/refresh_token_interceptor.dart' as _i5;
import '../repository_impl/authentication_repository_impl.dart' as _i10;
import '../repository_impl/config_repository_impl.dart' as _i9;

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
    gh.lazySingleton<_i3.AuthService>(() => _i3.AuthService(gh<_i4.Dio>()));
    gh.lazySingleton<_i5.RefreshTokenInterceptor>(
        () => _i5.RefreshTokenInterceptor(
              gh<_i6.AppSharedPreferences>(),
              gh<_i4.Dio>(),
            ));
    gh.lazySingleton<_i7.AccessTokenInterceptor>(
        () => _i7.AccessTokenInterceptor(gh<_i6.AppSharedPreferences>()));
    gh.factory<_i8.ConfigRepository>(
        () => _i9.ConfigRepositoryImpl(gh<_i6.AppSharedPreferences>()));
    gh.lazySingleton<_i8.AuthenticationRepository>(
        () => _i10.AuthenticationRepositoryImpl(
              gh<_i3.AuthService>(),
              gh<_i11.AppDatabase>(),
              gh<_i6.AppSharedPreferences>(),
            ));
    return this;
  }
}
