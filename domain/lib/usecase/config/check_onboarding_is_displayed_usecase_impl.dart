import 'package:injectable/injectable.dart';

import '../../domain.dart';
import 'check_onboarding_is_displayed_usecase.dart';

@Injectable(as: CheckOnboardingIsDisplayedUseCase)
class CheckOnboardingIsDisplayedUseCaseImpl extends CheckOnboardingIsDisplayedUseCase {
  final ConfigRepository _repository;
  CheckOnboardingIsDisplayedUseCaseImpl(this._repository);

  @override
  Future<Result<bool>> invoke(NoParam? params) async {
    return _repository.getOnboarding();
  }
}
