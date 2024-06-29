// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:domain/domain.dart' as _i5;
import 'package:domain/usecase/config/check_onboarding_is_displayed_usecase.dart'
    as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../common/app/bloc/app_bloc.dart' as _i3;
import '../common/auth/bloc/auth_bloc.dart' as _i6;
import '../features/coffee/bloc/coffee_bloc.dart' as _i7;
import '../features/home/bloc/home_bloc.dart' as _i8;
import '../features/login/bloc/login_bloc.dart' as _i9;
import '../features/main/bloc/main_bloc.dart' as _i11;
import '../features/profile/bloc/profile_bloc.dart' as _i12;
import '../features/sign_up/bloc/sign_up_bloc.dart' as _i13;
import '../import.dart' as _i10;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt initialPresentationLayer({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i3.AppBloc>(_i3.AppBloc(
      gh<_i4.CheckOnboardingIsDisplayedUseCase>(),
      gh<_i5.HideOnboardingIsDisplayedUsecase>(),
    ));
    gh.singleton<_i6.AuthBloc>(_i6.AuthBloc(
      gh<_i5.GetAuthStatusStreamUseCase>(),
      gh<_i5.CheckLoggedInUseCase>(),
      gh<_i5.GetCurrentAuthUserUseCase>(),
    ));
    gh.factory<_i7.CoffeeBloc>(() => _i7.CoffeeBloc());
    gh.factory<_i8.HomeBloc>(() => _i8.HomeBloc());
    gh.factory<_i9.LoginBloc>(() => _i9.LoginBloc(gh<_i10.LoginUseCase>()));
    gh.factory<_i11.MainBloc>(() => _i11.MainBloc());
    gh.factory<_i12.ProfileBloc>(() => _i12.ProfileBloc());
    gh.factory<_i13.SignUpBloc>(() => _i13.SignUpBloc(gh<_i5.SignUpUseCase>()));
    return this;
  }
}
