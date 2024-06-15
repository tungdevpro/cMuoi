// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:domain/domain.dart' as _i6;
import 'package:domain/usecase/config/check_onboarding_is_displayed_usecase.dart'
    as _i5;
import 'package:domain/usecase/sign_up/sign_up_usecase.dart' as _i12;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../common/app/bloc/app_bloc.dart' as _i4;
import '../common/auth/bloc/auth_bloc.dart' as _i7;
import '../features/account/bloc/account_bloc.dart' as _i3;
import '../features/home/bloc/home_bloc.dart' as _i8;
import '../features/login/bloc/login_bloc.dart' as _i9;
import '../features/main/bloc/main_bloc.dart' as _i10;
import '../features/sign_up/bloc/sign_up_bloc.dart' as _i11;

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
    gh.factory<_i3.AccountBloc>(() => _i3.AccountBloc());
    gh.singleton<_i4.AppBloc>(_i4.AppBloc(
      gh<_i5.CheckOnboardingIsDisplayedUseCase>(),
      gh<_i6.HideOnboardingIsDisplayedUsecase>(),
    ));
    gh.singleton<_i7.AuthBloc>(_i7.AuthBloc());
    gh.factory<_i8.HomeBloc>(() => _i8.HomeBloc());
    gh.factory<_i9.LoginBloc>(() => _i9.LoginBloc(gh<_i6.LoginUseCase>()));
    gh.factory<_i10.MainBloc>(() => _i10.MainBloc());
    gh.factory<_i11.SignUpBloc>(
        () => _i11.SignUpBloc(gh<_i12.SignUpUsecase>()));
    return this;
  }
}
