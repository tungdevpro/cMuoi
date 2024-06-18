import 'package:domain/domain.dart';
import 'package:domain/usecase/base/base_usecase.dart';
import 'package:injectable/injectable.dart';

@injectable
class CheckLoggedInUseCase extends UseCase<bool, NoParam?> {
  final AuthenticationRepository _repository;

  CheckLoggedInUseCase(this._repository);

  @override
  Future<Result<bool>> invoke(NoParam? param) async {
    final response = await _repository.isLoggedIn();
    return ValueSuccess(true);
  }
}
