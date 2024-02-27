// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:domain/usecase/sign_up/sign_up_usecase.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../common/app/app_bloc.dart' as _i3;
import '../common/auth/auth_bloc.dart' as _i4;
import '../features/login/bloc/login_bloc.dart' as _i5;
import '../features/sign_up/bloc/sign_up_bloc.dart' as _i6;

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
    gh.singleton<_i3.AppBloc>(_i3.AppBloc());
    gh.singleton<_i4.AuthBloc>(_i4.AuthBloc());
    gh.factory<_i5.LoginBloc>(() => _i5.LoginBloc());
    gh.factory<_i6.SignUpBloc>(() => _i6.SignUpBloc(gh<_i7.SignUpUsecase>()));
    return this;
  }
}
