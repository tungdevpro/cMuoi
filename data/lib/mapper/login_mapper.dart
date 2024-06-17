import 'package:data/datasource/remote/dto/login/login_response.dart';
import 'package:data/datasource/remote/dto/login/login_username_dto.dart';
import 'package:domain/domain.dart';

abstract class LoginMapper {
  const LoginMapper._();

  static LoginUsernameDto toLoginUsernameDto(LoginParam param) {
    return LoginUsernameDto(username: param.username, password: param.password);
  }

  static LoginEntity toEntity(LoginResponse? data) {
    return LoginEntity(
      id: data?.id ?? idEmpty,
      username: data?.username ?? stringEmpty,
      email: data?.email ?? stringEmpty,
      firstName: data?.firstName ?? stringEmpty,
      lastName: data?.lastName ?? stringEmpty,
      gender: data?.gender == Gender.female.name ? Gender.female : (data?.gender == Gender.male.name ? Gender.male : Gender.other),
      image: data?.image ?? stringEmpty,
      token: data?.token ?? stringEmpty,
      refreshToken: data?.refreshToken ?? stringEmpty,
    );
  }
}
