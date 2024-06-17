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
  Future<Result<LoginEntity>> doLogin(LoginParam param) async {
    return apiHandler(
      _service.doLogin(LoginMapper.toLoginUsernameDto(param)),
      mapper: (data) {
        return LoginMapper.toEntity(data);
      },
    );
  }
}
