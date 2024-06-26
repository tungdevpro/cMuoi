import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetAuthStatusStreamUseCase extends StreamUseCase<AuthenticationStatus, NoParam?> {
  final AuthenticationRepository _repository;

  GetAuthStatusStreamUseCase(this._repository);

  @override
  Stream<AuthenticationStatus> invoke(NoParam? params) {
    return _repository.getAuthStream();
  }
}
