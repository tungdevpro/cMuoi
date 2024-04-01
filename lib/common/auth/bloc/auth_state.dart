import 'package:equatable/equatable.dart';
import 'package:express_cart/model/user_info_model.dart';

abstract class AuthState extends Equatable {
  @override
  List<Object?> get props => [];
}

class AuthInitialState extends AuthState {
  @override
  List<Object?> get props => [];
}

class AuthUserChangedState extends AuthState {
  final UserInfoModel? user;

  AuthUserChangedState({this.user});

  @override
  List<Object?> get props => [user];
}

class AuthNotLoggedInState extends AuthState {
  @override
  List<Object?> get props => [];
}
