// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../domain.dart' as _i6;
import '../usecase/auth/check_logged_in_use_case.dart' as _i5;
import '../usecase/auth/get_auth_status_stream_use_case.dart' as _i10;
import '../usecase/auth/get_current_auth_user_use_case.dart' as _i11;
import '../usecase/auth/login_use_case.dart' as _i9;
import '../usecase/auth/logout_use_case.dart' as _i7;
import '../usecase/auth/sign_up_use_case.dart' as _i8;
import '../usecase/config/check_onboarding_is_displayed_usecase.dart' as _i13;
import '../usecase/config/check_onboarding_is_displayed_usecase_impl.dart'
    as _i14;
import '../usecase/config/config_usecase.dart' as _i3;
import '../usecase/config/config_usecase_impl.dart' as _i4;
import '../usecase/config/hide_onboarding_is_displayed_usecase.dart' as _i12;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt createDomainLayer({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.ConfigUsecase>(() => _i4.ConfigUsecaseImpl());
    gh.factory<_i5.CheckLoggedInUseCase>(
        () => _i5.CheckLoggedInUseCase(gh<_i6.AuthenticationRepository>()));
    gh.factory<_i7.LogoutUseCase>(
        () => _i7.LogoutUseCase(gh<_i6.AuthenticationRepository>()));
    gh.factory<_i8.SignUpUseCase>(
        () => _i8.SignUpUseCase(gh<_i6.AuthenticationRepository>()));
    gh.factory<_i9.LoginUseCase>(
        () => _i9.LoginUseCase(gh<_i6.AuthenticationRepository>()));
    gh.factory<_i10.GetAuthStatusStreamUseCase>(() =>
        _i10.GetAuthStatusStreamUseCase(gh<_i6.AuthenticationRepository>()));
    gh.factory<_i11.GetCurrentAuthUserUseCase>(() =>
        _i11.GetCurrentAuthUserUseCase(gh<_i6.AuthenticationRepository>()));
    gh.factory<_i12.HideOnboardingIsDisplayedUsecase>(() =>
        _i12.HideOnboardingIsDisplayedUsecase(gh<_i6.ConfigRepository>()));
    gh.factory<_i13.CheckOnboardingIsDisplayedUseCase>(() =>
        _i14.CheckOnboardingIsDisplayedUseCaseImpl(gh<_i6.ConfigRepository>()));
    return this;
  }
}
