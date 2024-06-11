import 'package:data/datasource/remote/dto/login/login_email_dto.dart';
import 'package:data/datasource/remote/dto/login/login_phone_dto.dart';
import 'package:data/datasource/remote/service/login_service.dart';
import 'package:domain/domain.dart';
import 'package:data/repository_impl/base/base_repository.dart';
import 'package:injectable/injectable.dart';

import '../datasource/remote/api_remote.dart';
import '../mapper/login_mapper.dart';

@LazySingleton(as: LoginRepository)
class LoginRepositoryImpl extends BaseRepository implements LoginRepository {
  // final ApiRemote _remote;
  final LoginService _service;

  LoginRepositoryImpl(this._service);

  @override
  Future<Result<UserInfoEntity>> doLogin(LoginParam param) {
    final response = _service.doLogin(LoginMapper.toLoginDto(param));
    throw UnimplementedError();
  }
}
