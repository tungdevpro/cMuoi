import 'package:domain/common/result.dart';
import 'package:domain/domain.dart';
import 'package:domain/usecase/base/base_usecase.dart';
import 'package:injectable/injectable.dart';

@injectable
class SignUpUseCase extends UseCase<bool, NoParam?> {
  final AuthenticationRepository _repository;

  SignUpUseCase(this._repository);

  @override
  Future<Result<bool>> invoke(NoParam? param) async {
    throw UnimplementedError();
  }
}
