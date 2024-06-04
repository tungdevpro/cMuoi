import 'package:data/datasource/remote/dto/login/login_phone_dto.dart';
import 'package:domain/usecase/login/login_use_case.dart';

class LoginMapper {
  static LoginPhoneDto toLoginDto(LoginParam param) {
    return LoginPhoneDto(
      phone: param.phone,
      password: param.password
    );
  }
}