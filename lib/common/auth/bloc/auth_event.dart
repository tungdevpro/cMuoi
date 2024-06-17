import 'package:equatable/equatable.dart';

sealed class AuthEvent extends Equatable {}

final class AuthCheckLoggedIn extends AuthEvent {
  @override
  List<Object?> get props => [];
}

final class AuthStatusChanged extends AuthEvent {
  @override
  List<Object?> get props => [];
}

final class AuthLogoutRequested extends AuthEvent {
  @override
  List<Object?> get props => [];
}
