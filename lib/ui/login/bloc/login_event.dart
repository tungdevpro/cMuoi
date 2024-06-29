import 'package:core/core.dart';

sealed class LoginEvent extends BaseEvent {}

final class LoginEmailChanged extends LoginEvent {
  final String email;
  LoginEmailChanged(this.email);

  @override
  List<Object?> get props => [email];
}

final class LoginPasswordChanged extends LoginEvent {
  final String password;
  LoginPasswordChanged(this.password);

  @override
  List<Object?> get props => [password];
}

final class LoginSubmittedEvent extends LoginEvent {
  final String email;
  final String password;

  LoginSubmittedEvent({required this.email, required this.password});

  @override
  List<Object?> get props => [email, password];
}

final class LoginTogglePasswordEvent extends LoginEvent {
  @override
  List<Object?> get props => [];
}
