import 'dart:async';

import 'package:core/core.dart';
import 'package:domain/domain.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cmuoi/common/auth/bloc/auth_event.dart';
import 'package:cmuoi/common/auth/bloc/auth_state.dart';
import 'package:cmuoi/di/di.dart';
import 'package:injectable/injectable.dart';

@singleton
class AuthBloc extends Bloc<AuthEvent, AuthState> implements LibraryInitializer<void> {
  AuthBloc(this._getAuthStatusStreamUseCase, this._checkLoggedInUseCase, this._getCurrentAuthUserUseCase) : super(const AuthState.unknown()) {
    on<AuthStatusChanged>(_onAuthStatusChanged);
    on<AuthLogoutRequested>(_onAuthLogoutRequested);
    on<AuthCheckLoggedIn>(_onAuthCheckLoggedIn);
    _streamSubscription = _getAuthStatusStreamUseCase.invoke(null).listen((data) {
      add(AuthStatusChanged(data));
    });
  }

  final GetAuthStatusStreamUseCase _getAuthStatusStreamUseCase;
  final CheckLoggedInUseCase _checkLoggedInUseCase;
  final GetCurrentAuthUserUseCase _getCurrentAuthUserUseCase;

  late StreamSubscription<AuthenticationStatus> _streamSubscription;

  static AuthBloc get to => di<AuthBloc>()..init();

  @override
  Future<void> init() async {
    add(AuthCheckLoggedIn());
  }

  @override
  Future<void> close() {
    _streamSubscription.cancel();
    return super.close();
  }

  Future<void> _onAuthStatusChanged(AuthStatusChanged event, Emitter<AuthState> emit) async {
    switch (event.status) {
      case AuthenticationStatus.unknown:
        return;
      case AuthenticationStatus.authenticated:
        final response = await _getCurrentAuthUserUseCase.invoke(null);
        response.when(success: (data) {
          emit(AuthState.authenticated(data!));
        });
        return;
      case AuthenticationStatus.unauthenticated:
        return emit(const AuthState.unauthenticated());
    }
  }

  Future<void> _onAuthLogoutRequested(AuthLogoutRequested event, Emitter<AuthState> emit) async {}

  Future<void> _onAuthCheckLoggedIn(AuthCheckLoggedIn event, Emitter<AuthState> emit) async {
    final result = await _checkLoggedInUseCase.invoke(null);
    result.when(success: (data) {
    });
  }
}
