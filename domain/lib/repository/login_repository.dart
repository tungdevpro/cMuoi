import '../domain.dart';

abstract class LoginRepository {
  Future<Result<LoginEntity>> doLogin(LoginParam param);
}
