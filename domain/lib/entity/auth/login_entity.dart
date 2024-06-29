import 'package:domain/entity/user/user_info_entity.dart';

class LoginEntity extends UserInfoEntity{
  final String token;
  final String refreshToken;

  LoginEntity({
    required super.id,
    required super.username,
    required super.email,
    required super.firstName,
    required super.lastName,
    required super.gender,
    required super.image,
    required this.token,
    required this.refreshToken,
  });
}
