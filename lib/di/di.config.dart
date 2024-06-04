// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:domain/usecase/config/check_onboarding_is_displayed_usecase.dart'
    as _i4;
import 'package:domain/usecase/sign_up/sign_up_usecase.dart' as _i9;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../common/app/bloc/app_bloc.dart' as _i3;
import '../common/auth/bloc/auth_bloc.dart' as _i5;
import '../features/login/bloc/login_bloc.dart' as _i6;
import '../features/main/bloc/main_bloc.dart' as _i7;
import '../features/sign_up/bloc/sign_up_bloc.dart' as _i8;

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
    gh.singleton<_i3.AppBloc>(
        _i3.AppBloc(gh<_i4.CheckOnboardingIsDisplayedUsecase>()));
    gh.singleton<_i5.AuthBloc>(_i5.AuthBloc());
    gh.factory<_i6.LoginBloc>(() => _i6.LoginBloc());
    gh.factory<_i7.MainBloc>(() => _i7.MainBloc());
    gh.factory<_i8.SignUpBloc>(() => _i8.SignUpBloc(gh<_i9.SignUpUsecase>()));
    return this;
  }
}
