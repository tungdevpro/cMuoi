import 'package:core/core.dart';

abstract class LoginEvent extends BaseEvent {}

class LoginEmailChanged extends LoginEvent {
  final String email;
  LoginEmailChanged(this.email);

  @override
  List<Object?> get props => [email];
}

class LoginPasswordChanged extends LoginEvent {
  final String password;
  LoginPasswordChanged(this.password);

  @override
  List<Object?> get props => [password];
}

class LoginSubmittedEvent extends LoginEvent {
  final String email;
  final String password;

  LoginSubmittedEvent({required this.email, required this.password});

  @override
  List<Object?> get props => [email, password];
}

class LoginTogglePasswordEvent extends LoginEvent {
  @override
  List<Object?> get props => [];
}
