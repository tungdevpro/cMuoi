import 'package:data/datasource/remote/dto/login/login_email_dto.dart';
import 'package:data/datasource/remote/dto/login/login_phone_dto.dart';
import 'package:data/datasource/remote/service/login_service.dart';
import 'package:domain/domain.dart';
import 'package:data/repository_impl/base/base_repository.dart';
import 'package:injectable/injectable.dart';

import '../mapper/login_mapper.dart';

@LazySingleton(as: LoginRepository)
class LoginRepositoryImpl extends BaseRepository implements LoginRepository {
  final LoginService _service;

  LoginRepositoryImpl(this._service);

  @override
  Future<Result<UserInfoEntity>> doLogin(LoginParam param) async {
    final response = _service.doLogin(LoginMapper.toLoginDto(param));
    return ValueSuccess(UserInfoEntity(
      id: '0',
      name: '',
      phone: '',
    ));
  }
}
