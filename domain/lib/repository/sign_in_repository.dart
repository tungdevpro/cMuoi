import 'package:domain/common/result.dart';

abstract class SignUpRepository {
  Future<Result<void>> doSignUp();
}
