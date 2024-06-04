import 'package:domain/usecase/login/login_use_case.dart';

import '../domain.dart';

abstract class LoginRepository {
  Future<Result<UserInfoEntity>> doLogin(LoginParam param);
}