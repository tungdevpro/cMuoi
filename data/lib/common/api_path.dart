abstract class ApiPath {
  const ApiPath._();

  static const String generate = '/generate';

  /// Auth
  static const String signUp = '/auth/sign-up';
  static const String login = '/auth/login';
  static const String refreshToken = '/auth/refresh';
  static const String currentAuthUser = '/auth/me';

}
