import 'package:core/core.dart';

import '../../../helper/validates/email_validate_model.dart';
import '../../../helper/validates/password_validate_model.dart';

enum LoginStatus { none, success, failure, validating }

class LoginState extends BaseState {
  final LoginStatus status;
  final EmailValidateModel email;
  final PasswordValidateModel password;
  final bool hidePassword;

  LoginState(
      {this.status = LoginStatus.none,
      this.email = const EmailValidateModel.pure(),
      this.password = const PasswordValidateModel.pure(),
      this.hidePassword = true});

  LoginState copyWith({LoginStatus? status, EmailValidateModel? email, PasswordValidateModel? password, bool? hidePassword}) {
    return LoginState(
      status: status ?? this.status,
      email: email ?? this.email,
      password: password ?? this.password,
      hidePassword: hidePassword ?? this.hidePassword,
    );
  }

  @override
  List<Object?> get props => [status, email, password, hidePassword];
}
