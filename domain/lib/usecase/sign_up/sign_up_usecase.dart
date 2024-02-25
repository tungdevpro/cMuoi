import 'package:domain/common/result.dart';
import 'package:domain/entity/user_info_entity.dart';
import 'package:domain/usecase/base/base_usecase.dart';

abstract class SignUpUsecase extends Usecase<UserInfoEntity, SignUpParam> {
  @override
  Future<Result<UserInfoEntity>> invoke(SignUpParam params);
}

class SignUpParam {
  final String email;
  final String password;
  final String phone;

  SignUpParam(this.email, this.password, this.phone);
}
