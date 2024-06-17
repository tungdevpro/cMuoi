import 'package:domain/domain.dart';
import 'package:domain/usecase/base/base_usecase.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetAuthStatusStreamUseCase extends SyncUseCase<Stream<AuthenticationStatus>, NoParam?> {
  final AuthenticationRepository _repository;

  GetAuthStatusStreamUseCase(this._repository);

  @override
  Stream<AuthenticationStatus> invoke(NoParam? params) {
    return _repository.getAuthStream();
  }
}
