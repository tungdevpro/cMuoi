import 'dart:async';

import 'package:core/core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gen_artify/common/auth/auth_event.dart';
import 'package:gen_artify/common/auth/auth_state.dart';
import 'package:gen_artify/di/di.dart';
import 'package:injectable/injectable.dart';

@singleton
class AuthBloc extends Bloc<AuthEvent, AuthState> implements LibraryInitializer<void> {
  AuthBloc() : super(AuthInitialState()) {
    on<NotAuthorizeEvent>(_onNotAuthorizeEvent);
    on<SuccessAuthorizeEvent>(_onSuccessAuthorizeEvent);
  }

  static AuthBloc get to => di<AuthBloc>()..init();

  void _onNotAuthorizeEvent(NotAuthorizeEvent event, Emitter<AuthState> emit) {
    emit(AuthNotLoggedInState());
  }

  void _onSuccessAuthorizeEvent(SuccessAuthorizeEvent event, Emitter<AuthState> emit) {}

  @override
  Future<void> init() async {
    await Future.delayed(const Duration(seconds: 2));
    add(NotAuthorizeEvent());
  }
}
