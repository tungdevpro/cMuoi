// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../repository/config_repository.dart' as _i5;
import '../usecase/config/check_onboarding_is_displayed_usecase.dart' as _i3;
import '../usecase/config/check_onboarding_is_displayed_usecase_impl.dart'
    as _i4;
import '../usecase/config/config_usecase.dart' as _i6;
import '../usecase/config/config_usecase_impl.dart' as _i7;
import '../usecase/sign_up/sign_up_firebase_usecase_impl.dart' as _i9;
import '../usecase/sign_up/sign_up_usecase.dart' as _i8;

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
    gh.factory<_i3.CheckOnboardingIsDisplayedUsecase>(() =>
        _i4.CheckOnboardingIsDisplayedUsecaseImpl(gh<_i5.ConfigRepository>()));
    gh.factory<_i6.ConfigUsecase>(() => _i7.ConfigUsecaseImpl());
    gh.factory<_i8.SignUpUsecase>(() => _i9.SignUpFirebaseUsecaseImpl());
    return this;
  }
}
