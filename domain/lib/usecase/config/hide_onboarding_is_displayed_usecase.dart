import 'package:domain/domain.dart';
import 'package:domain/usecase/base/base_usecase.dart';
import 'package:injectable/injectable.dart';

@injectable
class HideOnboardingIsDisplayedUsecase extends UseCase<void, NoParam?> {
  final ConfigRepository _repository;

  HideOnboardingIsDisplayedUsecase(this._repository);

  @override
  Future<Result<void>> invoke(NoParam? params) async {
    await _repository.hideOnboarding();
    return Result();
  }
}
