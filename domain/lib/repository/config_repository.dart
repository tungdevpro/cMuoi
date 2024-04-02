import 'package:domain/common/result.dart';

abstract class ConfigRepository {
  Future<Result<bool>> getOnboarding();
}
