

import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetCurrentAuthUserUseCase extends UseCase<UserInfoEntity, NoParam?> {
  final AuthenticationRepository _repository;

  GetCurrentAuthUserUseCase(this._repository);

  @override
  Future<Result<UserInfoEntity>> invoke(NoParam? param) {
    return _repository.getCurrentAuthUser();
  }
}