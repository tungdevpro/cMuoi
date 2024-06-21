import 'package:domain/domain.dart';
import 'package:equatable/equatable.dart';

sealed class AuthEvent extends Equatable {}

final class AuthCheckLoggedIn extends AuthEvent {
  @override
  List<Object?> get props => [];
}

final class AuthStatusChanged extends AuthEvent {
  final AuthenticationStatus status;

  AuthStatusChanged(this.status);

  @override
  List<Object?> get props => [status];
}

final class AuthLogoutRequested extends AuthEvent {
  @override
  List<Object?> get props => [];
}
