// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../domain.dart' as _i8;
import '../repository/config_repository.dart' as _i12;
import '../usecase/config/check_onboarding_is_displayed_usecase.dart' as _i10;
import '../usecase/config/check_onboarding_is_displayed_usecase_impl.dart'
    as _i11;
import '../usecase/config/config_usecase.dart' as _i3;
import '../usecase/config/config_usecase_impl.dart' as _i4;
import '../usecase/config/hide_onboarding_is_displayed_usecase.dart' as _i9;
import '../usecase/login/login_use_case.dart' as _i7;
import '../usecase/sign_up/sign_up_firebase_usecase_impl.dart' as _i6;
import '../usecase/sign_up/sign_up_usecase.dart' as _i5;

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
    gh.factory<_i5.SignUpUsecase>(() => _i6.SignUpFirebaseUsecaseImpl());
    gh.factory<_i7.LoginUseCase>(
        () => _i7.LoginUseCase(gh<_i8.LoginRepository>()));
    gh.factory<_i9.HideOnboardingIsDisplayedUsecase>(
        () => _i9.HideOnboardingIsDisplayedUsecase(gh<_i8.ConfigRepository>()));
    gh.factory<_i10.CheckOnboardingIsDisplayedUseCase>(() =>
        _i11.CheckOnboardingIsDisplayedUseCaseImpl(
            gh<_i12.ConfigRepository>()));
    return this;
  }
}
