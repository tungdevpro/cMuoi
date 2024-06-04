import 'package:data/datasource/remote/service/login_service.dart';
import 'package:data/di/di.dart';
import 'package:injectable/injectable.dart';

import '../../network/dio_client.dart';

@lazySingleton
class ApiRemote {
  late final DioClient _client = di<DioClient>()..init();

  LoginService get loginService => LoginService(_client.build());
}
