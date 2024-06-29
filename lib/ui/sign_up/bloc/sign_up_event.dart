import 'package:core/core.dart';

abstract class SignUpEvent extends BaseEvent {}

class SignUpChangedFullnameEvent extends SignUpEvent {
  final String? fullname;
  SignUpChangedFullnameEvent(this.fullname);

  @override
  List<Object?> get props => [fullname];
}

class SignUpChangedEmailEvent extends SignUpEvent {
  final String? email;
  SignUpChangedEmailEvent(this.email);

  @override
  List<Object?> get props => [email];
}

class SignUpChangedPasswordEvent extends SignUpEvent {
  final String? password;
  SignUpChangedPasswordEvent(this.password);

  @override
  List<Object?> get props => [password];
}

class SignUpSubmittedEvent extends SignUpEvent {
  @override
  List<Object?> get props => [];
}
