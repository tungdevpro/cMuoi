import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gen_artify/common/auth/auth_event.dart';
import 'package:gen_artify/common/auth/auth_state.dart';
import 'package:gen_artify/di/di.dart';
import 'package:injectable/injectable.dart';

@singleton
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitialState());

  static AuthBloc get to => di<AuthBloc>();
}
