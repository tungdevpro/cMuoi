import 'package:injectable/injectable.dart';

import '../../domain.dart';

@injectable
class LogoutUseCase extends UseCase<bool, NoParam?> {
  final AuthenticationRepository _repository;

  LogoutUseCase(this._repository);

  @override
  Future<Result<bool>> invoke(NoParam? param) async {
    return _repository.doLogout();
  }
}
