import 'package:domain/common/result.dart';
import 'package:domain/repository/config_repository.dart';

import 'package:domain/usecase/base/base_usecase.dart';
import 'package:injectable/injectable.dart';

import 'check_onboarding_is_displayed_usecase.dart';

@Injectable(as: CheckOnboardingIsDisplayedUsecase)
class CheckOnboardingIsDisplayedUsecaseImpl extends CheckOnboardingIsDisplayedUsecase {
  final ConfigRepository _repository;
  CheckOnboardingIsDisplayedUsecaseImpl(this._repository);

  @override
  Future<Result<bool>> invoke(NoParam? params) async {
    return _repository.getOnboarding();
  }
}
