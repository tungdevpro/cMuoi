import 'dart:async';

import 'package:core/core.dart';
import 'package:domain/domain.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:express_cart/common/auth/bloc/auth_event.dart';
import 'package:express_cart/common/auth/bloc/auth_state.dart';
import 'package:express_cart/di/di.dart';
import 'package:injectable/injectable.dart';

@singleton
class AuthBloc extends Bloc<AuthEvent, AuthState> implements LibraryInitializer<void> {
  AuthBloc(this._getAuthStatusStreamUseCase) : super(const AuthState.unknown()) {
    on<AuthStatusChanged>(_onAuthStatusChanged);
    on<AuthLogoutRequested>(_onAuthLogoutRequested);
    on<AuthCheckLoggedIn>(_onAuthCheckLoggedIn);
    _streamSubscription = _getAuthStatusStreamUseCase.invoke(null).listen((data) {});
  }

  final GetAuthStatusStreamUseCase _getAuthStatusStreamUseCase;

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

  Future<void> _onAuthStatusChanged(AuthStatusChanged event, Emitter<AuthState> emit) async {}

  Future<void> _onAuthLogoutRequested(AuthLogoutRequested event, Emitter<AuthState> emit) async {}

  Future<void> _onAuthCheckLoggedIn(AuthCheckLoggedIn event, Emitter<AuthState> emit) async {
    print('object.....');
  }
}
