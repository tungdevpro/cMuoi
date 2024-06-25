import 'package:domain/common/result.dart';
import 'package:domain/repository/authentication_repository.dart';
import 'package:domain/usecase/base/base_usecase.dart';
import 'package:injectable/injectable.dart';

@injectable
class LogoutUseCase extends UseCase<bool, NoParam?> {
  final AuthenticationRepository _repository;

  LogoutUseCase(this._repository);

  @override
  Future<Result<bool>> invoke(NoParam? param) async {
    return _repository.doLogout();
  }
}
