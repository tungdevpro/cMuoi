import '../domain.dart';

abstract class AuthenticationRepository {
  Future<Result<LoginEntity>> doLogin(LoginParam param);

  Future<Result<void>> doSignUp();

  Future<void> logOut();

  Stream<AuthenticationStatus> getAuthStream();

  void close();

  Future<void> saveUserToLocal();

  Future<bool> isLoggedIn();

  Future<Result<bool>> doLogout();
}
