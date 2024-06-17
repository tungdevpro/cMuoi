import 'package:domain/domain.dart';
import 'package:equatable/equatable.dart';
import 'package:express_cart/model/user_info_model.dart';

class AuthState extends Equatable {
  const AuthState._({
    this.status = AuthenticationStatus.unknown,
    this.user,
  });

  const AuthState.unknown() : this._();

  const AuthState.authenticated(UserEntity user) : this._(status: AuthenticationStatus.authenticated, user: user);

  const AuthState.unauthenticated() : this._(status: AuthenticationStatus.unauthenticated);

  final AuthenticationStatus status;
  final UserEntity? user;

  @override
  List<Object?> get props => [user, status];
}
