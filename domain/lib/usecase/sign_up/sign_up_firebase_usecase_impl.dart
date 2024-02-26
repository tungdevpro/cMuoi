import 'package:domain/common/result.dart';
import 'package:domain/entity/user_info_entity.dart';
import 'package:domain/usecase/sign_up/sign_up_usecase.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: SignUpUsecase)
class SignUpFirebaseUsecaseImpl extends SignUpUsecase {
  @override
  Future<Result<UserInfoEntity>> invoke(SignUpParam params) async {
    throw UnimplementedError();
  }
}
