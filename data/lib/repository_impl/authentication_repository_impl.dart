import 'dart:async';

import 'package:data/datasource/remote/service/login_service.dart';
import 'package:data/datasource/remote/service/sign_up_service.dart';
import 'package:data/repository_impl/base/base_repository.dart';
import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

import '../mapper/login_mapper.dart';

@LazySingleton(as: AuthenticationRepository)
class AuthenticationRepositoryImpl extends BaseRepository implements AuthenticationRepository {
  final LoginService _loginService;
  final SignUpService _signUpService;

  AuthenticationRepositoryImpl(this._loginService, this._signUpService);

  final _controller = StreamController<AuthenticationStatus>();

  @override
  Future<Result<LoginEntity>> doLogin(LoginParam param) async {
    final response = await apiHandler(
      _loginService.doLogin(LoginMapper.toLoginUsernameDto(param)),
      mapper: (data) {
        return LoginMapper.toEntity(data);
      },
    );
    response.when(
      error: (type, error, code) {
        _controller.add(AuthenticationStatus.unauthenticated);
      },
      success: (data) {
        _controller.add(AuthenticationStatus.authenticated);
      },
    );
    return response;
  }

  @override
  Future<Result<void>> doSignUp() async {
    throw UnimplementedError();
  }

  @override
  void close() {
    _controller.close();
  }

  @override
  Stream<AuthenticationStatus> getAuthStream() {
    return _controller.stream;
  }

  @override
  Future<void> logOut() async {
    _controller.add(AuthenticationStatus.unauthenticated);
  }
}
