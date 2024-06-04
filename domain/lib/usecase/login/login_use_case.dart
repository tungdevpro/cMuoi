
import 'package:domain/common/result.dart';
import 'package:domain/domain.dart';
import 'package:domain/usecase/base/base_usecase.dart';
import 'package:injectable/injectable.dart';

@injectable
class LoginUseCase extends UseCase<void, LoginParam> {
  final LoginRepository _repository;

  LoginUseCase(this._repository);

  @override
  Future<Result<void>> invoke(LoginParam params) async {
    throw UnimplementedError();
  }

}

class LoginParam {
  final String phone;
  final String password;

  LoginParam({required this.phone, required this.password});
}