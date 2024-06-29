import 'package:domain/domain.dart';
import 'package:equatable/equatable.dart';
import 'package:cmuoi/model/user_info_model.dart';

class AuthState extends Equatable {
  const AuthState._({
    this.status = AuthenticationStatus.unknown,
    this.user,
  });

  const AuthState.unknown() : this._();

  const AuthState.authenticated(UserInfoEntity user) : this._(status: AuthenticationStatus.authenticated, user: user);
  // const AuthState.authenticated() : this._(status: AuthenticationStatus.authenticated);

  const AuthState.unauthenticated() : this._(status: AuthenticationStatus.unauthenticated);

  final AuthenticationStatus status;
  final UserInfoEntity? user;

  @override
  List<Object?> get props => [user, status];
}
