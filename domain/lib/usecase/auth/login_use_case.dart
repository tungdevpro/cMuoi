import 'package:domain/domain.dart';
import 'package:domain/usecase/base/base_usecase.dart';
import 'package:injectable/injectable.dart';

@injectable
class LoginUseCase extends UseCase<LoginEntity, LoginParam> {
  final AuthenticationRepository _repository;

  LoginUseCase(this._repository);

  @override
  Future<Result<LoginEntity>> invoke(LoginParam params) async {
    final response = await _repository.doLogin(params);
    return response;
  }
}

class LoginParam {
  final String username;
  final String password;

  LoginParam({required this.username, required this.password});
}
