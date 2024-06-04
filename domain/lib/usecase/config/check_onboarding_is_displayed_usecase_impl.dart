import 'package:domain/common/result.dart';
import 'package:domain/repository/config_repository.dart';

import 'package:domain/usecase/base/base_usecase.dart';
import 'package:injectable/injectable.dart';

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
